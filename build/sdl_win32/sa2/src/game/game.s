	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	GameInit
	.def	GameInit;	.scl	2;	.type	32;	.endef
	.seh_proc	GameInit
GameInit:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gTilemapsRef[rip]
	xor	ecx, ecx
	pxor	xmm0, xmm0
	mov	rdx, QWORD PTR .refptr.gTilemaps[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	rdx, QWORD PTR .refptr.gSpriteTables[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	rdx, QWORD PTR .refptr.gBgOffsetsPrimary[rip]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gBgOffsetsSecondary[rip]
	add	rax, 1920
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	xor	edx, edx
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gRingsScatterTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDummyTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gGameStageTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR 152[rax], 0
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 96[rax], 0
	mov	rax, QWORD PTR .refptr.gDustEffectBrakingTask[rip]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR .refptr.gWater[rip]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gUnknown_0300543C[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gSmallAirBubbleCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDemoPlayCounter[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDestroySpotlights[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movups	XMMWORD PTR [rax], xmm0
	movups	XMMWORD PTR 16[rax], xmm0
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	call	SaveInit
	call	SaveGameExists
	xor	ecx, ecx
	test	ax, ax
	jne	.L7
.L2:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	eax, DWORD PTR [rax]
	test	ah, 2
	jne	.L8
	add	rsp, 40
	jmp	CreateDecompCreditsScreen
	.p2align 4,,10
	.p2align 3
.L8:
	add	rsp, 40
	jmp	ShowSinglePakResults
	.p2align 4,,10
	.p2align 3
.L7:
	call	LoadSaveGame
	mov	ecx, 1
	jmp	.L2
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	SaveInit;	.scl	2;	.type	32;	.endef
	.def	SaveGameExists;	.scl	2;	.type	32;	.endef
	.def	CreateDecompCreditsScreen;	.scl	2;	.type	32;	.endef
	.def	ShowSinglePakResults;	.scl	2;	.type	32;	.endef
	.def	LoadSaveGame;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gDestroySpotlights, "dr"
	.globl	.refptr.gDestroySpotlights
	.linkonce	discard
.refptr.gDestroySpotlights:
	.quad	gDestroySpotlights
	.section	.rdata$.refptr.gDemoPlayCounter, "dr"
	.globl	.refptr.gDemoPlayCounter
	.linkonce	discard
.refptr.gDemoPlayCounter:
	.quad	gDemoPlayCounter
	.section	.rdata$.refptr.gSmallAirBubbleCount, "dr"
	.globl	.refptr.gSmallAirBubbleCount
	.linkonce	discard
.refptr.gSmallAirBubbleCount:
	.quad	gSmallAirBubbleCount
	.section	.rdata$.refptr.gEntitiesManagerTask, "dr"
	.globl	.refptr.gEntitiesManagerTask
	.linkonce	discard
.refptr.gEntitiesManagerTask:
	.quad	gEntitiesManagerTask
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gUnknown_0300543C, "dr"
	.globl	.refptr.gUnknown_0300543C
	.linkonce	discard
.refptr.gUnknown_0300543C:
	.quad	gUnknown_0300543C
	.section	.rdata$.refptr.gWater, "dr"
	.globl	.refptr.gWater
	.linkonce	discard
.refptr.gWater:
	.quad	gWater
	.section	.rdata$.refptr.gDustEffectBrakingTask, "dr"
	.globl	.refptr.gDustEffectBrakingTask
	.linkonce	discard
.refptr.gDustEffectBrakingTask:
	.quad	gDustEffectBrakingTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gGameStageTask, "dr"
	.globl	.refptr.gGameStageTask
	.linkonce	discard
.refptr.gGameStageTask:
	.quad	gGameStageTask
	.section	.rdata$.refptr.gDummyTask, "dr"
	.globl	.refptr.gDummyTask
	.linkonce	discard
.refptr.gDummyTask:
	.quad	gDummyTask
	.section	.rdata$.refptr.gRingsScatterTask, "dr"
	.globl	.refptr.gRingsScatterTask
	.linkonce	discard
.refptr.gRingsScatterTask:
	.quad	gRingsScatterTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gPrevStageFlags, "dr"
	.globl	.refptr.gPrevStageFlags
	.linkonce	discard
.refptr.gPrevStageFlags:
	.quad	gPrevStageFlags
	.section	.rdata$.refptr.gBgOffsetsSecondary, "dr"
	.globl	.refptr.gBgOffsetsSecondary
	.linkonce	discard
.refptr.gBgOffsetsSecondary:
	.quad	gBgOffsetsSecondary
	.section	.rdata$.refptr.gBgOffsetsBuffer, "dr"
	.globl	.refptr.gBgOffsetsBuffer
	.linkonce	discard
.refptr.gBgOffsetsBuffer:
	.quad	gBgOffsetsBuffer
	.section	.rdata$.refptr.gBgOffsetsPrimary, "dr"
	.globl	.refptr.gBgOffsetsPrimary
	.linkonce	discard
.refptr.gBgOffsetsPrimary:
	.quad	gBgOffsetsPrimary
	.section	.rdata$.refptr.gSpriteTables, "dr"
	.globl	.refptr.gSpriteTables
	.linkonce	discard
.refptr.gSpriteTables:
	.quad	gSpriteTables
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
	.section	.rdata$.refptr.gTilemaps, "dr"
	.globl	.refptr.gTilemaps
	.linkonce	discard
.refptr.gTilemaps:
	.quad	gTilemaps
	.section	.rdata$.refptr.gTilemapsRef, "dr"
	.globl	.refptr.gTilemapsRef
	.linkonce	discard
.refptr.gTilemapsRef:
	.quad	gTilemapsRef
