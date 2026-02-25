	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_GameStage
	.def	Task_GameStage;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_GameStage
Task_GameStage:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	rbx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, BYTE PTR 296[rax]
	movzx	r10d, BYTE PTR [rsi]
	movzx	edx, WORD PTR [rbx]
	shr	al, 4
	and	eax, 3
	cmp	r10b, 2
	ja	.L2
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	jne	.L39
.L3:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r8d, 1
	add	DWORD PTR [rax], 1
.L4:
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	mov	WORD PTR [rax], dx
	test	dl, 1
	jne	.L1
	mov	rax, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	rcx, QWORD PTR .refptr.gCourseTime[rip]
	add	DWORD PTR [rax], r8d
	mov	eax, DWORD PTR [rcx]
	test	dl, 4
	je	.L18
	sub	eax, r8d
	mov	DWORD PTR [rcx], eax
	test	eax, eax
	jg	.L1
	or	edx, 1
	cmp	BYTE PTR [rsi], 2
	mov	WORD PTR [rbx], dx
	ja	.L23
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 5[rax], 0
	jne	.L1
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rbx]
	mov	BYTE PTR 59[rbx], 0
	mov	eax, edx
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	ax, -576
	sub	ax, 672
	mov	WORD PTR 22[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 10
	je	.L40
.L37:
	or	dl, -128
	mov	ecx, 149
	mov	DWORD PTR 36[rbx], edx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L18:
	add	r8d, eax
	mov	DWORD PTR [rcx], r8d
	cmp	r8d, 36000
	jbe	.L1
	movzx	eax, BYTE PTR [rsi]
	or	edx, 1
	mov	WORD PTR [rbx], dx
	cmp	al, 2
	ja	.L23
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	cmp	BYTE PTR 5[rdx], 0
	je	.L24
	sub	eax, 1
	cmp	al, 1
	jbe	.L24
.L1:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r8, QWORD PTR .refptr.gMPStageStartFrameCount[rip]
	mov	r11, QWORD PTR .refptr.gStageTime[rip]
	mov	rcx, QWORD PTR .refptr.gFrameCount[rip]
	mov	r9d, DWORD PTR [r11]
	mov	ecx, DWORD PTR [rcx]
	sub	ecx, DWORD PTR [r8]
	mov	r8d, ecx
	mov	DWORD PTR [r11], ecx
	sub	r8d, r9d
	xor	r9d, ecx
	cmp	r10b, 5
	je	.L41
	cmp	r9d, 63
	ja	.L42
.L6:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	test	BYTE PTR 80[r10], 4
	je	.L8
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	movzx	r11d, al
	movzx	ecx, WORD PTR [rcx]
	mov	r9d, ecx
	not	r9d
	test	r9w, 768
	je	.L43
	test	ch, 2
	je	.L12
	cmp	r11w, 1
	setb	cl
	setb	r9b
	movzx	ecx, cl
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L12:
	and	ch, 1
	jne	.L44
	.p2align 4,,10
	.p2align 3
.L8:
	mov	r9d, eax
	movzx	ecx, al
.L10:
	mov	r11, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [r11]
	sar	r11d, cl
	mov	rcx, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	and	r11d, 1
	cmove	r9d, eax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR 110[r10], r9b
	test	al, al
	je	.L4
	sub	eax, 1
	mov	BYTE PTR [rcx], al
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L39:
	test	dl, 96
	jne	.L3
	call	CreatePauseMenu
	movzx	edx, WORD PTR [rbx]
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L42:
	mov	r9, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	imul	ecx, DWORD PTR [r9], 1663525
	add	ecx, 1013904223
	mov	DWORD PTR [r9], ecx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L43:
	cmp	r11w, 3
	setne	r9b
	xor	ecx, ecx
	add	r9d, 2
	cmp	r11w, 3
	setne	cl
	add	ecx, 2
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L23:
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	CreateMultiplayerFinishHandler
	.p2align 4,,10
	.p2align 3
.L24:
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rbx]
	mov	BYTE PTR 59[rbx], 0
	mov	eax, edx
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	ax, -576
	sub	ax, 672
	mov	WORD PTR 22[rbx], ax
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L41:
	cmp	r9d, 511
	jbe	.L6
	mov	rcx, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	mov	r11, QWORD PTR .refptr.gRandomItemBox[rip]
	imul	r10d, DWORD PTR [rcx], 1663525
	add	r10d, 1013904223
	mov	DWORD PTR [rcx], r10d
	movzx	ecx, BYTE PTR [r11]
	cmp	r9d, 4095
	jbe	.L7
	mov	r9d, ecx
	and	ecx, 15
	and	r9d, -16
	add	r9d, 16
	or	ecx, r9d
