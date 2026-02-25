	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.globl	gNewInputCounters
	.bss
	.align 8
gNewInputCounters:
	.space 128
	.globl	gFrameInputsBufIndex
	.align 4
gFrameInputsBufIndex:
	.space 1
	.globl	gNewInputCountersIndex
gNewInputCountersIndex:
	.space 1
	.globl	gFrameInputsBuf
gFrameInputsBuf:
	.space 4
	.globl	gBoostEffectTasksCreated
	.align 4
gBoostEffectTasksCreated:
	.space 1
	.globl	gMultiplayerConnections
	.align 4
gMultiplayerConnections:
	.space 1
	.globl	gCurrentLevel
	.align 4
gCurrentLevel:
	.space 1
	.globl	gBossIndex
gBossIndex:
	.space 1
	.globl	gMultiplayerPlayerTasks
	.align 32
gMultiplayerPlayerTasks:
	.space 32
	.globl	gMultiplayerUnlockedCharacters
	.align 4
gMultiplayerUnlockedCharacters:
	.space 1
	.globl	gStageTime
	.align 4
gStageTime:
	.space 4
	.globl	gRoomEventQueue
	.align 16
gRoomEventQueue:
	.space 128
	.globl	gMultiplayerCharacters
gMultiplayerCharacters:
	.space 4
	.globl	gWorldSpeedX
	.align 4
gWorldSpeedX:
	.space 4
	.globl	gNumSingleplayerCharacters
	.align 4
gNumSingleplayerCharacters:
	.space 1
	.globl	gSpecialRingCount
	.align 4
gSpecialRingCount:
	.space 1
	.globl	gSelectedCharacter
	.align 4
gSelectedCharacter:
	.space 1
	.globl	gDifficultyLevel
	.align 4
gDifficultyLevel:
	.space 1
	.globl	gRandomItemBox
	.align 4
gRandomItemBox:
	.space 1
	.globl	gDestroySpotlights
gDestroySpotlights:
	.space 1
	.globl	gWorldSpeedY
	.align 4
gWorldSpeedY:
	.space 4
	.globl	gEntitiesManagerTask
	.align 8
gEntitiesManagerTask:
	.space 8
	.globl	gMultiplayerUnlockedLevels
gMultiplayerUnlockedLevels:
	.space 1
	.globl	gMultiplayerMissingHeartbeats
gMultiplayerMissingHeartbeats:
	.space 4
	.globl	gStageGoalX
	.align 4
gStageGoalX:
	.space 4
	.globl	gGameMode
	.align 4
gGameMode:
	.space 1
	.globl	gDemoPlayCounter
gDemoPlayCounter:
	.space 1
	.globl	gHomingTarget
	.align 8
gHomingTarget:
	.space 8
	.globl	gBossCameraClampYUpper
	.align 4
gBossCameraClampYUpper:
	.space 2
	.globl	gOamMatrixIndex
gOamMatrixIndex:
	.space 1
	.globl	gMultiplayerRanks
	.align 4
gMultiplayerRanks:
	.space 4
	.globl	gFinalBossActive
gFinalBossActive:
	.space 1
	.globl	gMusicManagerState
	.align 8
gMusicManagerState:
	.space 8
	.globl	gMPStageStartFrameCount
	.align 4
gMPStageStartFrameCount:
	.space 4
	.globl	gCheeseTarget
	.align 8
gCheeseTarget:
	.space 16
	.globl	gCourseTime
	.align 4
gCourseTime:
	.space 4
	.globl	gMultiplayerNames
	.align 16
gMultiplayerNames:
	.space 48
	.globl	gLevelScore
	.align 4
gLevelScore:
	.space 4
	.globl	gPrevStageFlags
	.align 4
gPrevStageFlags:
	.space 2
	.globl	gNumLives
	.align 4
gNumLives:
	.space 1
	.globl	gTrappedAnimalVariant
	.align 4
gTrappedAnimalVariant:
	.space 1
	.globl	gBossCameraClampYLower
	.align 4
gBossCameraClampYLower:
	.space 2
	.globl	gUnknown_0300543C
	.align 4
gUnknown_0300543C:
	.space 1
	.globl	gRoomEventQueueWritePos
gRoomEventQueueWritePos:
	.space 1
	.globl	gMultiplayerPseudoRandom
	.align 4
gMultiplayerPseudoRandom:
	.space 4
	.globl	gBossRingsShallRespawn
	.align 4
gBossRingsShallRespawn:
	.space 1
	.globl	gBossRingsRespawnCount
gBossRingsRespawnCount:
	.space 1
	.globl	gMPRingCollectWins
	.align 4
gMPRingCollectWins:
	.space 4
	.globl	gStageFlags
	.align 4
gStageFlags:
	.space 2
	.globl	gRoomEventQueueSendPos
	.align 4
gRoomEventQueueSendPos:
	.space 1
	.globl	gMultiplayerIds
	.align 16
gMultiplayerIds:
	.space 16
	.globl	gActiveCollectRingEffectCount
gActiveCollectRingEffectCount:
	.space 1
	.globl	gRingCount
	.align 4
gRingCount:
	.space 2
	.globl	gMultiplayerLanguage
gMultiplayerLanguage:
	.space 1
	.globl	gMultiplayerCharRings
gMultiplayerCharRings:
	.space 4
	.globl	gCheckpointTime
	.align 4
gCheckpointTime:
	.space 4
	.globl	gSpikesUnknownTimer
gSpikesUnknownTimer:
	.space 1
	.ident	"GCC: (GNU) 13-win32"