.L7:
	and	ecx, -8
	and	r10d, 7
	or	ecx, r10d
	mov	BYTE PTR [r11], cl
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L44:
	cmp	r11w, 2
	sbb	r9d, r9d
	not	r9d
	add	r9d, 2
	cmp	r11w, 2
	sbb	ecx, ecx
	not	ecx
	add	ecx, 2
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L40:
	mov	edx, 8
	mov	DWORD PTR 32[rsp], 208
	mov	ecx, 2048
	mov	r9d, -1
	mov	r8d, 16
	call	CreateScreenShake
	mov	edx, DWORD PTR 36[rbx]
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_GameStage
	.def	TaskDestructor_GameStage;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_GameStage
TaskDestructor_GameStage:
	.seh_endprologue
	mov	QWORD PTR gGameStageTask[rip], 0
	jmp	m4aMPlayAllStop
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone5Act2
	.def	StageInit_Zone5Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone5Act2
StageInit_Zone5Act2:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L47
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L48
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L48
	cmp	al, 18
	je	.L57
.L48:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L47:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_MultiplayerSinglePak
	.def	StageInit_MultiplayerSinglePak;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_MultiplayerSinglePak
StageInit_MultiplayerSinglePak:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L59
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L60
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L60
	cmp	al, 18
	je	.L69
.L60:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L59:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_ZoneFinalActTA53
	.def	StageInit_ZoneFinalActTA53;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_ZoneFinalActTA53
StageInit_ZoneFinalActTA53:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L71
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L72
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L72
	cmp	al, 18
	je	.L81
.L72:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L71:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L81:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_31
	.def	StageInit_31;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_31
StageInit_31:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L83
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L84
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L84
	cmp	al, 18
	je	.L93
.L84:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L83:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L93:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone4ActBoss
	.def	StageInit_Zone4ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone4ActBoss
StageInit_Zone4ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L95
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L96
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L96
	cmp	al, 18
	je	.L105
.L96:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L95:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L105:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_33
	.def	StageInit_33;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_33
StageInit_33:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L107
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L108
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L108
	cmp	al, 18
	je	.L117
.L108:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L107:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L117:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_32
	.def	StageInit_32;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_32
StageInit_32:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L119
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L120
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L120
	cmp	al, 18
	je	.L129
.L120:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L119:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L129:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone3ActBoss
	.def	StageInit_Zone3ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone3ActBoss
StageInit_Zone3ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L131
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L132
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L132
	cmp	al, 18
	je	.L141
.L132:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L131:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L141:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Dummy
	.def	StageInit_Dummy;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Dummy
StageInit_Dummy:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L143
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L144
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L144
	cmp	al, 18
	je	.L153
.L144:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L143:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L153:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone1ActBoss
	.def	StageInit_Zone1ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone1ActBoss
StageInit_Zone1ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L155
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L156
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L156
	cmp	al, 18
	je	.L165
.L156:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L155:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L165:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone5Act1
	.def	StageInit_Zone5Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone5Act1
StageInit_Zone5Act1:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L167
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L168
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L168
	cmp	al, 18
	je	.L177
.L168:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L167:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L177:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone2Act2
	.def	StageInit_Zone2Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone2Act2
StageInit_Zone2Act2:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L179
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L180
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L180
	cmp	al, 18
	je	.L189
.L180:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L179:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L189:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone2ActBoss
	.def	StageInit_Zone2ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone2ActBoss
StageInit_Zone2ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L191
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L192
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L192
	cmp	al, 18
	je	.L201
.L192:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L191:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L201:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone2Act1
	.def	StageInit_Zone2Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone2Act1
StageInit_Zone2Act1:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L203
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L204
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L204
	cmp	al, 18
	je	.L213
.L204:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L203:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L213:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone6ActBoss
	.def	StageInit_Zone6ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone6ActBoss
StageInit_Zone6ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L215
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L216
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L216
	cmp	al, 18
	je	.L225
.L216:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L215:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L225:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone1Act2
	.def	StageInit_Zone1Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone1Act2
StageInit_Zone1Act2:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 897
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L227
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L228
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L228
	cmp	al, 18
	je	.L237
.L228:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L227:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L237:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone5ActBoss
	.def	StageInit_Zone5ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone5ActBoss
StageInit_Zone5ActBoss:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 686
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L239
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L240
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L240
	cmp	al, 18
	je	.L249
.L240:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L239:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L249:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_ZoneFinalActXX
	.def	StageInit_ZoneFinalActXX;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_ZoneFinalActXX
StageInit_ZoneFinalActXX:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 686
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L251
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L252
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L252
	cmp	al, 18
	je	.L261
.L252:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L251:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L261:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone1Act1
	.def	StageInit_Zone1Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone1Act1
StageInit_Zone1Act1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r8d, r8d
	mov	edx, 2132836128
	mov	ecx, 2096
	call	CreateStageWaterTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 897
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L263
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L264
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L264
	cmp	al, 18
	je	.L273
.L264:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L263:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L273:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone3Act1
	.def	StageInit_Zone3Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone3Act1
StageInit_Zone3Act1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 900
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 1
	mov	edx, 900
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	edx, 900
	mov	r8d, 2
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L275
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L276
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L276
	cmp	al, 18
	je	.L285
.L276:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L275:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L285:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone3Act2
	.def	StageInit_Zone3Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone3Act2
StageInit_Zone3Act2:
	.seh_endprologue
	jmp	StageInit_Zone3Act1
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone4Act1
	.def	StageInit_Zone4Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone4Act1
StageInit_Zone4Act1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 2
	mov	edx, 906
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 906
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 1
	mov	edx, 906
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 901
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L288
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L289
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L289
	cmp	al, 18
	je	.L298
.L289:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L288:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L298:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone4Act2
	.def	StageInit_Zone4Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone4Act2
StageInit_Zone4Act2:
	.seh_endprologue
	jmp	StageInit_Zone4Act1
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone7Act1
	.def	StageInit_Zone7Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone7Act1
StageInit_Zone7Act1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 941
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 942
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 943
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 944
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 945
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 946
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L301
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L302
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L302
	cmp	al, 18
	je	.L311
.L302:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L301:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L311:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone7Act2
	.def	StageInit_Zone7Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone7Act2
StageInit_Zone7Act2:
	.seh_endprologue
	jmp	StageInit_Zone7Act1
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone7ActBoss
	.def	StageInit_Zone7ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone7ActBoss
StageInit_Zone7ActBoss:
	.seh_endprologue
	jmp	StageInit_Zone7Act1
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone6Act1
	.def	StageInit_Zone6Act1;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone6Act1
StageInit_Zone6Act1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 1
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 2
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 3
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 4
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 5
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 6
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 7
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 8
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	r8d, 9
	mov	edx, 940
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	xor	r9d, r9d
	mov	edx, 940
	mov	r8d, 11
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L315
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L316
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L316
	cmp	al, 18
	je	.L325
.L316:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L315:
	mov	ecx, 58
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L325:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_Zone6Act2
	.def	StageInit_Zone6Act2;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_Zone6Act2
StageInit_Zone6Act2:
	.seh_endprologue
	jmp	StageInit_Zone6Act1
	.seh_endproc
	.p2align 4
	.globl	ApplyGameStageSettings
	.def	ApplyGameStageSettings;	.scl	2;	.type	32;	.endef
	.seh_proc	ApplyGameStageSettings
ApplyGameStageSettings:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 3
	sbb	eax, eax
	sub	edx, 1
	and	eax, 2
	add	eax, 1
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	and	eax, 64
	cmp	dl, 3
	jbe	.L329
	test	ax, ax
	je	.L334
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	BYTE PTR [rax], 0
.L333:
	mov	r8d, 256
	mov	edx, 2
	mov	ecx, 1
	jmp	SetPlayerControls
	.p2align 4,,10
	.p2align 3
.L334:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ecx, BYTE PTR 4[rax]
	mov	BYTE PTR [rdx], cl
.L331:
	movzx	edx, WORD PTR 46[rax]
	movzx	ecx, WORD PTR 44[rax]
	movzx	r8d, WORD PTR 48[rax]
	jmp	SetPlayerControls
	.p2align 4,,10
	.p2align 3
.L329:
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	BYTE PTR [rdx], 0
	test	ax, ax
	jne	.L333
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	jmp	.L331
	.seh_endproc
	.p2align 4
	.globl	CreateGameStage
	.def	CreateGameStage;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateGameStage
CreateGameStage:
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
	lea	rax, TaskDestructor_GameStage[rip]
	xor	edx, edx
	xor	r9d, r9d
	mov	r8d, 65280
	lea	rcx, Task_GameStage[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR .refptr.gStageFlags[rip]
	mov	rsi, QWORD PTR .refptr.gFinalBossActive[rip]
	mov	QWORD PTR gGameStageTask[rip], rax
	mov	rax, QWORD PTR .refptr.gActiveCollectRingEffectCount[rip]
	mov	BYTE PTR [rsi], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	mov	BYTE PTR [rax], 0
	movzx	eax, WORD PTR [rbx]
	and	al, 127
	or	eax, 33
	mov	WORD PTR [rbx], ax
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBossRingsRespawnCount[rip]
	mov	BYTE PTR [rax], 10
	mov	rax, QWORD PTR .refptr.gBoostEffectTasksCreated[rip]
	mov	BYTE PTR [rax], 0
	call	sub_801F044
	mov	rdi, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rax, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movsx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [rax], 0
	cmp	dl, 29
	jne	.L336
.L342:
	mov	rsi, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	r12, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	mov	rbp, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movzx	eax, WORD PTR 28[rsi]
	mov	WORD PTR [r12], ax
	movzx	eax, WORD PTR 30[rsi]
	mov	WORD PTR 0[rbp], ax
.L337:
	call	SuperSonicInit
	movzx	eax, WORD PTR 32[rsi]
	mov	WORD PTR [r12], ax
	movzx	eax, WORD PTR 34[rsi]
	mov	WORD PTR 0[rbp], ax
.L341:
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rsi], 5
	je	.L346
.L383:
	call	CreateStageMusicManager
	call	SetupStageIntro
	movsx	ecx, BYTE PTR [rdi]
	call	InitCamera
	movsx	rdx, BYTE PTR [rdi]
	lea	rax, sStageInitProcs[rip]
	call	[QWORD PTR [rax+rdx*8]]
	cmp	BYTE PTR [rdi], 0
	jne	.L382
.L351:
	movzx	eax, WORD PTR [rbx]
	and	eax, -7
	cmp	BYTE PTR [rsi], 5
	mov	WORD PTR [rbx], ax
	jne	.L352
	or	eax, 4
	mov	WORD PTR [rbx], ax
.L352:
	call	CreateStageRingsManager
	mov	ebx, 120
	mov	edi, 80
	mov	ebp, 128
	call	CreateStageEntitiesManager
	mov	rax, QWORD PTR .refptr.gUnknown_03001944[rip]
	xor	ecx, ecx
	cmp	BYTE PTR [rsi], 2
	mov	r8d, 256
	mov	r9d, 256
	mov	r10d, 120
	mov	r11d, 80
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gUnknown_030017F0[rip]
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gUnknown_03005394[rip]
	mov	WORD PTR [rax], r9w
	mov	rax, QWORD PTR .refptr.gUnknown_03002A8C[rip]
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gUnknown_03004D58[rip]
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gUnknown_0300194C[rip]
	mov	WORD PTR [rax], bx
	mov	rax, QWORD PTR .refptr.gUnknown_03002820[rip]
	mov	WORD PTR [rax], di
	mov	rax, QWORD PTR .refptr.gUnknown_03005398[rip]
	mov	WORD PTR [rax], bp
	ja	.L353
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR [rax], -1
.L354:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	QWORD PTR [rax], 0
	call	CreateCheese
	movzx	eax, BYTE PTR [rsi]
	cmp	al, 2
	jbe	.L335
	cmp	al, 5
	je	.L335
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateRaceProgressIndicator
.L386:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	xor	edx, edx
	mov	QWORD PTR [rax], rdx
.L335:
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
.L336:
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	movsx	ecx, BYTE PTR [rax]
	call	CreatePlayer
	movzx	eax, BYTE PTR [rdi]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L338
	cmp	al, 28
	jne	.L339
	cmp	BYTE PTR [rsi], 0
	jne	.L341
	mov	rsi, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	r12, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	mov	rbp, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movzx	eax, WORD PTR 28[rsi]
	mov	WORD PTR [r12], ax
	movzx	eax, WORD PTR 30[rsi]
	mov	WORD PTR 0[rbp], ax
.L344:
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	movzx	ecx, BYTE PTR [rax]
	call	CreateBossRunManager
	movzx	eax, BYTE PTR [rdi]
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L338:
	mov	edx, eax
	mov	rsi, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	r12, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	sar	dl, 2
	mov	rbp, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movsx	rdx, dl
	movzx	ecx, WORD PTR [rsi+rdx*4]
	movzx	edx, WORD PTR 2[rsi+rdx*4]
	mov	WORD PTR [r12], cx
	mov	WORD PTR 0[rbp], dx
	cmp	al, 28
	je	.L344
.L345:
	cmp	al, 29
	je	.L337
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rsi], 5
	jne	.L383
.L346:
	xor	ecx, ecx
	call	InitCamera
	cmp	BYTE PTR [rsi], 5
	movsx	ax, BYTE PTR [rdi]
	je	.L348
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L349
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L349
	cmp	al, 18
	je	.L384
.L349:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	call	m4aSongNumStart
.L350:
	call	CreateCollectRingsTimeDisplay
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	WORD PTR [rbx], -2
	and	DWORD PTR 36[rcx], -6291457
	cmp	BYTE PTR [rdi], 0
	je	.L351
.L382:
	xor	r8d, r8d
	xor	edx, edx
	mov	ecx, -1
	call	CreateStageWaterTask
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L353:
	call	CreateMultiplayerReceiveEventMgr
	xor	ebx, ebx
	call	CreateMultiplayerSendEventMgr
	mov	rax, QWORD PTR .refptr.gRandomItemBox[rip]
	mov	r12, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	rbp, QWORD PTR .refptr.gMultiplayerCharRings[rip]
	mov	rdi, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	BYTE PTR [rax], 0
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	r13, QWORD PTR .refptr.gMultiplayerCharacters[rip]
.L358:
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR [rbx+rbp], 0
	bt	eax, ebx
	jc	.L385
.L355:
	movzx	eax, BYTE PTR [rsi]
	mov	BYTE PTR [rbx+r12], -1
	cmp	al, 5
	jne	.L357
	mov	BYTE PTR [rbx+r13], bl
.L357:
	add	rbx, 1
	cmp	rbx, 4
	jne	.L358
	cmp	al, 5
	je	.L386
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	or	BYTE PTR 59[rcx], -128
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L385:
	mov	ecx, ebx
	call	CreateMultiplayerPlayer
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	al, bl
	je	.L356
	mov	ecx, ebx
	call	CreateOpponentPositionIndicator
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L339:
	cmp	al, 29
	jne	.L341
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L356:
	call	CreateSelfPositionIndicator
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L348:
	mov	ecx, 58
	call	m4aSongNumStart
	jmp	.L350
.L384:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	jmp	.L350
	.seh_endproc
	.p2align 4
	.globl	GameStageStart
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.seh_proc	GameStageStart
GameStageStart:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gTrappedAnimalVariant[rip]
	xor	edx, edx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gNumSingleplayerCharacters[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	edx, BYTE PTR [rax]
	cmp	dl, 29
	je	.L388
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r8d, r8d
	movsx	ecx, BYTE PTR [rax]
	call	CallSetStageSpawnPos
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	QWORD PTR [rax], 0
.L388:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -129
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 2
	ja	.L389
.L391:
	xor	edx, edx
.L390:
	mov	rax, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	DWORD PTR [rax], edx
	add	rsp, 40
	jmp	CreateGameStage
	.p2align 4,,10
	.p2align 3
.L389:
	mov	rdx, QWORD PTR .refptr.gFrameCount[rip]
	mov	ecx, DWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gMPStageStartFrameCount[rip]
	mov	DWORD PTR [rdx], ecx
	cmp	al, 5
	jne	.L391
	mov	edx, 10800
	jmp	.L390
	.seh_endproc
	.p2align 4
	.globl	HandleLifeLost
	.def	HandleLifeLost;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleLifeLost
HandleLifeLost:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	eax, ecx
	or	eax, 32
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	sub	eax, 1
	cmp	al, 1
	jbe	.L400
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	sub	BYTE PTR [r8], 1
	jne	.L398
	or	ecx, 33
	mov	WORD PTR [rdx], cx
	mov	ecx, 1
	add	rsp, 40
	jmp	CreateGameOverScreen
	.p2align 4,,10
	.p2align 3
.L398:
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
	jmp	CreateGameStage
	.p2align 4,,10
	.p2align 3
.L400:
	xor	ecx, ecx
	mov	edx, 65535
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
	call	CreateTimeAttackLobbyScreen
	mov	rax, QWORD PTR .refptr.gNumLives[rip]
	mov	BYTE PTR [rax], 2
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	DestroyStageTasks
	.def	DestroyStageTasks;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyStageTasks
DestroyStageTasks:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR gGameStageTask[rip]
	call	TaskDestroy
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR gGameStageTask[rip], 0
	call	DestroyPlayerTasks
	nop
	add	rsp, 40
	jmp	DestroyCameraMovementTask
	.seh_endproc
	.p2align 4
	.globl	HandleDeath
	.def	HandleDeath;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleDeath
HandleDeath:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 32
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	sub	eax, 1
	cmp	al, 1
	jbe	.L407
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	sub	BYTE PTR [rdx], 1
	jne	.L405
	mov	ecx, 1
	add	rsp, 40
	jmp	CreateGameOverScreen
	.p2align 4,,10
	.p2align 3
.L405:
	mov	ecx, 2
	add	rsp, 40
	jmp	CreateGameOverScreen
	.p2align 4,,10
	.p2align 3
.L407:
	xor	ecx, ecx
	mov	edx, 65535
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
	call	CreateTimeAttackLobbyScreen
	mov	rax, QWORD PTR .refptr.gNumLives[rip]
	mov	BYTE PTR [rax], 2
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	GoToNextLevel
	.def	GoToNextLevel;	.scl	2;	.type	32;	.endef
	.seh_proc	GoToNextLevel
GoToNextLevel:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	ecx, ecx
	mov	edx, 65535
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
	call	WriteSaveGame
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L408
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rdx]
	add	eax, 1
	mov	BYTE PTR [rdx], al
	cmp	al, 33
	jle	.L412
.L408:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L412:
	add	rsp, 40
	jmp	GameStageStart
	.seh_endproc
	.p2align 4
	.globl	StageInit_CollectRings
	.def	StageInit_CollectRings;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_CollectRings
StageInit_CollectRings:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 5
	movsx	ax, BYTE PTR [rax]
	je	.L414
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L415
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L415
	cmp	al, 18
	je	.L424
.L415:
	mov	rdx, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	eax, ax
	movzx	ecx, WORD PTR [rdx+rax*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L414:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L424:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.p2align 4
	.globl	StageInit_SetMusic
	.def	StageInit_SetMusic;	.scl	2;	.type	32;	.endef
	.seh_proc	StageInit_SetMusic
StageInit_SetMusic:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L426
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L427
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	eax, BYTE PTR [rax]
	movzx	r8d, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	r8d, edx
	jg	.L427
	cmp	al, 18
	je	.L436
.L427:
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, cx
	movzx	ecx, WORD PTR [rax+rcx*2]
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L426:
	mov	ecx, 58
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L436:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 30
	ret
	.seh_endproc
	.globl	sStageInitProcs
	.section .rdata,"dr"
	.align 32
sStageInitProcs:
	.quad	StageInit_Zone1Act1
	.quad	StageInit_Zone1Act2
	.quad	StageInit_Zone1ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone2Act1
	.quad	StageInit_Zone2Act2
	.quad	StageInit_Zone2ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone3Act1
	.quad	StageInit_Zone3Act2
	.quad	StageInit_Zone3ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone4Act1
	.quad	StageInit_Zone4Act2
	.quad	StageInit_Zone4ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone5Act1
	.quad	StageInit_Zone5Act2
	.quad	StageInit_Zone5ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone6Act1
	.quad	StageInit_Zone6Act2
	.quad	StageInit_Zone6ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_Zone7Act1
	.quad	StageInit_Zone7Act2
	.quad	StageInit_Zone7ActBoss
	.quad	StageInit_Dummy
	.quad	StageInit_ZoneFinalActXX
	.quad	StageInit_ZoneFinalActTA53
	.quad	StageInit_MultiplayerSinglePak
	.quad	StageInit_31
	.quad	StageInit_32
	.quad	StageInit_33
	.globl	gGameStageTask
	.bss
	.align 8
gGameStageTask:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreatePauseMenu;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerFinishHandler;	.scl	2;	.type	32;	.endef
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	CreatePaletteLoaderTask;	.scl	2;	.type	32;	.endef
	.def	CreateStageWaterTask;	.scl	2;	.type	32;	.endef
	.def	SetPlayerControls;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_801F044;	.scl	2;	.type	32;	.endef
	.def	SuperSonicInit;	.scl	2;	.type	32;	.endef
	.def	CreateStageMusicManager;	.scl	2;	.type	32;	.endef
	.def	SetupStageIntro;	.scl	2;	.type	32;	.endef
	.def	InitCamera;	.scl	2;	.type	32;	.endef
	.def	CreateStageRingsManager;	.scl	2;	.type	32;	.endef
	.def	CreateStageEntitiesManager;	.scl	2;	.type	32;	.endef
	.def	CreateCheese;	.scl	2;	.type	32;	.endef
	.def	CreateRaceProgressIndicator;	.scl	2;	.type	32;	.endef
	.def	CreatePlayer;	.scl	2;	.type	32;	.endef
	.def	CreateBossRunManager;	.scl	2;	.type	32;	.endef
	.def	CreateCollectRingsTimeDisplay;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerReceiveEventMgr;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSendEventMgr;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerPlayer;	.scl	2;	.type	32;	.endef
	.def	CreateOpponentPositionIndicator;	.scl	2;	.type	32;	.endef
	.def	CreateSelfPositionIndicator;	.scl	2;	.type	32;	.endef
	.def	CallSetStageSpawnPos;	.scl	2;	.type	32;	.endef
	.def	CreateGameOverScreen;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLobbyScreen;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DestroyPlayerTasks;	.scl	2;	.type	32;	.endef
	.def	DestroyCameraMovementTask;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gNumSingleplayerCharacters, "dr"
	.globl	.refptr.gNumSingleplayerCharacters
	.linkonce	discard
.refptr.gNumSingleplayerCharacters:
	.quad	gNumSingleplayerCharacters
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gTrappedAnimalVariant, "dr"
	.globl	.refptr.gTrappedAnimalVariant
	.linkonce	discard
.refptr.gTrappedAnimalVariant:
	.quad	gTrappedAnimalVariant
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerCharRings, "dr"
	.globl	.refptr.gMultiplayerCharRings
	.linkonce	discard
.refptr.gMultiplayerCharRings:
	.quad	gMultiplayerCharRings
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gUnknown_03005398, "dr"
	.globl	.refptr.gUnknown_03005398
	.linkonce	discard
.refptr.gUnknown_03005398:
	.quad	gUnknown_03005398
	.section	.rdata$.refptr.gUnknown_03002820, "dr"
	.globl	.refptr.gUnknown_03002820
	.linkonce	discard
.refptr.gUnknown_03002820:
	.quad	gUnknown_03002820
	.section	.rdata$.refptr.gUnknown_0300194C, "dr"
	.globl	.refptr.gUnknown_0300194C
	.linkonce	discard
.refptr.gUnknown_0300194C:
	.quad	gUnknown_0300194C
	.section	.rdata$.refptr.gUnknown_03004D58, "dr"
	.globl	.refptr.gUnknown_03004D58
	.linkonce	discard
.refptr.gUnknown_03004D58:
	.quad	gUnknown_03004D58
	.section	.rdata$.refptr.gUnknown_03002A8C, "dr"
	.globl	.refptr.gUnknown_03002A8C
	.linkonce	discard
.refptr.gUnknown_03002A8C:
	.quad	gUnknown_03002A8C
	.section	.rdata$.refptr.gUnknown_03005394, "dr"
	.globl	.refptr.gUnknown_03005394
	.linkonce	discard
.refptr.gUnknown_03005394:
	.quad	gUnknown_03005394
	.section	.rdata$.refptr.gUnknown_030017F0, "dr"
	.globl	.refptr.gUnknown_030017F0
	.linkonce	discard
.refptr.gUnknown_030017F0:
	.quad	gUnknown_030017F0
	.section	.rdata$.refptr.gUnknown_03001944, "dr"
	.globl	.refptr.gUnknown_03001944
	.linkonce	discard
.refptr.gUnknown_03001944:
	.quad	gUnknown_03001944
	.section	.rdata$.refptr.gBossIndex, "dr"
	.globl	.refptr.gBossIndex
	.linkonce	discard
.refptr.gBossIndex:
	.quad	gBossIndex
	.section	.rdata$.refptr.gBossCameraClampYUpper, "dr"
	.globl	.refptr.gBossCameraClampYUpper
	.linkonce	discard
.refptr.gBossCameraClampYUpper:
	.quad	gBossCameraClampYUpper
	.section	.rdata$.refptr.gBossCameraYClamps, "dr"
	.globl	.refptr.gBossCameraYClamps
	.linkonce	discard
.refptr.gBossCameraYClamps:
	.quad	gBossCameraYClamps
	.section	.rdata$.refptr.gBossCameraClampYLower, "dr"
	.globl	.refptr.gBossCameraClampYLower
	.linkonce	discard
.refptr.gBossCameraClampYLower:
	.quad	gBossCameraClampYLower
	.section	.rdata$.refptr.gBoostEffectTasksCreated, "dr"
	.globl	.refptr.gBoostEffectTasksCreated
	.linkonce	discard
.refptr.gBoostEffectTasksCreated:
	.quad	gBoostEffectTasksCreated
	.section	.rdata$.refptr.gBossRingsRespawnCount, "dr"
	.globl	.refptr.gBossRingsRespawnCount
	.linkonce	discard
.refptr.gBossRingsRespawnCount:
	.quad	gBossRingsRespawnCount
	.section	.rdata$.refptr.gBossRingsShallRespawn, "dr"
	.globl	.refptr.gBossRingsShallRespawn
	.linkonce	discard
.refptr.gBossRingsShallRespawn:
	.quad	gBossRingsShallRespawn
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gActiveCollectRingEffectCount, "dr"
	.globl	.refptr.gActiveCollectRingEffectCount
	.linkonce	discard
.refptr.gActiveCollectRingEffectCount:
	.quad	gActiveCollectRingEffectCount
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gLevelSongs, "dr"
	.globl	.refptr.gLevelSongs
	.linkonce	discard
.refptr.gLevelSongs:
	.quad	gLevelSongs
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gCheckpointTime, "dr"
	.globl	.refptr.gCheckpointTime
	.linkonce	discard
.refptr.gCheckpointTime:
	.quad	gCheckpointTime
	.section	.rdata$.refptr.gPrevStageFlags, "dr"
	.globl	.refptr.gPrevStageFlags
	.linkonce	discard
.refptr.gPrevStageFlags:
	.quad	gPrevStageFlags
	.section	.rdata$.refptr.gSpikesUnknownTimer, "dr"
	.globl	.refptr.gSpikesUnknownTimer
	.linkonce	discard
.refptr.gSpikesUnknownTimer:
	.quad	gSpikesUnknownTimer
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gRandomItemBox, "dr"
	.globl	.refptr.gRandomItemBox
	.linkonce	discard
.refptr.gRandomItemBox:
	.quad	gRandomItemBox
	.section	.rdata$.refptr.gMultiplayerPseudoRandom, "dr"
	.globl	.refptr.gMultiplayerPseudoRandom
	.linkonce	discard
.refptr.gMultiplayerPseudoRandom:
	.quad	gMultiplayerPseudoRandom
	.section	.rdata$.refptr.gMPStageStartFrameCount, "dr"
	.globl	.refptr.gMPStageStartFrameCount
	.linkonce	discard
.refptr.gMPStageStartFrameCount:
	.quad	gMPStageStartFrameCount
	.section	.rdata$.refptr.gFrameCount, "dr"
	.globl	.refptr.gFrameCount
	.linkonce	discard
.refptr.gFrameCount:
	.quad	gFrameCount
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
