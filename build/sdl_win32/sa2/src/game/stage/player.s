	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Player_CameraShift
	.def	Player_CameraShift;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_CameraShift
Player_CameraShift:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 28[rdx]
	cmp	eax, -55
	jl	.L1
	sub	eax, 1
	mov	DWORD PTR 28[rdx], eax
.L1:
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Nop
	.def	Player_Nop;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Nop
Player_Nop:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_InitAttack
	.def	Player_InitAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitAttack
Player_InitAttack:
	.seh_endprologue
	cmp	BYTE PTR 141[rcx], 4
	ja	.L5
	movzx	eax, BYTE PTR 141[rcx]
	lea	rdx, .L8[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L8:
	.long	.L15-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L9-.L8
	.long	.L7-.L8
	.text
	.p2align 4,,10
	.p2align 3
.L15:
	jmp	Player_SonicAmy_InitSkidAttack
	.p2align 4,,10
	.p2align 3
.L7:
	cmp	BYTE PTR 98[rcx], 0
	jne	.L15
	jmp	Player_Amy_InitHammerAttack
	.p2align 4,,10
	.p2align 3
.L11:
	cmp	BYTE PTR 98[rcx], 0
	jne	.L13
	jmp	Player_Cream_InitChaoAttack
	.p2align 4,,10
	.p2align 3
.L10:
	jmp	Player_Tails_InitTailSwipe
	.p2align 4,,10
	.p2align 3
.L9:
	cmp	BYTE PTR 98[rcx], 0
	jne	.L14
	jmp	Player_Knuckles_InitPunch
.L5:
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	jmp	Player_Cream_InitStepAttack
	.p2align 4,,10
	.p2align 3
.L14:
	jmp	Player_Knuckles_InitSpiralAttack
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_Player
	.def	TaskDestructor_Player;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Player
TaskDestructor_Player:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	cmp	BYTE PTR gPlayer[rip+104], 0
	mov	QWORD PTR gPlayer[rip+152], 0
	jne	.L19
	movzx	eax, BYTE PTR gPlayer[rip+141]
	sub	eax, 1
	cmp	al, 1
	jbe	.L20
.L16:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rax, QWORD PTR gPlayer[rip+160]
	mov	rcx, QWORD PTR 24[rax]
	call	VramFree
	movzx	eax, BYTE PTR gPlayer[rip+141]
	sub	eax, 1
	cmp	al, 1
	ja	.L16
.L20:
	mov	rax, QWORD PTR gPlayer[rip+168]
	mov	rcx, QWORD PTR 24[rax]
	add	rsp, 40
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	AllocateCharacterStageGfx
	.def	AllocateCharacterStageGfx;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateCharacterStageGfx
AllocateCharacterStageGfx:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movsx	esi, BYTE PTR 104[rcx]
	mov	rdi, rcx
	mov	rbx, rdx
	test	sil, sil
	jne	.L26
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 65536
.L22:
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, WORD PTR 112[rdi]
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, 4351
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 34[rbx], ax
	movzx	eax, WORD PTR 114[rdi]
	mov	BYTE PTR 64[rbx], al
	mov	eax, DWORD PTR 12[rdi]
	sar	eax, 8
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 16[rdi]
	mov	WORD PTR 60[rbx], cx
	sar	eax, 8
	mov	WORD PTR 65[rbx], r8w
	mov	WORD PTR 56[rbx], ax
	movsx	ax, sil
	add	eax, 16
	sal	eax, 6
	mov	WORD PTR 58[rbx], ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L25
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 794624
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
.L23:
	or	esi, edx
	mov	BYTE PTR 69[rbx], al
	xor	eax, eax
	or	esi, 32
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], esi
	mov	DWORD PTR 80[rbx], -1
	mov	WORD PTR [rbx], ax
	mov	QWORD PTR 2[rbx], 16777472
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	mov	edx, 8192
	xor	eax, eax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L26:
	mov	ecx, 64
	call	VramMalloc
	jmp	.L22
	.seh_endproc
	.p2align 4
	.globl	AllocateCharacterMidAirGfx
	.def	AllocateCharacterMidAirGfx;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateCharacterMidAirGfx
AllocateCharacterMidAirGfx:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movsx	eax, BYTE PTR 141[rcx]
	mov	rsi, rcx
	mov	rbx, rdx
	cmp	eax, 1
	je	.L33
	cmp	eax, 2
	je	.L34
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	mov	ecx, 16
	call	VramMalloc
	mov	edx, 186
.L29:
	mov	WORD PTR 34[rbx], dx
	mov	edx, DWORD PTR 12[rsi]
	xor	ecx, ecx
	mov	r8d, -255
	mov	QWORD PTR 24[rbx], rax
	mov	eax, DWORD PTR 16[rsi]
	sar	edx, 8
	mov	WORD PTR 32[rbx], cx
	mov	WORD PTR 54[rbx], dx
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	sar	eax, 8
	mov	WORD PTR 56[rbx], ax
	xor	eax, eax
	cmp	BYTE PTR [rdx], 2
	mov	DWORD PTR 58[rbx], 1088
	mov	WORD PTR 64[rbx], r8w
	mov	BYTE PTR 66[rbx], 16
	jbe	.L31
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
.L31:
	mov	BYTE PTR 69[rbx], al
	xor	eax, eax
	mov	DWORD PTR 48[rbx], 270372
	mov	WORD PTR [rbx], ax
	mov	QWORD PTR 2[rbx], 16777472
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	mov	ecx, 16
	call	VramMalloc
	mov	edx, 95
	jmp	.L29
	.seh_endproc
	.p2align 4
	.globl	SetStageSpawnPos
	.def	SetStageSpawnPos;	.scl	2;	.type	32;	.endef
	.seh_proc	SetStageSpawnPos
SetStageSpawnPos:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	mov	BYTE PTR 104[r9], r8b
	mov	BYTE PTR 141[r9], cl
	je	.L36
	mov	rax, QWORD PTR .refptr.gSpawnPositions[rip]
	mov	edx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
.L37:
	mov	DWORD PTR 124[r9], eax
	lea	rcx, gPlayerBodyPSI[rip]
	lea	rax, gPlayerLimbsPSI[rip]
	movq	xmm0, rcx
	movq	xmm1, rax
	mov	BYTE PTR 192[r9], 0
	mov	DWORD PTR 128[r9], 0
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 160[r9], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	mov	QWORD PTR 12[r9], -1
	shr	al, 4
	and	eax, 3
	lea	eax, [rax+rax*4]
	sal	eax, 2
	neg	eax
	add	ax, 360
	movzx	eax, ax
	or	eax, 11599872
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	InitializePlayer
	.def	InitializePlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializePlayer
InitializePlayer:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rsi], 5
	mov	rbx, rcx
	je	.L55
.L39:
	movsx	eax, WORD PTR 124[rbx]
	sal	eax, 8
.L40:
	mov	DWORD PTR 12[rbx], eax
	movsx	eax, WORD PTR 126[rbx]
	xor	r9d, r9d
	mov	ecx, 256
	mov	r8d, 15390
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	r10d, 26624
	mov	WORD PTR 59[rbx], cx
	sal	eax, 8
	mov	WORD PTR 142[rbx], r8w
	mov	DWORD PTR 16[rbx], eax
	lea	rax, Player_TouchGround[rip]
	mov	QWORD PTR [rbx], rax
	movzx	eax, WORD PTR [rdx]
	or	ax, WORD PTR 2[rdx]
	or	ax, WORD PTR 4[rdx]
	mov	WORD PTR 96[rbx], r9w
	movd	xmm1, eax
	mov	WORD PTR 121[rbx], r10w
	movabs	rax, 1010495166391255040
	mov	QWORD PTR 20[rbx], rax
	pshuflw	xmm0, xmm1, 0
	movabs	rax, 72058693549555712
	mov	QWORD PTR 132[rbx], rax
	movabs	rax, -1099511627776
	mov	QWORD PTR 105[rbx], rax
	movd	DWORD PTR 100[rbx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	mov	QWORD PTR 64[rbx], 0
	mov	DWORD PTR 36[rbx], 2097152
	mov	QWORD PTR 40[rbx], 30720
	mov	QWORD PTR 48[rbx], 0
	mov	BYTE PTR 140[rbx], 0
	mov	BYTE PTR 144[rbx], 10
	mov	BYTE PTR 98[rbx], 0
	mov	QWORD PTR 113[rbx], 16777215
	mov	BYTE PTR 123[rbx], 1
	mov	BYTE PTR 58[rbx], 0
	movups	XMMWORD PTR 72[rbx], xmm0
	call	sub_8015750
	call	sub_801561C
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	eax, 4
	cmp	dx, 149
	ja	.L41
	mov	eax, 3
	cmp	dx, 99
	jbe	.L56
.L41:
	pxor	xmm0, xmm0
	cmp	BYTE PTR 104[rbx], 0
	mov	WORD PTR 90[rbx], ax
	movups	XMMWORD PTR 176[rbx], xmm0
	mov	BYTE PTR 176[rbx], 127
	jne	.L42
	cmp	BYTE PTR [rsi], 2
	jbe	.L57
.L42:
	cmp	BYTE PTR 141[rbx], 4
	ja	.L44
	movzx	eax, BYTE PTR 141[rbx]
	lea	rdx, .L46[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L46:
	.long	.L50-.L46
	.long	.L49-.L46
	.long	.L48-.L46
	.long	.L47-.L46
	.long	.L45-.L46
	.text
	.p2align 4,,10
	.p2align 3
.L45:
	mov	BYTE PTR 196[rbx], 0
.L44:
	mov	rax, QWORD PTR .refptr.gShouldSpawnMPAttackEffect[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMPAttackEffect2Regs[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gShouldSpawnMPAttack2Effect[rip]
	mov	BYTE PTR [rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	cmp	DWORD PTR [rax], 35999
	jbe	.L43
	mov	rdx, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 128[rbx], 0
	mov	DWORD PTR [rdx], 0
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L56:
	mov	eax, 2
	cmp	dx, 49
	ja	.L41
	xor	eax, eax
	cmp	dx, 10
	seta	al
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L55:
	mov	edx, DWORD PTR 12[rcx]
	and	edx, DWORD PTR 16[rcx]
	mov	eax, 117760
	cmp	edx, -1
	jne	.L40
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L47:
	xor	eax, eax
	mov	BYTE PTR 196[rbx], 0
	mov	WORD PTR 197[rbx], ax
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L50:
	mov	BYTE PTR 196[rbx], 0
	mov	DWORD PTR 198[rbx], 0
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L49:
	mov	DWORD PTR 196[rbx], 0
	mov	BYTE PTR 200[rbx], 0
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L48:
	mov	DWORD PTR 200[rbx], 0
	xor	edx, edx
	mov	WORD PTR 196[rbx], dx
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L43:
	mov	edx, DWORD PTR 128[rbx]
	mov	rcx, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR [rcx], edx
	jmp	.L42
	.seh_endproc
	.p2align 4
	.globl	CreatePlayer
	.def	CreatePlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreatePlayer
CreatePlayer:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_Player[rip]
	xor	r9d, r9d
	mov	edx, 8
	lea	rcx, Task_PlayerMain[rip]
	movzx	esi, BYTE PTR 104[r8]
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, r8
	mov	r8d, 12288
	call	TaskCreate
	mov	QWORD PTR 152[rbx], rax
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR [rax], sil
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 2
	jbe	.L59
	cmp	al, 5
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	je	.L60
	mov	ecx, 1
	mov	WORD PTR [rax], cx
.L59:
	mov	rcx, rbx
	call	InitializePlayer
	lea	rax, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rax
	call	CreateBrakingDustEffectRelatedTask
	call	InitPlayerHitRingsScatter
	mov	rsi, QWORD PTR .refptr.gInputRecorder[rip]
	movzx	eax, BYTE PTR 8[rsi]
	cmp	al, 1
	je	.L63
	cmp	al, 2
	je	.L64
.L62:
	mov	rax, QWORD PTR .refptr.gStageGoalX[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gWorldSpeedY[rip]
	mov	DWORD PTR [rax], 0
	call	InitNewInputCounters
	mov	rdx, QWORD PTR 160[rbx]
	mov	rcx, rbx
	call	AllocateCharacterStageGfx
	mov	rdx, QWORD PTR 168[rbx]
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	AllocateCharacterMidAirGfx
	.p2align 4,,10
	.p2align 3
.L63:
	call	InputRecorderLoadTape
	mov	BYTE PTR 8[rsi], 1
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L60:
	xor	edx, edx
	mov	WORD PTR [rax], dx
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L64:
	call	InputRecorderLoadTape
	mov	BYTE PTR 8[rsi], 2
	jmp	.L62
	.seh_endproc
	.p2align 4
	.globl	Task_PlayerHandleDeath
	.def	Task_PlayerHandleDeath;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_PlayerHandleDeath
Task_PlayerHandleDeath:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 4[rdx]
	test	eax, eax
	jne	.L66
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rsi]
	cmp	al, 2
	jbe	.L80
	xor	edx, edx
	cmp	al, 3
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	lea	rcx, gPlayer[rip]
	sete	dl
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	mov	BYTE PTR [rax], 0
	call	InitializePlayer
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	edx, 256
	movq	xmm0, QWORD PTR gPlayer[rip+12]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	movq	xmm1, QWORD PTR 24[rsi]
	psrad	xmm0, 8
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC7[rip]
	paddd	xmm0, xmm1
	movq	QWORD PTR [rsi], xmm0
	call	m4aMPlayTempoControl
	mov	rdx, QWORD PTR gPlayer[rip+160]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	DWORD PTR gPlayer[rip+36], 0
	and	WORD PTR [rax], -129
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR gPlayer[rip+168]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	WORD PTR 80[rsi], -4
	cmp	BYTE PTR gPlayer[rip+141], 1
	je	.L81
.L72:
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_PlayerMain[rip]
	mov	QWORD PTR 40[rax], rbx
	lea	rax, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	sub	eax, 1
	mov	DWORD PTR 4[rdx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 5[rax], 0
	jne	.L68
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	eax, DWORD PTR [rax]
	cmp	eax, 36000
	ja	.L69
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], 4
	je	.L71
	test	eax, eax
	je	.L69
.L71:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	xor	edx, edx
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	mov	BYTE PTR [rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	HandleLifeLost
	.p2align 4,,10
	.p2align 3
.L68:
	movzx	eax, BYTE PTR [rsi]
	sub	eax, 1
	cmp	al, 1
	ja	.L71
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	cmp	DWORD PTR [rax], 36000
	jbe	.L71
.L69:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	HandleDeath
	.p2align 4,,10
	.p2align 3
.L81:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L72
	mov	rdx, QWORD PTR gPlayer[rip+12]
	mov	QWORD PTR [rax], rdx
	jmp	.L72
	.seh_endproc
	.p2align 4
	.globl	Player_TransitionCancelFlyingAndBoost
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TransitionCancelFlyingAndBoost
Player_TransitionCancelFlyingAndBoost:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	rbx, rcx
	test	eax, 131072
	jne	.L90
.L83:
	and	eax, -823060273
	xor	edx, edx
	mov	BYTE PTR 105[rbx], 0
	mov	DWORD PTR 36[rbx], eax
	xor	eax, eax
	mov	WORD PTR 106[rbx], ax
	movzx	eax, BYTE PTR 141[rbx]
	mov	WORD PTR 120[rbx], dx
	cmp	al, 2
	je	.L91
.L84:
	cmp	al, 1
	je	.L92
.L85:
	test	al, al
	jne	.L82
	and	DWORD PTR 36[rbx], -33554433
.L82:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	mov	ecx, 281
	call	m4aSongNumStop
	mov	eax, DWORD PTR 36[rbx]
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L92:
	mov	ecx, 227
	call	m4aSongNumStop
	movzx	eax, BYTE PTR 141[rbx]
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L91:
	mov	ecx, 120
	call	m4aSongNumStop
	movzx	eax, BYTE PTR 141[rbx]
	jmp	.L84
	.seh_endproc
	.p2align 4
	.globl	sub_802195C
	.def	sub_802195C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802195C
sub_802195C:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	test	rdx, rdx
	mov	rdi, rdx
	lea	rax, 57[rsp]
	mov	rbx, rcx
	cmove	rdi, rax
	mov	rsi, r8
	test	r8, r8
	mov	ecx, DWORD PTR 12[rcx]
	lea	rax, 60[rsp]
	mov	edx, DWORD PTR 16[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	cmove	rsi, rax
	movsx	eax, BYTE PTR 26[rbx]
	sar	ecx, 8
	sar	edx, 8
	add	eax, 2
	sub	ecx, eax
	movsx	eax, BYTE PTR 27[rbx]
	sub	edx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L96
	or	r8d, -128
.L96:
	mov	r12, QWORD PTR .refptr.sub_801ED24[rip]
	lea	rax, 58[rsp]
	movzx	r8d, r8b
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], r12
	call	sub_801E4E4
	mov	ecx, DWORD PTR 12[rbx]
	mov	edx, DWORD PTR 16[rbx]
	mov	ebp, eax
	movsx	eax, BYTE PTR 26[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	sar	edx, 8
	add	eax, 2
	sub	ecx, eax
	movsx	eax, BYTE PTR 27[rbx]
	add	edx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L97
	or	r8d, -128
.L97:
	lea	rax, 59[rsp]
	mov	QWORD PTR 40[rsp], r12
	mov	r9d, -8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	ebp, eax
	jge	.L98
	movzx	edx, BYTE PTR 58[rsp]
.L99:
	mov	BYTE PTR [rdi], dl
	mov	DWORD PTR [rsi], eax
	mov	eax, ebp
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L98:
	mov	ecx, ebp
	movzx	edx, BYTE PTR 59[rsp]
	mov	ebp, eax
	mov	eax, ecx
	jmp	.L99
	.seh_endproc
	.p2align 4
	.globl	sub_8021A34
	.def	sub_8021A34;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021A34
sub_8021A34:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	test	rdx, rdx
	mov	rdi, rdx
	lea	rax, 57[rsp]
	mov	rsi, r8
	cmove	rdi, rax
	test	r8, r8
	lea	rax, 60[rsp]
	movsx	edx, BYTE PTR 26[rcx]
	cmove	rsi, rax
	mov	eax, DWORD PTR 12[rcx]
	mov	rbx, rcx
	movzx	r8d, BYTE PTR 60[rbx]
	sar	eax, 8
	lea	ecx, 2[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	movsx	eax, BYTE PTR 27[rbx]
	sar	edx, 8
	sub	edx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L105
	or	r8d, -128
.L105:
	mov	r12, QWORD PTR .refptr.sub_801ED24[rip]
	lea	rax, 58[rsp]
	movzx	r8d, r8b
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], r12
	call	sub_801E4E4
	movsx	edx, BYTE PTR 26[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	mov	ebp, eax
	mov	eax, DWORD PTR 12[rbx]
	sar	eax, 8
	lea	ecx, 2[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	movsx	eax, BYTE PTR 27[rbx]
	sar	edx, 8
	add	edx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L106
	or	r8d, -128
.L106:
	lea	rax, 59[rsp]
	mov	QWORD PTR 40[rsp], r12
	mov	r9d, 8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	ebp, eax
	jge	.L107
	movzx	edx, BYTE PTR 58[rsp]
.L108:
	mov	BYTE PTR [rdi], dl
	mov	DWORD PTR [rsi], eax
	mov	eax, ebp
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	mov	ecx, ebp
	movzx	edx, BYTE PTR 59[rsp]
	mov	ebp, eax
	mov	eax, ecx
	jmp	.L108
	.seh_endproc
	.p2align 4
	.globl	sub_8021B08
	.def	sub_8021B08;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021B08
sub_8021B08:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	test	rdx, rdx
	mov	rdi, rdx
	lea	rax, 57[rsp]
	mov	rbx, rcx
	cmove	rdi, rax
	mov	rsi, r8
	test	r8, r8
	mov	ecx, DWORD PTR 16[rcx]
	lea	rax, 60[rsp]
	mov	edx, DWORD PTR 12[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	cmove	rsi, rax
	movsx	eax, BYTE PTR 27[rbx]
	sar	ecx, 8
	sar	edx, 8
	sub	ecx, eax
	movsx	eax, BYTE PTR 26[rbx]
	add	eax, 2
	sub	edx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L114
	or	r8d, -128
.L114:
	mov	r12, QWORD PTR .refptr.sub_801EE64[rip]
	lea	rax, 58[rsp]
	movzx	r8d, r8b
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], r12
	call	sub_801E4E4
	mov	ecx, DWORD PTR 16[rbx]
	movsx	edx, BYTE PTR 26[rbx]
	mov	ebp, eax
	movsx	eax, BYTE PTR 27[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	sub	ecx, eax
	mov	eax, DWORD PTR 12[rbx]
	sar	eax, 8
	cmp	WORD PTR 22[rbx], 767
	lea	edx, 2[rax+rdx]
	jg	.L115
	or	r8d, -128
.L115:
	lea	rax, 59[rsp]
	mov	QWORD PTR 40[rsp], r12
	mov	r9d, -8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	ebp, eax
	jge	.L116
	movzx	edx, BYTE PTR 58[rsp]
.L117:
	mov	BYTE PTR [rdi], dl
	mov	DWORD PTR [rsi], eax
	mov	eax, ebp
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	mov	ecx, ebp
	movzx	edx, BYTE PTR 59[rsp]
	mov	ebp, eax
	mov	eax, ecx
	jmp	.L117
	.seh_endproc
	.p2align 4
	.globl	sub_8022318
	.def	sub_8022318;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022318
sub_8022318:
	.seh_endprologue
	mov	edx, DWORD PTR 36[rcx]
	test	dl, 4
	jne	.L121
	and	edx, -307
	mov	r10d, 3590
	cmp	WORD PTR 108[rcx], 91
	mov	BYTE PTR 41[rcx], 120
	mov	WORD PTR 26[rcx], r10w
	mov	DWORD PTR 36[rcx], edx
	mov	BYTE PTR 140[rcx], 0
	mov	BYTE PTR 105[rcx], 0
	jle	.L120
	xor	eax, eax
	mov	WORD PTR 108[rcx], ax
.L120:
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	xor	r8d, r8d
	mov	eax, 14
	mov	BYTE PTR 140[rcx], 0
	mov	WORD PTR 108[rcx], r8w
	movsx	r8d, BYTE PTR 27[rcx]
	mov	BYTE PTR 41[rcx], 120
	lea	r9d, -14[r8]
	sub	eax, r8d
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 105[rcx], 0
	test	BYTE PTR [r8], -128
	movzx	r8d, BYTE PTR 40[rcx]
	cmove	eax, r9d
	add	r8d, 64
	sal	r8d, 24
	mov	r9d, eax
	neg	r9d
	test	r8d, r8d
	cmovle	eax, r9d
	mov	r9d, 3590
	and	edx, -311
	mov	WORD PTR 26[rcx], r9w
	sal	eax, 8
	add	DWORD PTR 16[rcx], eax
	mov	DWORD PTR 36[rcx], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80228C0
	.def	sub_80228C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80228C0
sub_80228C0:
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
	mov	r12, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	edi, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rcx]
	mov	ebp, DWORD PTR 16[rcx]
	movzx	r13d, BYTE PTR 60[rcx]
	sar	edi, 8
	add	eax, 2
	mov	edx, edi
	mov	r14d, ebp
	mov	r8d, r13d
	mov	rbx, rcx
	sub	edx, eax
	movsx	ecx, BYTE PTR 27[rcx]
	mov	QWORD PTR 40[rsp], r12
	lea	rax, 44[rbx]
	sar	r14d, 8
	mov	QWORD PTR 32[rsp], rax
	add	ecx, r14d
	call	sub_801E4E4
	movsx	ecx, BYTE PTR 27[rbx]
	mov	r9d, 8
	mov	r8d, r13d
	mov	esi, eax
	movsx	eax, BYTE PTR 26[rbx]
	mov	QWORD PTR 40[rsp], r12
	add	ecx, r14d
	lea	edx, 2[rdi+rax]
	lea	rax, 45[rbx]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	esi, eax
	mov	edx, eax
	cmovle	edx, esi
	test	edx, edx
	je	.L128
	js	.L144
	movzx	r8d, WORD PTR 20[rbx]
	mov	ecx, r8d
	neg	cx
	cmovs	ecx, r8d
	mov	r8d, 11
	movzx	ecx, ch
	add	ecx, 3
	cmp	ecx, r8d
	cmovg	ecx, r8d
	cmp	ecx, edx
	jl	.L134
	sal	edx, 8
	add	ebp, edx
	cmp	esi, eax
	jl	.L141
.L136:
	movzx	eax, BYTE PTR 45[rbx]
.L133:
	mov	DWORD PTR 16[rbx], ebp
	test	al, 1
	jne	.L127
	mov	BYTE PTR 40[rbx], al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L127
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 64
	sal	eax, 24
	neg	eax
	mov	edx, eax
	shr	edx, 24
	sub	edx, 64
	mov	BYTE PTR 40[rbx], dl
.L127:
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
.L128:
	cmp	esi, eax
	jge	.L136
.L141:
	movzx	eax, BYTE PTR 44[rbx]
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L144:
	cmp	edx, -11
	jl	.L127
	sal	edx, 8
	add	ebp, edx
	cmp	esi, eax
	jge	.L136
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L134:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -33
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80229EC
	.def	sub_80229EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80229EC
sub_80229EC:
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
	mov	r13, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, -8
	mov	r12d, DWORD PTR 16[rcx]
	mov	esi, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rcx]
	movzx	r14d, BYTE PTR 60[rcx]
	sar	esi, 8
	mov	ebp, r12d
	sar	ebp, 8
	lea	edx, 2[rsi+rax]
	movsx	eax, BYTE PTR 27[rcx]
	mov	r8d, r14d
	mov	rbx, rcx
	mov	ecx, ebp
	mov	QWORD PTR 40[rsp], r13
	sub	ecx, eax
	lea	rax, 44[rbx]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	lea	edx, -2[rsi]
	mov	ecx, ebp
	mov	r9d, -8
	mov	edi, eax
	movsx	eax, BYTE PTR 26[rbx]
	mov	r8d, r14d
	sub	edx, eax
	movsx	eax, BYTE PTR 27[rbx]
	mov	QWORD PTR 40[rsp], r13
	sub	ecx, eax
	lea	rax, 45[rbx]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	edi, eax
	mov	edx, eax
	cmovle	edx, edi
	test	edx, edx
	je	.L146
	js	.L162
	movzx	r8d, WORD PTR 20[rbx]
	mov	ecx, r8d
	neg	cx
	cmovs	ecx, r8d
	mov	r8d, 11
	movzx	ecx, ch
	add	ecx, 3
	cmp	ecx, r8d
	cmovg	ecx, r8d
	cmp	ecx, edx
	jl	.L152
	sal	edx, 8
	sub	r12d, edx
	cmp	edi, eax
	jl	.L159
.L154:
	movzx	eax, BYTE PTR 45[rbx]
.L151:
	mov	DWORD PTR 16[rbx], r12d
	test	al, 1
	jne	.L145
	mov	BYTE PTR 40[rbx], al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L145
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 64
	sal	eax, 24
	neg	eax
	mov	edx, eax
	shr	edx, 24
	sub	edx, 64
	mov	BYTE PTR 40[rbx], dl
.L145:
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
.L146:
	cmp	edi, eax
	jge	.L154
.L159:
	movzx	eax, BYTE PTR 44[rbx]
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L162:
	cmp	edx, -11
	jl	.L145
	sal	edx, 8
	sub	r12d, edx
	cmp	edi, eax
	jge	.L154
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L152:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -33
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8022B18
	.def	sub_8022B18;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022B18
sub_8022B18:
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
	mov	r14, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	ebp, DWORD PTR 16[rcx]
	mov	r12d, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rcx]
	movzx	r13d, BYTE PTR 60[rcx]
	sar	ebp, 8
	mov	edi, r12d
	add	eax, 2
	mov	edx, ebp
	sar	edi, 8
	mov	r8d, r13d
	sub	edx, eax
	movsx	eax, BYTE PTR 27[rcx]
	mov	rbx, rcx
	mov	ecx, edi
	mov	QWORD PTR 40[rsp], r14
	sub	ecx, eax
	lea	rax, 44[rbx]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	mov	r9d, -8
	mov	r8d, r13d
	mov	esi, eax
	movsx	eax, BYTE PTR 26[rbx]
	lea	edx, 2[rbp+rax]
	movsx	eax, BYTE PTR 27[rbx]
	mov	QWORD PTR 40[rsp], r14
	sub	edi, eax
	lea	rax, 45[rbx]
	mov	QWORD PTR 32[rsp], rax
	mov	ecx, edi
	call	sub_801E4E4
	cmp	esi, eax
	mov	edx, eax
	cmovle	edx, esi
	test	edx, edx
	je	.L164
	js	.L180
	movzx	r8d, WORD PTR 22[rbx]
	mov	ecx, r8d
	neg	cx
	cmovs	ecx, r8d
	mov	r8d, 11
	movzx	ecx, ch
	add	ecx, 3
	cmp	ecx, r8d
	cmovg	ecx, r8d
	cmp	ecx, edx
	jl	.L170
	sal	edx, 8
	sub	r12d, edx
	cmp	esi, eax
	jl	.L177
.L172:
	movzx	eax, BYTE PTR 45[rbx]
.L169:
	mov	DWORD PTR 12[rbx], r12d
	test	al, 1
	jne	.L163
	mov	BYTE PTR 40[rbx], al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L163
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 64
	sal	eax, 24
	neg	eax
	mov	edx, eax
	shr	edx, 24
	sub	edx, 64
	mov	BYTE PTR 40[rbx], dl
.L163:
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
.L164:
	cmp	esi, eax
	jge	.L172
.L177:
	movzx	eax, BYTE PTR 44[rbx]
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L180:
	cmp	edx, -11
	jl	.L163
	sal	edx, 8
	sub	r12d, edx
	cmp	esi, eax
	jge	.L172
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L170:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -33
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8022C44
	.def	sub_8022C44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022C44
sub_8022C44:
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
	mov	r12, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	mov	esi, DWORD PTR 16[rcx]
	movsx	eax, BYTE PTR 26[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	movzx	r13d, BYTE PTR 60[rcx]
	sar	esi, 8
	lea	edx, 2[rsi+rax]
	mov	r14d, ebp
	mov	r8d, r13d
	mov	rbx, rcx
	movsx	ecx, BYTE PTR 27[rcx]
	mov	QWORD PTR 40[rsp], r12
	sar	r14d, 8
	lea	rax, 44[rbx]
	mov	QWORD PTR 32[rsp], rax
	add	ecx, r14d
	call	sub_801E4E4
	lea	edx, -2[rsi]
	movsx	ecx, BYTE PTR 27[rbx]
	mov	r8d, r13d
	mov	edi, eax
	movsx	eax, BYTE PTR 26[rbx]
	mov	QWORD PTR 40[rsp], r12
	mov	r9d, 8
	add	ecx, r14d
	sub	edx, eax
	lea	rax, 45[rbx]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	edi, eax
	mov	edx, eax
	cmovle	edx, edi
	test	edx, edx
	je	.L182
	js	.L198
	movzx	r8d, WORD PTR 22[rbx]
	mov	ecx, r8d
	neg	cx
	cmovs	ecx, r8d
	mov	r8d, 11
	movzx	ecx, ch
	add	ecx, 3
	cmp	ecx, r8d
	cmovg	ecx, r8d
	cmp	ecx, edx
	jl	.L188
	sal	edx, 8
	add	ebp, edx
	cmp	edi, eax
	jl	.L195
.L190:
	movzx	eax, BYTE PTR 45[rbx]
.L187:
	mov	DWORD PTR 12[rbx], ebp
	test	al, 1
	jne	.L181
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 40[rbx], al
	test	BYTE PTR [rdx], -128
	je	.L181
	mov	edx, -128
	sub	edx, eax
	mov	BYTE PTR 40[rbx], dl
.L181:
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
.L182:
	cmp	edi, eax
	jge	.L190
.L195:
	movzx	eax, BYTE PTR 44[rbx]
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L198:
	cmp	edx, -11
	jl	.L181
	sal	edx, 8
	add	ebp, edx
	cmp	edi, eax
	jge	.L190
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L188:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -33
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8022D6C
	.def	sub_8022D6C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022D6C
sub_8022D6C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	rbx, rcx
	test	al, 8
	jne	.L245
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L202
	mov	rdx, QWORD PTR .refptr.gWater[rip]
	cmp	BYTE PTR [rdx], 1
	je	.L246
.L202:
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, BYTE PTR 40[rbx]
	test	BYTE PTR [rdx], -128
	je	.L209
	mov	edx, -128
	sub	edx, eax
	cmp	dl, -31
	jl	.L210
	test	dl, dl
	jle	.L211
	mov	edx, -97
	sub	edx, eax
	mov	eax, edx
	shr	al, 6
	cmp	al, 2
	je	.L212
.L242:
	cmp	al, 1
	jne	.L211
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8022B18
	.p2align 4,,10
	.p2align 3
.L209:
	cmp	al, -31
	jl	.L216
	test	al, al
	jle	.L211
	add	eax, 31
	shr	al, 6
	cmp	al, 2
	jne	.L242
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L245:
	xor	eax, eax
	mov	WORD PTR 44[rcx], ax
.L199:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L210:
	mov	edx, -97
	sub	edx, eax
	mov	eax, edx
	shr	al, 6
	cmp	al, 2
	je	.L212
.L214:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8022C44
	.p2align 4,,10
	.p2align 3
.L216:
	add	eax, 31
	shr	al, 6
	cmp	al, 2
	jne	.L214
.L212:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_80229EC
	.p2align 4,,10
	.p2align 3
.L246:
	movsx	esi, WORD PTR 17[rcx]
	movzx	edx, WORD PTR 4[rdx]
	movsx	cx, BYTE PTR 27[rcx]
	and	esi, -4
	sub	edx, ecx
	and	edx, -4
	movsx	edx, dx
	cmp	edx, esi
	je	.L247
.L203:
	test	eax, 131072
	je	.L202
	and	eax, -131073
	mov	ecx, 281
	mov	DWORD PTR 36[rbx], eax
	call	m4aSongNumStop
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L211:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_80228C0
	.p2align 4,,10
	.p2align 3
.L247:
	cmp	WORD PTR 22[rbx], 0
	js	.L203
	movzx	ecx, BYTE PTR 40[rbx]
	lea	edx, 24[rcx]
	cmp	dl, 48
	ja	.L203
	test	al, 2
	jne	.L203
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 1535
	jbe	.L203
	mov	rcx, rbx
	call	sub_80228C0
	mov	eax, esi
	sal	eax, 8
	cmp	DWORD PTR 16[rbx], eax
	jl	.L204
	mov	eax, DWORD PTR 36[rbx]
	test	eax, 131072
	jne	.L206
	or	eax, 131072
	mov	DWORD PTR 36[rbx], eax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L248
.L206:
	mov	ecx, 281
	sal	esi, 8
	call	m4aSongNumStartOrContinue
	and	DWORD PTR 36[rbx], -3
	mov	DWORD PTR 16[rbx], esi
	mov	BYTE PTR 40[rbx], 0
	jmp	.L199
.L204:
	test	BYTE PTR 38[rbx], 2
	jne	.L249
.L208:
	and	DWORD PTR 36[rbx], -131073
	jmp	.L199
.L249:
	mov	ecx, 281
	call	m4aSongNumStop
	jmp	.L208
.L248:
	call	CreateRunOnWaterEffect
	jmp	.L206
	.seh_endproc
	.p2align 4
	.globl	sub_802302C
	.def	sub_802302C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802302C
sub_802302C:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r10d, DWORD PTR 12[rdx]
	mov	r11d, DWORD PTR 16[rdx]
	sar	r10d, 8
	sar	r11d, 8
	mov	rax, rdx
	movzx	edx, cl
	movsx	r8d, cl
	mov	dh, cl
	mov	WORD PTR 44[rax], dx
	mov	edx, ecx
	sal	edx, 24
	add	edx, 536870912
	test	edx, edx
	jle	.L251
	test	r8d, r8d
	jle	.L265
	add	ecx, 31
	shr	cl, 6
	cmp	cl, 1
	jne	.L265
	movsx	edx, BYTE PTR 26[rax]
	lea	ecx, -2[r10]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	sub	ecx, edx
	mov	rdx, QWORD PTR .refptr.sub_801ED24[rip]
	mov	QWORD PTR 40[rsp], rdx
	movzx	r8d, BYTE PTR 60[rax]
	mov	edx, r11d
	call	sub_801E4E4
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	movzx	r8d, BYTE PTR 60[rax]
	movsx	eax, BYTE PTR 26[rax]
.L252:
	lea	ecx, 2[r11+rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	edx, r10d
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	test	r8d, r8d
	jle	.L256
	movzx	r8d, BYTE PTR 60[rax]
	movsx	eax, BYTE PTR 26[rax]
.L254:
	lea	ecx, -2[r11]
	mov	r9d, -8
	mov	edx, r10d
	mov	QWORD PTR 32[rsp], 0
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L256:
	add	ecx, 31
	movzx	r8d, BYTE PTR 60[rax]
	movsx	eax, BYTE PTR 26[rax]
	shr	cl, 6
	cmp	cl, 2
	je	.L254
	cmp	cl, 3
	jne	.L252
	lea	ecx, 2[r10+rax]
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	mov	edx, r11d
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8023128
	.def	sub_8023128;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8023128
sub_8023128:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 24[rcx]
	mov	rbx, rcx
	test	ax, ax
	je	.L266
	movzx	esi, BYTE PTR 40[rcx]
	sar	ax, 15
	mov	rdx, rcx
	and	eax, -128
	lea	esi, -64[rsi+rax]
	movzx	esi, sil
	mov	ecx, esi
	call	sub_802302C
	sal	eax, 8
	test	eax, eax
	jle	.L276
.L266:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	add	esi, 32
	sar	esi, 6
	and	esi, 3
	cmp	esi, 2
	je	.L271
	cmp	esi, 3
	je	.L272
	cmp	esi, 1
	je	.L273
	xor	r11d, r11d
	add	DWORD PTR 16[rbx], eax
	mov	WORD PTR 22[rbx], r11w
.L274:
	xor	eax, eax
	mov	WORD PTR 106[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	xor	edx, edx
	xor	ecx, ecx
	add	DWORD PTR 12[rbx], eax
	or	DWORD PTR 36[rbx], 32
	mov	WORD PTR 20[rbx], dx
	mov	WORD PTR 24[rbx], cx
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L271:
	xor	r8d, r8d
	sub	DWORD PTR 16[rbx], eax
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 22[rbx], r8w
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L273:
	xor	r9d, r9d
	xor	r10d, r10d
	sub	DWORD PTR 12[rbx], eax
	or	DWORD PTR 36[rbx], 32
	mov	WORD PTR 20[rbx], r9w
	mov	WORD PTR 24[rbx], r10w
	jmp	.L274
	.seh_endproc
	.p2align 4
	.globl	sub_8023260
	.def	sub_8023260;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8023260
sub_8023260:
	.seh_endprologue
	mov	edx, DWORD PTR 72[rcx]
	movsx	r8d, dx
	mov	rax, rcx
	movzx	ecx, WORD PTR 24[rcx]
	cmp	cx, dx
	jle	.L278
	mov	WORD PTR 24[rax], dx
.L279:
	movzx	edx, BYTE PTR 40[rax]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	lea	ecx, 256[0+rdx*4]
	movsx	rdx, ecx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	imul	edx, r8d
	sar	edx, 8
	mov	WORD PTR 20[rax], dx
	test	BYTE PTR 36[rax], 2
	je	.L280
	movzx	r9d, WORD PTR 22[rax]
.L280:
	sub	ecx, 256
	movsx	rcx, ecx
	movzx	edx, WORD PTR [r10+rcx*2]
	sar	dx, 6
	movsx	edx, dx
	imul	edx, r8d
	sar	edx, 8
	add	r9d, edx
	mov	WORD PTR 22[rax], r9w
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	neg	r8d
	mov	r9d, r8d
	movsx	r8d, cx
	cmp	r9d, r8d
	jle	.L279
	neg	edx
	mov	WORD PTR 24[rax], dx
	movsx	r8d, dx
	jmp	.L279
	.seh_endproc
	.p2align 4
	.globl	sub_80232D0
	.def	sub_80232D0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80232D0
sub_80232D0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	cmp	BYTE PTR 104[rcx], 0
	mov	edi, DWORD PTR 12[rcx]
	mov	esi, DWORD PTR 16[rcx]
	mov	rbx, rcx
	jne	.L285
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L286
	cmp	al, 28
	je	.L347
	cmp	al, 29
	je	.L285
.L288:
	test	BYTE PTR gPlayer[rip+39], 8
	je	.L285
	mov	rdx, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rdx], 6
	jbe	.L285
	mov	rcx, QWORD PTR .refptr.gUnknown_080D650C[rip]
	mov	edx, DWORD PTR [rcx+rax*8]
	test	edx, edx
	js	.L290
	sal	edx, 8
	cmp	edx, edi
	jg	.L290
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, DWORD PTR 8[r8]
	test	r9d, r9d
	je	.L290
	test	BYTE PTR 80[r8], 1
	jne	.L290
	mov	rdx, QWORD PTR .refptr.gUnknown_080D661C[rip]
	mov	edx, DWORD PTR [rdx+rax*8]
	add	DWORD PTR [r8], edx
	add	DWORD PTR 32[r8], edx
	mov	r9d, edx
	add	DWORD PTR 16[r8], edx
	mov	rdx, QWORD PTR .refptr.gCheese[rip]
	sal	r9d, 8
	mov	rdx, QWORD PTR [rdx]
	add	edi, r9d
	test	rdx, rdx
	je	.L290
	add	DWORD PTR [rdx], r9d
	.p2align 4,,10
	.p2align 3
.L290:
	mov	edx, DWORD PTR 4[rcx+rax*8]
	test	edx, edx
	js	.L285
	sal	edx, 8
	cmp	edx, esi
	jg	.L285
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR 12[r8]
	test	ecx, ecx
	je	.L285
	test	BYTE PTR 80[r8], 2
	jne	.L285
	mov	rdx, QWORD PTR .refptr.gUnknown_080D661C[rip]
	mov	eax, DWORD PTR 4[rdx+rax*8]
	mov	edx, eax
	sal	eax, 16
	sal	edx, 8
	add	DWORD PTR 4[r8], edx
	add	esi, eax
	add	DWORD PTR 36[r8], edx
	mov	rdx, QWORD PTR .refptr.gCheese[rip]
	mov	rdx, QWORD PTR [rdx]
	test	rdx, rdx
	je	.L285
	add	DWORD PTR 4[rdx], eax
	.p2align 4,,10
	.p2align 3
.L285:
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	and	edx, -2147483520
	cmp	edx, 128
	je	.L284
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	test	eax, eax
	js	.L293
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	ecx, DWORD PTR 16[rbx]
	test	BYTE PTR [rdx], -128
	jne	.L348
	mov	edx, DWORD PTR 44[r8]
	sal	edx, 8
	sub	edx, 1
	cmp	ecx, edx
	jl	.L293
.L346:
	mov	ecx, eax
	and	eax, 64
	mov	esi, edx
	or	cl, -128
	cmp	eax, 1
	sbb	eax, eax
	mov	DWORD PTR 36[rbx], ecx
	and	ax, -576
	sub	ax, 672
	mov	WORD PTR 22[rbx], ax
.L293:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	r9d, BYTE PTR [rax]
	mov	r10d, r9d
	and	r10d, 3
	cmp	r10b, 2
	je	.L299
	cmp	r9b, 28
	je	.L349
	cmp	r9b, 29
	je	.L299
.L301:
	mov	eax, DWORD PTR 48[r8]
	mov	edx, DWORD PTR 40[r8]
	mov	ecx, DWORD PTR 44[r8]
	sal	eax, 8
	sal	edx, 8
	cmp	edi, eax
	jge	.L350
.L303:
	cmp	esi, edx
	jge	.L351
.L316:
	xor	r11d, r11d
	mov	WORD PTR 20[rbx], r11w
.L306:
	mov	DWORD PTR 22[rbx], 0
.L308:
	cmp	r10b, 2
	je	.L309
	cmp	r9b, 28
	je	.L352
	cmp	r9b, 29
	je	.L309
.L311:
	mov	DWORD PTR 12[rbx], eax
	mov	DWORD PTR 16[rbx], edx
.L284:
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L301
	.p2align 4,,10
	.p2align 3
.L299:
	mov	rax, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movzx	ecx, WORD PTR [rax]
	mov	eax, DWORD PTR 48[r8]
	sal	edx, 8
	sal	eax, 8
	cmp	edi, eax
	jl	.L303
.L350:
	mov	eax, DWORD PTR 52[r8]
	sal	eax, 8
	cmp	eax, edi
	jg	.L304
	sub	eax, 1
	cmp	esi, edx
	jl	.L316
	sal	ecx, 8
	lea	edx, -1[rcx]
	cmp	ecx, esi
	jle	.L316
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L352:
	mov	rcx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L311
	.p2align 4,,10
	.p2align 3
.L309:
	mov	ecx, DWORD PTR 16[r8]
	sal	ecx, 8
	lea	r8d, 2047[rcx]
	cmp	r8d, eax
	jl	.L312
	lea	eax, 2048[rcx]
	mov	r9d, 1280
	mov	r10d, 1280
	mov	DWORD PTR 16[rbx], edx
	and	DWORD PTR 36[rbx], -2
	mov	WORD PTR 24[rbx], r9w
	mov	WORD PTR 20[rbx], r10w
	mov	DWORD PTR 12[rbx], eax
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L312:
	add	ecx, 79872
	cmp	ecx, eax
	jge	.L311
	mov	eax, 1280
	mov	r8d, 1280
	mov	DWORD PTR 16[rbx], edx
	mov	WORD PTR 24[rbx], ax
	mov	eax, ecx
	mov	WORD PTR 20[rbx], r8w
	mov	DWORD PTR 12[rbx], eax
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L348:
	mov	edx, DWORD PTR 40[r8]
	sal	edx, 8
	cmp	edx, ecx
	jge	.L346
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L286:
	test	al, 2
	je	.L285
	mov	rdx, QWORD PTR .refptr.gUnknown_080D650C[rip]
	mov	edx, DWORD PTR [rdx+rax*8]
	test	edx, edx
	js	.L285
	sal	edx, 8
	cmp	edx, edi
	jg	.L285
	mov	rdx, QWORD PTR .refptr.gUnknown_080D661C[rip]
	mov	ecx, DWORD PTR [rdx+rax*8]
	movq	xmm6, QWORD PTR [rdx+rax*8]
	mov	edx, DWORD PTR 4[rdx+rax*8]
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	sal	ecx, 8
	mov	rax, QWORD PTR [rax]
	sal	edx, 8
	add	edi, ecx
	add	esi, edx
	test	rax, rax
	je	.L289
	movq	xmm0, QWORD PTR [rax]
	movd	xmm1, ecx
	movd	xmm3, edx
	punpckldq	xmm1, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
.L289:
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	mov	DWORD PTR [rax], ecx
	mov	rax, QWORD PTR .refptr.gWorldSpeedY[rip]
	mov	DWORD PTR [rax], edx
	call	sub_8039F14
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	movq	xmm0, QWORD PTR 32[r8]
	movq	xmm2, QWORD PTR [r8]
	mov	BYTE PTR [rax], 1
	movdqu	xmm1, xmm0
	movq	xmm0, QWORD PTR 16[r8]
	paddd	xmm2, xmm6
	paddd	xmm1, xmm6
	paddd	xmm0, xmm6
	movq	QWORD PTR [r8], xmm2
	movq	QWORD PTR 32[r8], xmm1
	movq	QWORD PTR 16[r8], xmm0
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L351:
	sal	ecx, 8
	lea	edx, -1[rcx]
	cmp	esi, ecx
	jge	.L316
.L315:
	xor	edx, edx
	xor	edi, edi
	mov	WORD PTR 24[rbx], dx
	mov	edx, esi
	mov	WORD PTR 20[rbx], di
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L304:
	mov	eax, edi
	cmp	esi, edx
	jl	.L306
	sal	ecx, 8
	cmp	esi, ecx
	jge	.L317
	mov	edx, esi
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L347:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L285
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L317:
	lea	edx, -1[rcx]
	mov	eax, edi
	jmp	.L306
	.seh_endproc
	.p2align 4
	.globl	Player_Corkscrew
	.def	Player_Corkscrew;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Corkscrew
Player_Corkscrew:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r8d, DWORD PTR 80[rcx]
	mov	rbx, rcx
	mov	ecx, DWORD PTR 72[rcx]
	movzx	eax, WORD PTR 100[rbx]
	movzx	edx, WORD PTR 24[rbx]
	test	al, 32
	je	.L354
	mov	eax, edx
	sub	eax, r8d
	mov	r8d, ecx
	neg	r8d
	movsx	r9d, ax
	cmp	r9d, r8d
	jl	.L365
.L355:
	mov	WORD PTR 24[rbx], ax
	mov	rcx, rbx
	call	sub_80232D0
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L358
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L353:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L354:
	test	al, 16
	je	.L356
	lea	eax, [rdx+r8]
	movsx	r8d, ax
	cmp	r8d, ecx
	jle	.L355
	movsx	eax, dx
	cmp	eax, ecx
	mov	eax, ecx
	cmovge	eax, edx
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L358:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L353
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L353
	or	DWORD PTR 36[rbx], 2
	xor	eax, eax
	mov	edx, 30
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L356:
	lea	ecx, -8[rdx]
	lea	eax, 8[rdx]
	test	dx, dx
	cmovg	eax, ecx
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L365:
	movsx	eax, dx
	neg	ecx
	cmp	r8d, eax
	mov	eax, edx
	cmovl	eax, ecx
	jmp	.L355
	.seh_endproc
	.p2align 4
	.globl	Player_VictoryPose
	.def	Player_VictoryPose;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_VictoryPose
Player_VictoryPose:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 28[rdx]
	mov	rbx, rcx
	cmp	eax, -55
	jl	.L367
	sub	eax, 1
	mov	DWORD PTR 28[rdx], eax
.L367:
	sub	WORD PTR 122[rbx], 1
	jne	.L368
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	je	.L380
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
.L370:
	lea	rax, Player_CameraShift[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L368:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L372
	neg	eax
.L372:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L375
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L366:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L375:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L366
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L366
	or	DWORD PTR 36[rbx], 2
	xor	eax, eax
	mov	edx, 30
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	call	CreateTimeAttackResults
	jmp	.L370
	.seh_endproc
	.p2align 4
	.globl	Player_80279F8
	.def	Player_80279F8;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_80279F8
Player_80279F8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, WORD PTR 24[rcx]
	lea	edx, -128[rax]
	mov	rbx, rcx
	cmp	ax, 1408
	jg	.L383
	cmp	WORD PTR 20[rcx], 1215
	mov	edx, 1280
	jle	.L401
.L383:
	movzx	eax, WORD PTR 122[rbx]
	mov	WORD PTR 24[rbx], dx
	cmp	ax, 32767
	je	.L385
	add	eax, 1
	mov	WORD PTR 122[rbx], ax
	cmp	ax, 120
	je	.L402
	cmp	ax, 180
	jne	.L385
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	je	.L403
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
.L385:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L390
	neg	eax
.L390:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L393
	sub	eax, 1
	mov	ecx, DWORD PTR 36[rbx]
	mov	WORD PTR 46[rbx], ax
.L394:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 28[rdx]
	cmp	eax, -55
	jl	.L395
	sub	eax, 1
	mov	DWORD PTR 28[rdx], eax
.L395:
	and	ecx, 67108864
	jne	.L404
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L393:
	movzx	eax, BYTE PTR 40[rbx]
	mov	ecx, DWORD PTR 36[rbx]
	add	eax, 32
	test	al, -64
	je	.L394
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L394
	xor	r8d, r8d
	or	ecx, 2
	mov	r9d, 30
	mov	WORD PTR 24[rbx], r8w
	mov	DWORD PTR 36[rbx], ecx
	mov	WORD PTR 46[rbx], r9w
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L402:
	mov	r10d, 32
	mov	WORD PTR 108[rbx], r10w
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L401:
	lea	edx, 64[rax]
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L404:
	mov	eax, 16
	mov	edx, 2560
	mov	ecx, 9
	mov	BYTE PTR 98[rbx], 1
	mov	WORD PTR 100[rbx], ax
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 24[rbx], dx
	call	CreateBoostEffectTasks
	lea	rax, Player_8027B98[rip]
	mov	ecx, 273
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L403:
	call	CreateTimeAttackResults
	jmp	.L385
	.seh_endproc
	.p2align 4
	.globl	Player_8027B98
	.def	Player_8027B98;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8027B98
Player_8027B98:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L407
	neg	eax
.L407:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L410
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L411:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	DWORD PTR 8[rax], 56
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L410:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L411
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L411
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L411
	.seh_endproc
	.p2align 4
	.globl	Player_8027C5C
	.def	Player_8027C5C;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8027C5C
Player_8027C5C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 12[rcx]
	sar	eax, 8
	sub	eax, DWORD PTR [rdx]
	mov	edx, 1152
	mov	rbx, rcx
	cmp	eax, 213
	jg	.L416
	mov	edx, 1408
	mov	eax, 1280
	cmove	edx, eax
.L416:
	mov	WORD PTR 24[rbx], dx
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L418
	neg	eax
.L418:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L421
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L415:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L421:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L415
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L415
	or	DWORD PTR 36[rbx], 2
	xor	eax, eax
	mov	edx, 30
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_AirInputControls
	.def	Player_AirInputControls;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_AirInputControls
Player_AirInputControls:
	.seh_endprologue
	movzx	eax, WORD PTR 108[rcx]
	cmp	ax, 20
	je	.L428
	mov	edx, DWORD PTR 36[rcx]
	test	dl, 16
	jne	.L428
	mov	r11d, DWORD PTR 80[rcx]
	movzx	r9d, WORD PTR 100[rcx]
	movzx	r10d, WORD PTR 20[rcx]
	lea	r8d, [r11+r11]
	mov	r11d, DWORD PTR 76[rcx]
	test	r9b, 32
	je	.L430
	cmp	ax, 63
	je	.L431
	test	dh, 32
	jne	.L431
	or	edx, 1
	mov	DWORD PTR 36[rcx], edx
.L431:
	mov	eax, r10d
	mov	edx, r11d
	sub	eax, r8d
	neg	edx
	movsx	r8d, ax
	cmp	r8d, edx
	jge	.L432
	movsx	eax, r10w
	cmp	edx, eax
	jge	.L433
	mov	eax, r11d
	neg	eax
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L430:
	and	r9d, 16
	jne	.L434
.L433:
	mov	eax, r10d
.L432:
	mov	WORD PTR 20[rcx], ax
.L428:
	ret
	.p2align 4,,10
	.p2align 3
.L434:
	cmp	ax, 63
	je	.L435
	test	dh, 32
	jne	.L435
	and	edx, -2
	mov	DWORD PTR 36[rcx], edx
.L435:
	lea	eax, [r10+r8]
	movsx	edx, ax
	cmp	edx, r11d
	jle	.L432
	movsx	eax, r10w
	cmp	eax, r11d
	jge	.L433
	mov	eax, r11d
	jmp	.L432
	.seh_endproc
	.p2align 4
	.globl	sub_80236C8
	.def	sub_80236C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80236C8
sub_80236C8:
	.seh_endprologue
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L445
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L451
	je	.L445
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
.L445:
	ret
	.p2align 4,,10
	.p2align 3
.L451:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8023708
	.def	sub_8023708;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8023708
sub_8023708:
	.seh_endprologue
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L452
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 6
	js	.L458
	je	.L452
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
.L452:
	ret
	.p2align 4,,10
	.p2align 3
.L458:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8023748
	.def	sub_8023748;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8023748
sub_8023748:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 59[rcx]
	mov	rbx, rcx
	test	al, al
	je	.L459
	test	al, 4
	je	.L463
	sub	WORD PTR 52[rcx], 1
	je	.L482
.L463:
	test	al, 16
	je	.L466
.L486:
	sub	WORD PTR 52[rbx], 1
	je	.L483
.L466:
	test	al, 2
	je	.L469
.L487:
	sub	WORD PTR 50[rbx], 1
	jne	.L469
	mov	edx, eax
	and	edx, -3
	mov	BYTE PTR 59[rbx], dl
	test	al, 1
	jne	.L484
	test	al, 8
	jne	.L485
.L472:
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	rax, QWORD PTR 464[rax]
	cmp	QWORD PTR [rdx], rax
	je	.L473
.L481:
	movzx	eax, BYTE PTR 59[rbx]
.L469:
	test	al, 32
	je	.L459
	sub	WORD PTR 56[rbx], 1
	jne	.L459
	and	eax, -33
	mov	BYTE PTR 59[rbx], al
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], 32767
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 63
.L459:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L482:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 256
	call	m4aMPlayTempoControl
	movzx	eax, BYTE PTR 59[rbx]
	and	eax, -5
	mov	BYTE PTR 59[rbx], al
	test	al, 16
	je	.L466
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L483:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 256
	call	m4aMPlayTempoControl
	movzx	eax, BYTE PTR 59[rbx]
	and	eax, -17
	mov	BYTE PTR 59[rbx], al
	test	al, 2
	je	.L469
	jmp	.L487
	.p2align 4,,10
	.p2align 3
.L484:
	movsx	ecx, BYTE PTR gPlayer[rip+104]
	call	CreateItemTask_Shield_Normal
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L485:
	movsx	ecx, BYTE PTR gPlayer[rip+104]
	call	CreateItemTask_Shield_Magnetic
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L473:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStartOrContinue
	jmp	.L481
	.seh_endproc
	.p2align 4
	.globl	Player_HandleWater
	.def	Player_HandleWater;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleWater
Player_HandleWater:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	r8d, eax
	mov	r9d, eax
	and	r8d, -4097
	and	r9d, 64
	mov	DWORD PTR 36[rcx], r8d
	mov	rbx, rcx
	mov	rcx, QWORD PTR .refptr.gWater[rip]
	cmp	BYTE PTR [rcx], 1
	je	.L524
.L489:
	test	r9d, r9d
	jne	.L525
.L510:
	mov	eax, 15390
	mov	WORD PTR 142[rbx], ax
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	rax, QWORD PTR 496[rax]
	cmp	QWORD PTR [rdx], rax
	je	.L526
.L506:
	movzx	eax, BYTE PTR 59[rbx]
	test	al, 4
	je	.L513
	sal	DWORD PTR 80[rbx]
	sal	DWORD PTR 84[rbx]
.L514:
	movzx	eax, BYTE PTR 144[rbx]
	test	al, al
	je	.L488
	sub	eax, 1
	mov	BYTE PTR 144[rbx], al
.L488:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L513:
	test	al, 16
	je	.L514
	movq	xmm0, QWORD PTR 80[rbx]
	sar	DWORD PTR 72[rbx], 2
	psrad	xmm0, 2
	movq	QWORD PTR 80[rbx], xmm0
	jmp	.L514
	.p2align 4,,10
	.p2align 3
.L525:
	and	eax, -4161
	sal	WORD PTR 22[rbx]
	or	ah, 16
	cmp	BYTE PTR 141[rbx], 3
	mov	DWORD PTR 36[rbx], eax
	je	.L527
.L511:
	cmp	BYTE PTR 144[rbx], 0
	jg	.L510
	movsx	edx, WORD PTR 4[rcx]
	mov	ecx, DWORD PTR 12[rbx]
	mov	BYTE PTR 144[rbx], 10
	sar	ecx, 8
	call	CreateWaterfallSurfaceHitEffect
	mov	ecx, 156
	call	m4aSongNumStart
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L524:
	movsx	edx, WORD PTR 4[rcx]
	test	dx, dx
	js	.L489
	mov	r10d, DWORD PTR 16[rbx]
	sar	r10d, 8
	sub	r10d, 3
	cmp	r10d, edx
	jle	.L489
	test	r9d, r9d
	jne	.L491
	or	r8d, 4160
	sar	WORD PTR 20[rbx]
	sar	WORD PTR 22[rbx], 2
	cmp	BYTE PTR 141[rbx], 3
	mov	DWORD PTR 36[rbx], r8d
	je	.L528
.L492:
	cmp	BYTE PTR 144[rbx], 0
	jg	.L491
	mov	ecx, DWORD PTR 12[rbx]
	mov	BYTE PTR 144[rbx], 10
	sar	ecx, 8
	call	CreateWaterfallSurfaceHitEffect
	mov	ecx, 156
	call	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L491:
	movzx	eax, BYTE PTR 143[rbx]
	sub	eax, 1
	mov	BYTE PTR 143[rbx], al
	test	al, al
	jle	.L529
.L494:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 15
	jne	.L506
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	test	ah, 3
	jne	.L506
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	and	eax, 1
	cmp	eax, 1
	sbb	eax, eax
	sub	edx, 1024
	xor	r9d, r9d
	xor	r8d, r8d
	and	eax, 2048
	lea	ecx, -1024[rax+rcx]
	call	SpawnAirBubbles
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L526:
	cmp	BYTE PTR 104[rbx], 0
	jne	.L506
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStartOrContinue
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L527:
	cmp	BYTE PTR 105[rbx], 9
	jne	.L511
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L528:
	cmp	BYTE PTR 105[rbx], 9
	jne	.L492
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L529:
	movzx	eax, BYTE PTR 142[rbx]
	lea	edx, -1[rax]
	mov	BYTE PTR 142[rbx], dl
	cmp	al, 12
	ja	.L495
	lea	rcx, .L497[rip]
	movsx	rax, DWORD PTR [rcx+rax*4]
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L497:
	.long	.L495-.L497
	.long	.L495-.L497
	.long	.L503-.L497
	.long	.L495-.L497
	.long	.L502-.L497
	.long	.L495-.L497
	.long	.L501-.L497
	.long	.L495-.L497
	.long	.L500-.L497
	.long	.L495-.L497
	.long	.L499-.L497
	.long	.L498-.L497
	.long	.L496-.L497
	.text
.L503:
	xor	edx, edx
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	.p2align 4,,10
	.p2align 3
.L495:
	test	dl, dl
	js	.L530
.L516:
	mov	BYTE PTR 143[rbx], 60
	jmp	.L494
.L496:
	mov	edx, 5
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	jmp	.L495
.L498:
	cmp	BYTE PTR 104[rbx], 0
	jne	.L516
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 4[rax], 16
	jmp	.L516
.L499:
	mov	edx, 4
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	jmp	.L495
.L500:
	mov	edx, 3
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	jmp	.L495
.L501:
	mov	edx, 2
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	jmp	.L495
.L502:
	mov	edx, 1
	mov	rcx, rbx
	call	SpawnDrowningCountdownNum
	movzx	edx, BYTE PTR 142[rbx]
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L530:
	xor	edx, edx
	or	DWORD PTR 36[rbx], 128
	mov	eax, DWORD PTR 16[rbx]
	xor	r8d, r8d
	mov	WORD PTR 22[rbx], dx
	mov	ecx, DWORD PTR 12[rbx]
	mov	r9d, 1
	lea	edx, -3072[rax]
	call	SpawnAirBubbles
	mov	rcx, rbx
	call	SpawnBubblesAfterDrowning
	jmp	.L516
	.seh_endproc
	.p2align 4
	.globl	Player_HandleSpriteYOffsetChange
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleSpriteYOffsetChange
Player_HandleSpriteYOffsetChange:
	.seh_endprologue
	movsx	r9d, BYTE PTR 27[rcx]
	cmp	r9d, edx
	je	.L531
	movzx	eax, BYTE PTR 40[rcx]
	mov	r10, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8d, -128
	sub	r8d, eax
	test	BYTE PTR [r10], -128
	cmovne	eax, r8d
	sub	edx, r9d
	sal	edx, 8
	test	al, al
	je	.L534
	add	eax, 31
	shr	al, 6
	cmp	al, 2
	je	.L535
	cmp	al, 3
	je	.L536
	cmp	al, 1
	jne	.L534
	add	DWORD PTR 12[rcx], edx
.L531:
	ret
	.p2align 4,,10
	.p2align 3
.L534:
	sub	DWORD PTR 16[rcx], edx
	ret
	.p2align 4,,10
	.p2align 3
.L536:
	sub	DWORD PTR 12[rcx], edx
	ret
	.p2align 4,,10
	.p2align 3
.L535:
	add	DWORD PTR 16[rcx], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8021BE0
	.def	sub_8021BE0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021BE0
sub_8021BE0:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	test	ah, 2
	jne	.L544
	test	eax, 8388608
	jne	.L545
	lea	rdx, Player_TouchGround[rip]
	and	eax, -19
	mov	QWORD PTR gPlayer[rip], rdx
	mov	DWORD PTR 36[rcx], eax
.L545:
	test	al, 4
	jne	.L551
.L546:
	mov	eax, 3590
	mov	BYTE PTR 140[rcx], 0
	mov	WORD PTR 26[rcx], ax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L544:
	and	eax, -19
	mov	BYTE PTR 140[rcx], 0
	mov	DWORD PTR 36[rcx], eax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	and	eax, -5
	mov	edx, 14
	mov	DWORD PTR 36[rcx], eax
	call	Player_HandleSpriteYOffsetChange
	jmp	.L546
	.seh_endproc
	.p2align 4
	.globl	sub_80231C0
	.def	sub_80231C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80231C0
sub_80231C0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 24[rcx]
	mov	rbx, rcx
	test	ax, ax
	je	.L552
	movzx	esi, BYTE PTR 40[rcx]
	sar	ax, 15
	mov	rdx, rcx
	and	eax, -128
	lea	esi, -64[rsi+rax]
	movzx	esi, sil
	mov	ecx, esi
	call	sub_802302C
	sal	eax, 8
	test	eax, eax
	jle	.L562
.L552:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L562:
	add	esi, 32
	sar	esi, 6
	and	esi, 3
	cmp	esi, 2
	je	.L557
	cmp	esi, 3
	je	.L558
	cmp	esi, 1
	je	.L559
	xor	ecx, ecx
	add	DWORD PTR 16[rbx], eax
	mov	WORD PTR 22[rbx], cx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L558:
	add	DWORD PTR 12[rbx], eax
.L561:
	xor	eax, eax
	and	DWORD PTR 36[rbx], -5
	mov	edx, 14
	mov	rcx, rbx
	mov	WORD PTR 20[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	DWORD PTR 24[rbx], 235274240
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L557:
	xor	edx, edx
	sub	DWORD PTR 16[rbx], eax
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 22[rbx], dx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L559:
	sub	DWORD PTR 12[rbx], eax
	jmp	.L561
	.seh_endproc
	.p2align 4
	.globl	Player_InitCorkscrew
	.def	Player_InitCorkscrew;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitCorkscrew
Player_InitCorkscrew:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	test	r11b, 4
	je	.L564
	cmp	WORD PTR 108[rbx], 4
	je	.L565
.L564:
	mov	eax, 47
	mov	edx, 14
	mov	rcx, rbx
	and	r11d, -5
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
.L565:
	mov	eax, r11d
	mov	BYTE PTR 40[rbx], 0
	or	eax, 1
	cmp	WORD PTR 20[rbx], 0
	jle	.L567
	mov	eax, r11d
	and	eax, -2
.L567:
	mov	DWORD PTR 36[rbx], eax
	mov	rcx, rbx
	lea	rax, Player_Corkscrew[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Corkscrew
	.seh_endproc
	.p2align 4
	.globl	Player_Debug_TestRingScatter
	.def	Player_Debug_TestRingScatter;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Debug_TestRingScatter
Player_Debug_TestRingScatter:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	ecx, DWORD PTR 36[rcx]
	test	ecx, ecx
	js	.L594
.L571:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	mov	rax, QWORD PTR .refptr.gInput[rip]
	movsx	edx, WORD PTR 24[rbx]
	movzx	ecx, WORD PTR [rax]
	test	cl, -16
	jne	.L574
	xor	eax, eax
	xor	edx, edx
	xor	r8d, r8d
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 20[rbx], dx
.L575:
	xor	eax, eax
.L578:
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	add	DWORD PTR 12[rbx], r8d
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_80232D0
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 2
	je	.L571
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	mov	r8d, 1
	sar	edx, 8
	sar	ecx, 8
	add	rsp, 32
	pop	rbx
	jmp	InitScatteringRings
	.p2align 4,,10
	.p2align 3
.L574:
	mov	eax, 4096
	add	edx, 32
	mov	r9d, ecx
	cmp	edx, eax
	cmovg	edx, eax
	xor	eax, eax
	test	edx, edx
	cmovs	edx, eax
	and	r9d, 48
	mov	eax, edx
	mov	r8d, edx
	cmp	r9w, 16
	je	.L576
	neg	r8d
	cmp	r9w, 32
	mov	r9d, 0
	cmovne	r8d, r9d
.L576:
	and	cx, 192
	mov	WORD PTR 20[rbx], r8w
	movsx	r8d, r8w
	mov	WORD PTR 24[rbx], ax
	cmp	cx, 64
	je	.L577
	cmp	cx, 128
	je	.L578
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L577:
	mov	eax, edx
	neg	eax
	jmp	.L578
	.seh_endproc
	.p2align 4
	.globl	CallPlayerTransition
	.def	CallPlayerTransition;	.scl	2;	.type	32;	.endef
	.seh_proc	CallPlayerTransition
CallPlayerTransition:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR 117[rcx]
	test	cl, cl
	je	.L596
	movzx	edx, cl
	sub	edx, 1
	cmp	edx, 27
	ja	.L596
	lea	r8, .L598[rip]
	movsx	rdx, DWORD PTR [r8+rdx*4]
	add	rdx, r8
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L598:
	.long	.L625-.L598
	.long	.L624-.L598
	.long	.L623-.L598
	.long	.L622-.L598
	.long	.L621-.L598
	.long	.L620-.L598
	.long	.L619-.L598
	.long	.L618-.L598
	.long	.L617-.L598
	.long	.L616-.L598
	.long	.L615-.L598
	.long	.L614-.L598
	.long	.L613-.L598
	.long	.L612-.L598
	.long	.L611-.L598
	.long	.L610-.L598
	.long	.L609-.L598
	.long	.L608-.L598
	.long	.L607-.L598
	.long	.L606-.L598
	.long	.L605-.L598
	.long	.L604-.L598
	.long	.L603-.L598
	.long	.L602-.L598
	.long	.L601-.L598
	.long	.L600-.L598
	.long	.L599-.L598
	.long	.L597-.L598
	.text
	.p2align 4,,10
	.p2align 3
.L607:
	movzx	edx, BYTE PTR 118[rax]
	mov	r8d, edx
	or	edx, 80
	or	r8d, 112
.L648:
	mov	r9, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [r9], -128
	cmovne	edx, r8d
	mov	BYTE PTR 118[rax], dl
.L649:
	lea	rdx, Player_TouchNormalSpring[rip]
	mov	QWORD PTR gPlayer[rip], rdx
.L596:
	mov	BYTE PTR 119[rax], cl
	mov	BYTE PTR 117[rax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L599:
	lea	rdx, Player_InitCorkscrew[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L597:
	lea	rdx, Player_InitPipeExit[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L625:
	lea	rdx, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L624:
	lea	rdx, Player_SpinAttack[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L623:
	lea	rdx, Player_InitJump[rip]
	and	DWORD PTR 36[rax], -6291457
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L622:
	lea	rdx, Player_8025F84[rip]
	and	DWORD PTR 36[rax], -6291457
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L621:
	lea	rdx, Player_InitUncurl[rip]
	or	DWORD PTR 36[rax], 256
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L620:
	lea	rdx, Player_8026060[rip]
	or	DWORD PTR 36[rax], 256
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L619:
	lea	rdx, Player_8028D74[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L618:
	mov	rdx, QWORD PTR .refptr.Player_InitHomingAttackRecoil[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L617:
	lea	rdx, Player_InitHurt[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L616:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 1
	jne	.L626
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rdx], 512
.L626:
	mov	edx, DWORD PTR 36[rax]
	test	edx, 805314570
	je	.L627
	or	edx, 136314880
	mov	DWORD PTR 100[rax], 0
	mov	DWORD PTR 36[rax], edx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L615:
	lea	rdx, Player_InitGrinding[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L606:
	movzx	edx, BYTE PTR 118[rax]
	mov	r8d, edx
	or	edx, 96
	or	r8d, 64
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L605:
	movzx	edx, BYTE PTR 118[rax]
	mov	r8d, edx
	or	edx, 112
	or	r8d, 80
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L604:
	lea	rdx, Player_InitRampOrDashRing[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L603:
	lea	rdx, Player_802A258[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L602:
	lea	rdx, Player_InitDashRing[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L601:
	lea	rdx, Player_InitPipeEntry[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L600:
	lea	rdx, Player_InitPropellorSpring[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L611:
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	jne	.L649
.L629:
	or	BYTE PTR 118[rax], 16
	jmp	.L649
	.p2align 4,,10
	.p2align 3
.L610:
	or	BYTE PTR 118[rax], 32
	jmp	.L649
	.p2align 4,,10
	.p2align 3
.L609:
	lea	rdx, Player_TouchNormalSpring[rip]
	or	BYTE PTR 118[rax], 48
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L608:
	movzx	edx, BYTE PTR 118[rax]
	mov	r8d, edx
	or	edx, 64
	or	r8d, 96
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L613:
	lea	rdx, Player_GrindRailEndAir[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L612:
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L649
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L614:
	lea	rdx, Player_InitGrindRailEndGround[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
.L627:
	or	edx, 134217728
	mov	DWORD PTR 36[rax], edx
	lea	rdx, Player_InitReachedGoal[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	jmp	.L596
	.seh_endproc
	.p2align 4
	.globl	Player_HandleInputs
	.def	Player_HandleInputs;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleInputs
Player_HandleInputs:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 2
	mov	rax, rcx
	jbe	.L651
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	cmp	dl, BYTE PTR 110[rcx]
	je	.L652
	xor	edx, edx
	mov	WORD PTR 100[rax], dx
.L654:
	xor	edx, edx
.L653:
	mov	WORD PTR 102[rax], dx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L651:
	test	BYTE PTR 38[rcx], 32
	jne	.L654
	movzx	edx, WORD PTR 100[rcx]
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	movzx	ecx, WORD PTR [rcx]
	not	edx
	and	edx, ecx
	mov	WORD PTR 100[rax], cx
	mov	WORD PTR 102[rax], dx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L652:
	movzx	edx, WORD PTR 100[rax]
	not	edx
	test	BYTE PTR 38[rax], 32
	jne	.L654
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	movzx	r10d, BYTE PTR 59[rax]
	movzx	r8d, WORD PTR [rcx]
	mov	WORD PTR 100[rax], r8w
	test	r10b, 64
	jne	.L655
	and	edx, r8d
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L655:
	mov	rcx, QWORD PTR .refptr.gStageTime[rip]
	movzx	r11d, WORD PTR 54[rax]
	mov	r9d, r8d
	shr	r9b, 4
	mov	ebx, DWORD PTR [rcx]
	movzx	r9d, r9b
	add	ebx, r11d
	mov	ecx, ebx
	mov	ebx, 1
	and	ecx, 3
	cmove	ecx, ebx
	and	r8b, 15
	sub	r11d, 1
	mov	WORD PTR 54[rax], r11w
	sal	r9d, cl
	mov	ecx, r9d
	shr	cl, 4
	or	ecx, r9d
	sal	ecx, 4
	movzx	ecx, cl
	or	r8d, ecx
	mov	WORD PTR 100[rax], r8w
	and	edx, r8d
	test	r11w, r11w
	jne	.L653
	and	r10d, -65
	mov	BYTE PTR 59[rax], r10b
	jmp	.L653
	.seh_endproc
	.p2align 4
	.globl	sub_80246DC
	.def	sub_80246DC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80246DC
sub_80246DC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, gPlayerCharacterIdleAnims[rip]
	movsx	rdx, BYTE PTR 141[rcx]
	mov	rsi, QWORD PTR 160[rcx]
	movzx	r11d, WORD PTR 114[rcx]
	movzx	r8d, WORD PTR [rax+rdx*2]
	movzx	edx, WORD PTR 112[rcx]
	movzx	eax, WORD PTR 108[rcx]
	sub	edx, r8d
	mov	rbx, rcx
	sub	eax, 10
	movzx	r10d, dx
	cmp	ax, 47
	ja	.L657
	lea	r9, .L660[rip]
	movzx	eax, ax
	movsx	rax, DWORD PTR [r9+rax*4]
	add	rax, r9
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L660:
	.long	.L664-.L660
	.long	.L664-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L663-.L660
	.long	.L662-.L660
	.long	.L661-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L657-.L660
	.long	.L659-.L660
	.text
	.p2align 4,,10
	.p2align 3
.L659:
	cmp	r10d, 66
	je	.L704
.L657:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L664:
	test	r11w, r11w
	jne	.L665
	test	BYTE PTR 49[rsi], 64
	je	.L657
	sub	edx, 10
	cmp	dx, 1
	ja	.L657
	mov	ecx, 1
	or	DWORD PTR 36[rbx], 4
	mov	edx, 9
	mov	WORD PTR 114[rbx], cx
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	r8d, 2310
	mov	WORD PTR 26[rbx], r8w
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L663:
	cmp	r10d, 65
	jne	.L657
.L704:
	test	r11d, r11d
	je	.L670
	cmp	r11d, 1
	jne	.L657
	jmp	.L699
	.p2align 4,,10
	.p2align 3
.L661:
	test	r11d, r11d
	jne	.L657
	cmp	r10d, 53
	jne	.L657
	test	BYTE PTR 49[rsi], 64
	je	.L657
	add	r8d, 52
	mov	WORD PTR 112[rbx], r8w
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L662:
	cmp	r10d, 52
	jne	.L657
	test	r11d, r11d
	je	.L670
	cmp	r11w, 1
	jne	.L657
.L699:
	test	BYTE PTR 49[rsi], 64
	je	.L657
.L702:
	mov	eax, 2
	mov	WORD PTR 114[rbx], ax
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L670:
	cmp	WORD PTR 22[rbx], 0
	jle	.L657
	mov	edx, 1
	mov	WORD PTR 114[rbx], dx
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L665:
	cmp	WORD PTR 22[rbx], 0
	jle	.L657
	cmp	r11w, 1
	jne	.L657
	sub	edx, 10
	cmp	dx, 1
	ja	.L657
	mov	ecx, DWORD PTR 16[rbx]
	movsx	eax, BYTE PTR 27[rbx]
	mov	r9d, 8
	mov	edx, DWORD PTR 12[rbx]
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 8
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	sar	edx, 8
	mov	QWORD PTR 40[rsp], rax
	movzx	r8d, BYTE PTR 60[rbx]
	call	sub_801E6D4
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 5
	je	.L657
	cmp	eax, 32
	jg	.L657
	jmp	.L702
	.seh_endproc
	.p2align 4
	.globl	sub_802486C
	.def	sub_802486C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802486C
sub_802486C:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movzx	r8d, WORD PTR 108[rcx]
	mov	rax, rcx
	cmp	r8w, -1
	je	.L734
	movsx	r10d, r8w
	cmp	r8w, WORD PTR 110[rcx]
	je	.L708
	lea	r9, sCharStateAnimInfo[rip]
	movsx	r11, r10d
	movzx	ecx, WORD PTR [r9+r11*4]
	movzx	r9d, WORD PTR 2[r9+r11*4]
	mov	WORD PTR 112[rax], cx
	cmp	r8w, 79
	jle	.L709
	mov	WORD PTR 114[rax], r9w
	mov	BYTE PTR 66[rdx], 16
	jmp	.L707
	.p2align 4,,10
	.p2align 3
.L713:
	movzx	r9d, WORD PTR 24[rax]
.L735:
	mov	ecx, r9d
	neg	cx
	cmovs	ecx, r9d
	movzx	ecx, ch
	lea	ecx, 8[rcx+rcx*2]
	mov	BYTE PTR 66[rdx], cl
.L734:
	movzx	ecx, WORD PTR 112[rax]
	movzx	r9d, WORD PTR 114[rax]
.L707:
	mov	r10, QWORD PTR .refptr.gGameMode[rip]
	movzx	r11d, BYTE PTR 116[rax]
	movzx	r10d, BYTE PTR [r10]
	cmp	r10b, 2
	jbe	.L719
	mov	BYTE PTR 192[rax], 0
	test	r11b, r11b
	je	.L736
	mov	BYTE PTR 116[rax], 0
.L730:
	mov	WORD PTR 34[rdx], cx
	mov	BYTE PTR 64[rdx], r9b
	mov	BYTE PTR 65[rdx], -1
	mov	DWORD PTR 72[rdx], -1
	mov	DWORD PTR 80[rdx], -1
.L727:
	mov	BYTE PTR 192[rax], 1
	mov	WORD PTR 110[rax], r8w
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L719:
	test	r11b, r11b
	je	.L737
	mov	BYTE PTR 116[rax], 0
.L728:
	mov	WORD PTR 34[rdx], cx
	mov	BYTE PTR 64[rdx], r9b
	mov	BYTE PTR 65[rdx], -1
	mov	DWORD PTR 72[rdx], -1
	mov	DWORD PTR 80[rdx], -1
.L723:
	mov	WORD PTR 110[rax], r8w
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L709:
	movsx	rbx, BYTE PTR 141[rax]
	lea	r11, gPlayerCharacterIdleAnims[rip]
	sal	r9d, 16
	add	cx, WORD PTR [r11+rbx*2]
	movzx	ecx, cx
	or	r9d, ecx
	mov	DWORD PTR 112[rax], r9d
	mov	BYTE PTR 66[rdx], 16
.L708:
	sub	r10d, 9
	cmp	r10d, 52
	ja	.L734
	lea	r9, .L712[rip]
	movsx	rcx, DWORD PTR [r9+r10*4]
	add	rcx, r9
	jmp	rcx
	.section .rdata,"dr"
	.align 4
.L712:
	.long	.L716-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L715-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L714-.L712
	.long	.L714-.L712
	.long	.L713-.L712
	.long	.L713-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L734-.L712
	.long	.L711-.L712
	.long	.L711-.L712
	.long	.L711-.L712
	.text
	.p2align 4,,10
	.p2align 3
.L737:
	cmp	cx, WORD PTR 34[rdx]
	jne	.L728
.L729:
	movzx	r11d, BYTE PTR 64[rdx]
	cmp	r11w, r9w
	je	.L723
	mov	BYTE PTR 116[rax], 0
	mov	WORD PTR 34[rdx], cx
	mov	BYTE PTR 64[rdx], r9b
	mov	BYTE PTR 65[rdx], -1
	mov	DWORD PTR 72[rdx], -1
	mov	DWORD PTR 80[rdx], -1
	cmp	r10b, 2
	ja	.L727
	jmp	.L723
	.p2align 4,,10
	.p2align 3
.L736:
	cmp	cx, WORD PTR 34[rdx]
	jne	.L730
	jmp	.L729
	.p2align 4,,10
	.p2align 3
.L711:
	movzx	ecx, WORD PTR 112[rax]
	movzx	r9d, WORD PTR 114[rax]
.L717:
	movsx	r10d, WORD PTR 24[rax]
	mov	r11d, r10d
	sar	r10d, 6
	sar	r11d, 5
	add	r11d, r10d
	mov	r10d, r11d
	neg	r10d
	cmovs	r10d, r11d
	mov	r11d, 128
	cmp	r10d, r11d
	cmovg	r10d, r11d
	mov	r11d, 8
	cmp	r10d, r11d
	cmovl	r10d, r11d
	mov	BYTE PTR 66[rdx], r10b
	jmp	.L707
	.p2align 4,,10
	.p2align 3
.L714:
	movzx	r9d, WORD PTR 22[rax]
	jmp	.L735
.L715:
	cmp	BYTE PTR 141[rax], 1
	jne	.L734
	movsx	ecx, WORD PTR 24[rax]
	mov	r9d, ecx
	sar	ecx, 6
	sar	r9d, 5
	add	r9d, ecx
	mov	ecx, r9d
	neg	ecx
	cmovs	ecx, r9d
	mov	r9d, 128
	cmp	ecx, r9d
	cmovg	ecx, r9d
	mov	r9d, 8
	cmp	ecx, r9d
	cmovl	ecx, r9d
	mov	BYTE PTR 66[rdx], cl
	movzx	ecx, WORD PTR 112[rax]
	movzx	r9d, WORD PTR 114[rax]
	jmp	.L707
.L716:
	movsx	r9, BYTE PTR 141[rax]
	lea	rcx, gPlayerCharacterIdleAnims[rip]
	movzx	ecx, WORD PTR [rcx+r9*2]
	movzx	r9d, WORD PTR 92[rax]
	add	ecx, 9
	mov	r10d, r9d
	movzx	r11d, cx
	sal	r10d, 16
	or	r10d, r11d
	mov	DWORD PTR 112[rax], r10d
	jmp	.L717
	.seh_endproc
	.p2align 4
	.globl	sub_8024B10
	.def	sub_8024B10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8024B10
sub_8024B10:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edi, 1
	mov	rbx, rdx
	mov	rsi, rcx
	lea	r12, 16[rdx]
	mov	ecx, DWORD PTR 4[rax]
	cmp	BYTE PTR 65[rbx], -1
	mov	edx, DWORD PTR [rax]
	je	.L739
	xor	edi, edi
	cmp	WORD PTR 62[rbx], -1
	sete	dil
.L739:
	movzx	eax, WORD PTR 13[rsi]
	sub	eax, edx
	movzx	edx, WORD PTR 17[rsi]
	mov	WORD PTR 54[rbx], ax
	sub	edx, ecx
	mov	WORD PTR 6[rbx], ax
	mov	WORD PTR 56[rbx], dx
	mov	WORD PTR 8[rbx], dx
	movzx	edx, WORD PTR 108[rsi]
	lea	ecx, -62[rdx]
	cmp	cx, 1
	jbe	.L740
	mov	ecx, edx
	and	ecx, -33
	cmp	cx, 9
	jne	.L793
.L740:
	movzx	ecx, BYTE PTR 40[rsi]
	mov	edx, DWORD PTR 48[rbx]
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	sal	ecx, 2
	and	edx, -3104
	mov	WORD PTR [rbx], cx
	movsx	r8d, BYTE PTR 104[rsi]
	or	r8d, 32
	or	edx, r8d
	mov	DWORD PTR 48[rbx], edx
	movzx	edx, WORD PTR 0[rbp]
	and	dx, 128
	test	BYTE PTR 36[rsi], 1
	je	.L742
	mov	r8d, 256
	test	dx, dx
	je	.L745
	sub	eax, 1
	mov	r8d, -256
	mov	WORD PTR 6[rbx], ax
.L779:
	mov	eax, -512
	sub	eax, ecx
	and	ax, 1023
	mov	WORD PTR [rbx], ax
.L745:
	movsx	eax, WORD PTR 136[rsi]
	movsx	edx, WORD PTR 138[rsi]
	mov	rcx, r12
	imul	eax, r8d
	mov	WORD PTR 4[rbx], dx
	sar	eax, 8
	mov	WORD PTR 2[rbx], ax
	call	UpdateSpriteAnimation
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	movzx	r11d, BYTE PTR 0[r13]
	cmp	r11b, 2
	jbe	.L788
.L790:
	mov	r14d, DWORD PTR 36[rsi]
.L746:
	mov	r8, QWORD PTR .refptr.REG_BASE[rip]
	mov	r10, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	r12d, BYTE PTR 59[rsi]
	movzx	eax, BYTE PTR 296[r8]
	mov	BYTE PTR 10[rdx], r12b
	shr	al, 4
	and	eax, 3
	mov	rax, QWORD PTR [r10+rax*8]
	mov	r9, QWORD PTR 24[rax]
	mov	eax, 20480
	mov	WORD PTR [rdx], ax
	movzx	eax, WORD PTR 13[rsi]
	add	ax, WORD PTR 132[rsi]
	mov	WORD PTR 2[rdx], ax
	mov	eax, DWORD PTR 16[rsi]
	sar	eax, 8
	mov	WORD PTR 4[rdx], ax
	movzx	eax, WORD PTR 34[rbx]
	mov	WORD PTR 6[rdx], ax
	cmp	r11b, 5
	jne	.L756
	movsx	r12, BYTE PTR 141[rsi]
	lea	r11, gPlayerCharacterIdleAnims[rip]
	sub	ax, WORD PTR [r11+r12*2]
	mov	r11, QWORD PTR .refptr.gRingCount[rip]
	movzx	r11d, WORD PTR [r11]
	sal	r11d, 8
	or	eax, r11d
	mov	WORD PTR 6[rdx], ax
.L756:
	movzx	r11d, BYTE PTR 27[rsi]
	xor	eax, eax
	mov	ecx, r14d
	sal	r11d, 4
	mov	al, r11b
	or	al, BYTE PTR 64[rbx]
	mov	ah, BYTE PTR 66[rbx]
	mov	WORD PTR 11[rdx], ax
	movzx	eax, WORD PTR [rbx]
	shr	ax, 2
	mov	BYTE PTR 13[rdx], al
	movzx	eax, WORD PTR 8[rdx]
	mov	r11d, eax
	and	eax, -2
	or	r11d, 1
	test	BYTE PTR 48[rbx], 32
	mov	ebx, DWORD PTR 108[r9]
	cmovne	eax, r11d
	mov	r11d, eax
	and	eax, -3
	or	r11d, 2
	test	r14b, 1
	cmove	eax, r11d
	mov	r11d, eax
	and	eax, -9
	or	r11d, 8
	test	BYTE PTR 0[rbp], -128
	cmovne	eax, r11d
	and	ecx, 1073741952
	and	ebx, 1
	mov	r11d, ecx
	or	r11d, ebx
	mov	r11d, eax
	jne	.L763
	and	r11d, -5
	cmp	WORD PTR 48[rsi], 0
	jne	.L791
	.p2align 4,,10
	.p2align 3
.L765:
	and	r11w, -257
.L768:
	mov	eax, r11d
	and	r11d, -65
	or	eax, 64
	and	r14d, 1048576
	cmovne	r11d, eax
	mov	rax, QWORD PTR gPlayer[rip+160]
	mov	ecx, DWORD PTR 48[rax]
	and	r11d, -49
	shr	ecx, 8
	and	ecx, 48
	or	ecx, r11d
	mov	eax, ecx
	and	al, 127
	cmp	BYTE PTR 60[rsi], 0
	je	.L772
	mov	eax, ecx
	or	al, -128
.L772:
	mov	ecx, eax
	and	ah, -9
	or	ch, 8
	test	edi, edi
	cmove	ecx, eax
	movzx	eax, BYTE PTR 296[r8]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR 116[r9], al
	test	BYTE PTR gPlayer[rip+36], 8
	je	.L775
	mov	rbx, QWORD PTR gPlayer[rip+64]
	xor	r11d, r11d
.L778:
	movzx	eax, BYTE PTR 296[r8]
	shr	al, 4
	and	eax, 3
	cmp	al, r11b
	je	.L776
	mov	rax, QWORD PTR [r10+r11*8]
	test	rax, rax
	je	.L792
	cmp	rbx, QWORD PTR 24[rax]
	je	.L794
.L776:
	add	r11, 1
	cmp	r11, 4
	jne	.L778
.L792:
	movzx	eax, BYTE PTR 116[r9]
.L775:
	sal	eax, 9
	and	ch, -7
	or	eax, ecx
	mov	WORD PTR 8[rdx], ax
.L738:
	add	rsp, 32
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
.L742:
	test	dx, dx
	je	.L795
	mov	r8d, 256
	jmp	.L779
	.p2align 4,,10
	.p2align 3
.L793:
	cmp	dx, 87
	je	.L796
.L741:
	xor	edx, edx
	mov	WORD PTR [rbx], dx
	mov	edx, DWORD PTR 48[rbx]
	test	BYTE PTR 36[rsi], 1
	jne	.L748
	and	edx, -64
	or	dh, 4
.L749:
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, edx
	and	dh, -9
	mov	rcx, r12
	or	ah, 8
	test	BYTE PTR 0[rbp], -128
	cmovne	edx, eax
	mov	DWORD PTR 48[rbx], edx
	call	UpdateSpriteAnimation
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	jmp	.L747
	.p2align 4,,10
	.p2align 3
.L763:
	or	r11w, 260
	test	ebx, ebx
	jne	.L768
.L791:
	or	eax, 4
	mov	r11d, eax
	jmp	.L765
	.p2align 4,,10
	.p2align 3
.L794:
	mov	BYTE PTR 116[r9], r11b
	jmp	.L776
	.p2align 4,,10
	.p2align 3
.L788:
	mov	rdx, rbx
	mov	rcx, r12
	call	TransformSprite
.L747:
	mov	r14d, DWORD PTR 36[rsi]
	movzx	r11d, BYTE PTR 0[r13]
	mov	eax, r14d
	and	eax, 128
	cmp	r11b, 2
	ja	.L746
	test	eax, eax
	jne	.L752
	and	r14d, 1048576
	jne	.L738
	cmp	WORD PTR 48[rsi], 0
	je	.L752
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L738
	.p2align 4,,10
	.p2align 3
.L752:
	mov	rcx, r12
	call	DisplaySprite
	movzx	r11d, BYTE PTR 0[r13]
	cmp	r11b, 2
	ja	.L790
	jmp	.L738
	.p2align 4,,10
	.p2align 3
.L795:
	sub	eax, 1
	mov	r8d, -256
	mov	WORD PTR 6[rbx], ax
	jmp	.L745
	.p2align 4,,10
	.p2align 3
.L796:
	cmp	BYTE PTR 141[rsi], 1
	jne	.L741
	jmp	.L740
	.p2align 4,,10
	.p2align 3
.L748:
	add	eax, 1
	and	edx, -1088
	mov	WORD PTR 54[rbx], ax
	jmp	.L749
	.seh_endproc
	.p2align 4
	.globl	sub_8024F74
	.def	sub_8024F74;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8024F74
sub_8024F74:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, rdx
	lea	rdi, 16[rdx]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, rcx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	edx, eax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L798
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movd	xmm1, edx
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	lea	rcx, [rax+rax*4]
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	movd	xmm0, DWORD PTR 2[rax+rcx*4]
	psubw	xmm0, xmm1
.L799:
	mov	r8d, DWORD PTR 36[rbx]
	movd	DWORD PTR 6[rsi], xmm0
	mov	eax, r8d
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	eax, 8
	add	eax, 8
	mov	BYTE PTR 66[rsi], al
	movzx	eax, BYTE PTR 141[rbx]
	cmp	al, 1
	je	.L801
	cmp	al, 2
	je	.L802
.L797:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L802:
	movzx	eax, WORD PTR 112[rbx]
	movsx	ecx, WORD PTR 20[rbx]
	movsx	edx, WORD PTR 22[rbx]
	movzx	r10d, WORD PTR 114[rbx]
	lea	r9d, -192[rax]
	cmp	r9w, 1
	jbe	.L860
	cmp	ax, 186
	sete	r9b
	cmp	ax, 252
	sete	al
	or	r9b, al
	je	.L797
	test	r10w, r10w
	jne	.L797
.L814:
	mov	eax, ecx
	or	ax, dx
	jne	.L861
	and	r8d, 1
	cmp	r8d, 1
	sbb	eax, eax
	and	eax, -128
	sub	eax, 64
	cmp	r8d, 1
	sbb	edx, edx
	and	dx, -512
	add	dx, 768
.L816:
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	ecx, DWORD PTR 48[rsi]
	mov	BYTE PTR 197[rbx], al
	mov	WORD PTR [rsi], dx
	movzx	eax, BYTE PTR [r8]
	and	ecx, -32
	lea	r9d, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR [r8], r9b
	or	eax, ecx
	mov	DWORD PTR 48[rsi], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	and	ax, 128
	test	BYTE PTR 36[rbx], 1
	je	.L817
	mov	r8d, 256
	mov	ecx, 256
	mov	WORD PTR 2[rsi], r8w
	test	ax, ax
	je	.L820
	sub	WORD PTR 6[rsi], 1
	mov	ecx, -256
	jmp	.L822
	.p2align 4,,10
	.p2align 3
.L798:
	movzx	eax, WORD PTR 17[rcx]
	movzx	ecx, WORD PTR 13[rcx]
	movd	xmm2, edx
	sal	eax, 16
	or	eax, ecx
	movd	xmm0, eax
	psubw	xmm0, xmm2
	jmp	.L799
	.p2align 4,,10
	.p2align 3
.L801:
	movzx	eax, WORD PTR 112[rbx]
	movzx	ecx, WORD PTR 114[rbx]
	lea	edx, -101[rax]
	cmp	dx, 1
	jbe	.L862
	test	cx, cx
	lea	r9d, -91[rax]
	sete	dl
	cmp	ax, 95
	jne	.L830
	test	dl, dl
	je	.L830
.L805:
	movzx	eax, BYTE PTR 40[rbx]
	mov	ecx, DWORD PTR 48[rsi]
	pextrw	r9d, xmm0, 0
	mov	r10, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	BYTE PTR 200[rbx], al
	lea	edx, 0[0+rax*4]
	and	ecx, -32
	movzx	eax, BYTE PTR [r10]
	mov	WORD PTR [rsi], dx
	lea	r11d, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR [r10], r11b
	or	eax, ecx
	mov	DWORD PTR 48[rsi], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	and	ax, 128
	and	r8d, 1
	je	.L808
	mov	ecx, 256
	test	ax, ax
	je	.L820
	sub	r9d, 1
	mov	ecx, -256
	mov	WORD PTR 6[rsi], r9w
.L822:
	mov	eax, -512
	sub	eax, edx
	and	ax, 1023
	mov	WORD PTR [rsi], ax
.L820:
	movsx	eax, WORD PTR 136[rbx]
	movsx	edx, WORD PTR 138[rbx]
	imul	eax, ecx
	mov	WORD PTR 4[rsi], dx
	mov	rcx, rdi
	sar	eax, 8
	mov	WORD PTR 2[rsi], ax
	call	UpdateSpriteAnimation
	mov	rdx, rsi
	mov	rcx, rdi
	call	TransformSprite
	mov	eax, DWORD PTR 36[rbx]
	test	al, -128
	jne	.L821
	test	eax, 1048576
	jne	.L797
	cmp	WORD PTR 48[rbx], 0
	je	.L821
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L797
.L821:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L862:
	cmp	cx, 1
	jne	.L797
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L860:
	cmp	r10w, 1
	jne	.L797
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L808:
	test	ax, ax
	je	.L863
	mov	ecx, 256
	jmp	.L822
	.p2align 4,,10
	.p2align 3
.L817:
	mov	ecx, -256
	mov	WORD PTR 2[rsi], cx
	mov	ecx, 256
	test	ax, ax
	jne	.L822
	sub	WORD PTR 6[rsi], 1
	mov	ecx, -256
	jmp	.L820
	.p2align 4,,10
	.p2align 3
.L861:
	call	ArcTan2
	shr	ax, 8
	add	eax, 64
	movzx	edx, al
	sal	edx, 2
	jmp	.L816
	.p2align 4,,10
	.p2align 3
.L830:
	cmp	r9w, 70
	jne	.L797
	test	dl, dl
	jne	.L805
	jmp	.L797
	.p2align 4,,10
	.p2align 3
.L863:
	sub	r9d, 1
	mov	ecx, -256
	mov	WORD PTR 6[rsi], r9w
	jmp	.L820
	.seh_endproc
	.p2align 4
	.globl	Task_PlayerDied
	.def	Task_PlayerDied;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_PlayerDied
Task_PlayerDied:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8d, DWORD PTR gPlayer[rip+36]
	mov	rsi, QWORD PTR gPlayer[rip+160]
	mov	rbx, QWORD PTR gPlayer[rip+168]
	movzx	ecx, WORD PTR [rax]
	mov	edx, DWORD PTR gPlayer[rip+16]
	mov	r9d, ecx
	and	r9w, 128
	test	r8d, r8d
	js	.L865
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 4[rax]
	test	r9w, r9w
	je	.L866
	sub	eax, 80
	sal	eax, 8
	cmp	edx, eax
	jle	.L867
.L865:
	movzx	eax, WORD PTR gPlayer[rip+22]
	lea	rdi, gPlayer[rip]
	lea	r10d, 12[rax]
	add	eax, 42
	and	r8d, 64
	movsx	r8d, WORD PTR gPlayer[rip+20]
	cmovne	eax, r10d
	add	DWORD PTR gPlayer[rip+12], r8d
	mov	r8, QWORD PTR .refptr.gPrevStageFlags[rip]
	xor	cx, WORD PTR [r8]
	mov	r8d, eax
	neg	r8d
	and	ecx, 128
	mov	ecx, 3840
	cmovne	eax, r8d
	cmp	ax, cx
	cmovg	eax, ecx
	mov	ecx, edx
	mov	WORD PTR gPlayer[rip+22], ax
	cwde
	sub	ecx, eax
	add	edx, eax
	test	r9w, r9w
	cmovne	edx, ecx
	mov	rcx, rdi
	mov	DWORD PTR gPlayer[rip+16], edx
	mov	rdx, rsi
	call	sub_802486C
	mov	rcx, rdi
	call	sub_8024B10
	mov	rdx, rbx
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_8024F74
	.p2align 4,,10
	.p2align 3
.L866:
	sal	eax, 8
	add	eax, 81919
	cmp	edx, eax
	jl	.L865
.L867:
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	or	r8d, 1048576
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	mov	DWORD PTR 4[rdx], 60
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	DWORD PTR gPlayer[rip+36], r8d
	cmp	BYTE PTR [rdx], 2
	ja	.L878
.L868:
	lea	rsi, Task_PlayerHandleDeath[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L878:
	mov	rdx, rsi
	lea	rcx, gPlayer[rip]
	call	sub_8024B10
	mov	rax, QWORD PTR [rbx]
	jmp	.L868
	.seh_endproc
	.p2align 4
	.globl	InitPlayerGrindGraphics
	.def	InitPlayerGrindGraphics;	.scl	2;	.type	32;	.endef
	.seh_proc	InitPlayerGrindGraphics
InitPlayerGrindGraphics:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	mov	rdx, QWORD PTR 160[rcx]
	mov	BYTE PTR 60[rcx], 0
	mov	rbx, rcx
	mov	BYTE PTR 40[rcx], 0
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	edx, DWORD PTR 12[rcx]
	or	BYTE PTR 59[rcx], -128
	mov	ecx, DWORD PTR 16[rcx]
	movsx	eax, BYTE PTR 27[rbx]
	sar	edx, 8
	sar	ecx, 8
	test	BYTE PTR [r8], -128
	je	.L880
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, -8
	xor	r8d, r8d
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E6D4
	mov	edx, DWORD PTR 16[rbx]
	sal	eax, 8
	sub	edx, eax
.L881:
	and	DWORD PTR 36[rbx], -3
	mov	DWORD PTR 16[rbx], edx
	or	DWORD PTR gPlayer[rip+36], 1073741824
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L880:
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	xor	r8d, r8d
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E6D4
	mov	edx, DWORD PTR 16[rbx]
	sal	eax, 8
	add	edx, eax
	jmp	.L881
	.seh_endproc
	.p2align 4
	.globl	sub_8026B64
	.def	sub_8026B64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8026B64
sub_8026B64:
	.seh_endprologue
	cmp	WORD PTR 46[rcx], 0
	movzx	eax, WORD PTR 24[rcx]
	jne	.L883
	movzx	edx, WORD PTR 100[rcx]
	test	dl, 48
	je	.L883
	test	dl, 16
	je	.L884
	movsx	r8d, ax
	cmp	r8d, DWORD PTR 76[rcx]
	jge	.L884
	add	eax, 8
.L883:
	lea	edx, 8[rax]
	cmp	ax, 256
	cmovl	eax, edx
	mov	WORD PTR 24[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L884:
	and	edx, 32
	je	.L883
	cmp	ax, 256
	lea	edx, -8[rax]
	setg	r8b
	test	r8b, r8b
	cmovne	eax, edx
	lea	edx, 8[rax]
	cmp	ax, 256
	cmovl	eax, edx
	mov	WORD PTR 24[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.def	Player_8026BCC.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	Player_8026BCC.part.0
Player_8026BCC.part.0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	sub_8026B64
	mov	rbx, rcx
	call	sub_8023128
	movzx	edx, BYTE PTR 40[rbx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L898
	movzx	eax, WORD PTR 24[rbx]
	test	ax, ax
	jne	.L921
.L898:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	mov	edx, DWORD PTR 36[rbx]
	movzx	eax, WORD PTR 22[rbx]
	test	dl, 2
	je	.L900
	lea	ecx, 12[rax]
	add	eax, 42
	and	edx, 64
	cmovne	eax, ecx
.L900:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L905
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	and	edx, 2
.L906:
	test	edx, edx
	jne	.L909
	and	eax, 2056
	cmp	eax, 2048
	je	.L897
	lea	rax, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L897:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L905:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L920
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L920
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
.L909:
	mov	eax, 14
	mov	WORD PTR 108[rbx], ax
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L920:
	mov	edx, eax
	and	edx, 2
	jmp	.L906
	.p2align 4,,10
	.p2align 3
.L921:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 2
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	sar	edx, 5
	add	eax, edx
	mov	WORD PTR 24[rbx], ax
	jmp	.L898
	.seh_endproc
	.p2align 4
	.globl	Player_InitVictoryPoseTransition
	.def	Player_InitVictoryPoseTransition;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitVictoryPoseTransition
Player_InitVictoryPoseTransition:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 28[rdx]
	cmp	eax, -55
	jl	.L923
	sub	eax, 1
	mov	DWORD PTR 28[rdx], eax
.L923:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	r10d, 90
	mov	WORD PTR 122[rcx], r10w
	movzx	eax, BYTE PTR [rax]
	cmp	al, 27
	jg	.L924
	and	eax, 3
	cmp	al, 1
	je	.L925
	cmp	al, 2
	je	.L926
	test	al, al
	je	.L928
	ret
	.p2align 4,,10
	.p2align 3
.L924:
	mov	eax, 28
	mov	WORD PTR 108[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L928:
	mov	r9d, 28
	lea	rax, Player_VictoryPose[rip]
	mov	WORD PTR 108[rcx], r9w
	mov	QWORD PTR gPlayer[rip], rax
	ret
	.p2align 4,,10
	.p2align 3
.L925:
	mov	r8d, 29
	lea	rax, Player_VictoryPose[rip]
	mov	WORD PTR 108[rcx], r8w
	mov	QWORD PTR gPlayer[rip], rax
	ret
	.p2align 4,,10
	.p2align 3
.L926:
	mov	edx, 32
	mov	WORD PTR 108[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8028640
	.def	sub_8028640;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8028640
sub_8028640:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	movsx	r9d, BYTE PTR gPlayer[rip+104]
	mov	QWORD PTR 40[rsp], rax
	mov	edi, r8d
	movsx	edx, dx
	movsx	ecx, cx
	mov	rax, QWORD PTR .refptr.Task_UpdateMpSpriteTaskSprite[rip]
	mov	r8d, 232
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	movzx	r8d, di
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	eax, DWORD PTR gPlayer[rip+112]
	lea	rdx, [r8+r8*2]
	mov	DWORD PTR 22[rbx], eax
	lea	rax, gUnknown_080D69A6[rip]
	lea	rdi, [rax+rdx*2]
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	mov	DWORD PTR 64[rbx], 8192
	mov	QWORD PTR 40[rbx], rax
	movzx	eax, WORD PTR 2[rdi]
	mov	WORD PTR 50[rbx], ax
	movzx	eax, WORD PTR 4[rdi]
	mov	BYTE PTR 80[rbx], al
	mov	eax, 448
	mov	WORD PTR 74[rbx], ax
	mov	rax, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	DoTrickIfButtonPressed
	.def	DoTrickIfButtonPressed;	.scl	2;	.type	32;	.endef
	.seh_proc	DoTrickIfButtonPressed
DoTrickIfButtonPressed:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	rax, rcx
	cmp	dl, 5
	je	.L930
	cmp	BYTE PTR 58[rcx], 0
	jne	.L930
	mov	r8, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	ecx, WORD PTR 102[rcx]
	and	cx, WORD PTR 4[r8]
	je	.L930
	mov	r11, QWORD PTR .refptr.gLevelScore[rip]
	movzx	ebx, WORD PTR 100[rax]
	mov	r9d, DWORD PTR [r11]
	lea	r10d, 100[r9]
	movsx	rcx, r10d
	mov	r8d, r10d
	imul	rcx, rcx, 351843721
	sar	r8d, 31
	sar	rcx, 44
	sub	ecx, r8d
	movsx	r8, r9d
	sar	r9d, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, r9d
	test	dl, dl
	sete	dl
	cmp	ecx, r8d
	setne	r9b
	and	edx, r9d
	test	bl, 64
	je	.L932
	mov	DWORD PTR [r11], r10d
	test	dl, dl
	jne	.L964
.L933:
	mov	BYTE PTR 99[rax], 0
	lea	rax, Player_InitDefaultTrick[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L930:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L932:
	test	bl, -128
	je	.L934
	mov	DWORD PTR [r11], r10d
	test	dl, dl
	jne	.L965
.L935:
	movzx	edx, BYTE PTR 141[rax]
	cmp	dl, 3
	je	.L936
	and	edx, 251
	je	.L966
	mov	BYTE PTR 99[rax], 1
	lea	rax, Player_InitDefaultTrick[rip]
	mov	QWORD PTR gPlayer[rip], rax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L934:
	test	BYTE PTR 36[rax], 1
	je	.L967
	and	ebx, 32
	je	.L940
.L939:
	mov	DWORD PTR [r11], r10d
	test	dl, dl
	jne	.L968
.L941:
	mov	BYTE PTR 99[rax], 2
	lea	rax, Player_InitDefaultTrick[rip]
	mov	QWORD PTR gPlayer[rip], rax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L964:
	sub	ecx, r8d
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	edx, BYTE PTR [r8]
	add	edx, ecx
	mov	ecx, 255
	cmp	dx, cx
	cmova	edx, ecx
	mov	BYTE PTR [r8], dl
	mov	rdx, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rdx], 16
	jmp	.L933
	.p2align 4,,10
	.p2align 3
.L967:
	and	ebx, 16
	jne	.L939
.L940:
	mov	DWORD PTR [r11], r10d
	test	dl, dl
	jne	.L969
.L942:
	mov	BYTE PTR 99[rax], 3
	lea	rax, Player_InitDefaultTrick[rip]
	mov	QWORD PTR gPlayer[rip], rax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L966:
	or	DWORD PTR 36[rax], 536870912
	mov	rax, QWORD PTR .refptr.Player_SonicAmy_InitStopNSlam[rip]
	mov	QWORD PTR gPlayer[rip], rax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L965:
	sub	ecx, r8d
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	edx, BYTE PTR [r8]
	add	edx, ecx
	mov	ecx, 255
	cmp	dx, cx
	cmova	edx, ecx
	mov	BYTE PTR [r8], dl
	mov	rdx, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rdx], 16
	jmp	.L935
	.p2align 4,,10
	.p2align 3
.L936:
	or	DWORD PTR 36[rax], 536870912
	mov	rax, QWORD PTR .refptr.Player_Knuckles_InitDrillClaw[rip]
	mov	QWORD PTR gPlayer[rip], rax
	pop	rbx
	ret
.L969:
	sub	ecx, r8d
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	edx, BYTE PTR [r8]
	add	edx, ecx
	mov	ecx, 255
	cmp	dx, cx
	cmova	edx, ecx
	mov	BYTE PTR [r8], dl
	mov	rdx, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rdx], 16
	jmp	.L942
.L968:
	sub	ecx, r8d
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	edx, BYTE PTR [r8]
	add	edx, ecx
	mov	ecx, 255
	cmp	dx, cx
	cmova	edx, ecx
	mov	BYTE PTR [r8], dl
	mov	rdx, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rdx], 16
	jmp	.L941
	.seh_endproc
	.p2align 4
	.globl	Player_TryMidAirAction
	.def	Player_TryMidAirAction;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryMidAirAction
Player_TryMidAirAction:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	test	eax, 536870912
	jne	.L971
	movzx	edx, WORD PTR 102[rcx]
	mov	r8, QWORD PTR .refptr.gPlayerControls[rip]
	mov	r9d, edx
	and	r9w, WORD PTR 2[r8]
	je	.L972
	movzx	r9d, BYTE PTR 141[rcx]
	cmp	r9b, 3
	je	.L973
	jg	.L974
	test	r9b, r9b
	je	.L975
	cmp	r9b, 1
	jne	.L972
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	cmp	ax, 128
	je	.L1003
	call	Player_Cream_InitMidAirChaoAttack
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L974:
	cmp	r9b, 4
	je	.L975
	.p2align 4,,10
	.p2align 3
.L972:
	and	dx, WORD PTR [r8]
	je	.L971
	cmp	BYTE PTR 141[rcx], 4
	ja	.L971
	movzx	edx, BYTE PTR 141[rcx]
	lea	r8, .L982[rip]
	movsx	rdx, DWORD PTR [r8+rdx*4]
	add	rdx, r8
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L982:
	.long	.L986-.L982
	.long	.L985-.L982
	.long	.L984-.L982
	.long	.L983-.L982
	.long	.L981-.L982
	.text
	.p2align 4,,10
	.p2align 3
.L986:
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	r8d, edx
	and	r8d, 3
	cmp	r8b, 2
	je	.L987
	cmp	dl, 28
	je	.L1004
	cmp	dl, 29
	je	.L987
.L989:
	mov	rdx, QWORD PTR .refptr.gHomingTarget[rip]
	cmp	DWORD PTR [rdx], 16383
	jle	.L1005
.L987:
	or	eax, 536870912
	mov	r8d, 18
	mov	edx, DWORD PTR 16[rcx]
	mov	WORD PTR 108[rcx], r8w
	mov	r8d, 1
	mov	DWORD PTR 36[rcx], eax
	mov	ecx, DWORD PTR 12[rcx]
	sar	edx, 8
	sar	ecx, 8
	call	CreateSonicAmySkidAttackEffect
	mov	ecx, 113
.L990:
	call	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L971:
	xor	eax, eax
.L970:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L973:
	call	Player_Knuckles_InitDrillClaw
.L977:
	mov	eax, 1
	jmp	.L970
	.p2align 4,,10
	.p2align 3
.L975:
	call	Player_SonicAmy_InitStopNSlam
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L983:
	test	al, 64
	jne	.L971
	call	Player_Knuckles_InitGlide
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L984:
	test	al, 64
	jne	.L971
	mov	QWORD PTR 48[rsp], rcx
	call	Player_Tails_InitFlying
	mov	rcx, QWORD PTR 48[rsp]
	or	DWORD PTR 36[rcx], 536870912
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L985:
	call	Player_Cream_InitFlying
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L981:
	or	eax, 536870912
	xor	edx, edx
	mov	DWORD PTR 36[rcx], eax
	mov	eax, 18
	mov	WORD PTR 108[rcx], ax
	mov	WORD PTR 22[rcx], dx
	mov	ecx, 2
	call	CreateAmyAttackHeartEffect
	mov	ecx, 129
	jmp	.L990
	.p2align 4,,10
	.p2align 3
.L1003:
	call	Player_Cream_InitChaoRollingAttack
	jmp	.L977
.L1004:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L989
	jmp	.L987
.L1005:
	call	Player_Sonic_InitHomingAttack
	jmp	.L977
	.seh_endproc
	.p2align 4
	.globl	Player_HandleBoostThreshold
	.def	Player_HandleBoostThreshold;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleBoostThreshold
Player_HandleBoostThreshold:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	eax, 4
	cmp	dx, 149
	ja	.L1007
	mov	eax, 3
	cmp	dx, 99
	jbe	.L1011
.L1007:
	mov	WORD PTR 90[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L1011:
	mov	eax, 2
	cmp	dx, 49
	ja	.L1007
	xor	eax, eax
	cmp	dx, 10
	seta	al
	mov	WORD PTR 90[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_HandleBoostState
	.def	Player_HandleBoostState;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleBoostState
Player_HandleBoostState:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 2
	cmp	BYTE PTR 98[rcx], 0
	je	.L1013
	test	eax, eax
	jne	.L1012
	movzx	edx, WORD PTR 90[rcx]
	lea	rax, playerBoostThresholdTable[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
	movzx	edx, WORD PTR 24[rcx]
	mov	WORD PTR 96[rcx], ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 1151
	ja	.L1012
	xor	edx, edx
	mov	BYTE PTR 98[rcx], 0
	mov	WORD PTR 96[rcx], dx
.L1012:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L1013:
	test	eax, eax
	jne	.L1017
	movzx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	movzx	eax, ax
	cmp	eax, DWORD PTR 76[rcx]
	jl	.L1017
	movzx	edx, WORD PTR 90[rcx]
	lea	rax, playerBoostThresholdTable[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
	cmp	WORD PTR 96[rcx], ax
	jl	.L1012
	mov	BYTE PTR 98[rcx], 1
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	DWORD PTR 8[rax], 1024
	call	CreateBoostModeParticles
	mov	ecx, 221
	add	rsp, 40
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L1017:
	xor	eax, eax
	mov	WORD PTR 96[rcx], ax
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_PlayerMain
	.def	Task_PlayerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_PlayerMain
Task_PlayerMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	eax, 4
	cmp	dx, 149
	ja	.L1019
	mov	eax, 3
	cmp	dx, 99
	jbe	.L1054
.L1019:
	lea	rbx, gPlayer[rip]
	mov	WORD PTR gPlayer[rip+90], ax
	mov	rcx, rbx
	call	Player_HandleBoostState
	cmp	BYTE PTR gPlayer[rip+98], 0
	movzx	edx, WORD PTR gPlayer[rip+90]
	jne	.L1040
	mov	eax, DWORD PTR gPlayer[rip+36]
	mov	r8d, 1536
	and	eax, 4
	cmp	eax, 1
	sbb	eax, eax
	and	eax, -1536
	add	eax, 3840
.L1020:
	lea	rcx, playerBoostPhysicsTable[rip]
	movd	xmm0, eax
	movd	xmm3, r8d
	movsx	esi, WORD PTR [rcx+rdx*4]
	movsx	edx, WORD PTR 2[rcx+rdx*4]
	punpckldq	xmm0, xmm3
	movd	xmm2, edx
	movzx	edx, WORD PTR gPlayer[rip+24]
	movd	xmm1, esi
	punpckldq	xmm1, xmm2
	mov	eax, edx
	punpcklqdq	xmm0, xmm1
	neg	ax
	movups	XMMWORD PTR gPlayer[rip+72], xmm0
	cmovs	eax, edx
	xor	edx, edx
	cmp	ax, 320
	jbe	.L1021
	mov	edx, 1
	cmp	ax, 640
	ja	.L1055
.L1021:
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	mov	rcx, rbx
	mov	WORD PTR gPlayer[rip+92], dx
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gWorldSpeedY[rip]
	mov	DWORD PTR [rax], 0
	call	Player_HandleInputs
	mov	rcx, rbx
	call	InputBuffer_HandleFrameInput
	mov	rcx, rbx
	call	Player_HandleWater
	mov	rcx, rbx
	call	CallPlayerTransition
	test	BYTE PTR gPlayer[rip+38], 64
	jne	.L1022
	mov	rcx, rbx
	call	[QWORD PTR gPlayer[rip]]
.L1023:
	mov	rdx, QWORD PTR gPlayer[rip+160]
	mov	rcx, rbx
	call	sub_802486C
	mov	rcx, rbx
	call	sub_8024B10
	mov	rdx, QWORD PTR gPlayer[rip+168]
	mov	rcx, rbx
	call	sub_8024F74
	cmp	WORD PTR gPlayer[rip+108], 20
	je	.L1026
	movzx	eax, WORD PTR gPlayer[rip+48]
	test	ax, ax
	jle	.L1026
	sub	eax, 1
	mov	WORD PTR gPlayer[rip+48], ax
.L1026:
	movzx	eax, BYTE PTR gPlayer[rip+58]
	test	al, al
	je	.L1027
	sub	eax, 1
	mov	BYTE PTR gPlayer[rip+58], al
.L1027:
	mov	rcx, rbx
	call	sub_8023748
	call	BoostEffect_StorePlayerPos
	call	BoostEffect_StorePlayerState
	mov	eax, DWORD PTR gPlayer[rip+36]
	xor	r11d, r11d
	mov	edx, eax
	and	dh, -9
	mov	DWORD PTR gPlayer[rip+36], edx
	mov	rdx, QWORD PTR .refptr.gHomingTarget[rip]
	mov	DWORD PTR [rdx], 16384
	mov	WORD PTR 4[rdx], r11w
	mov	rdx, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	DWORD PTR [rdx], 40000
	mov	QWORD PTR 8[rdx], 0
	test	al, -128
	je	.L1018
	mov	rdx, QWORD PTR .refptr.gCurTask[rip]
	lea	rsi, Task_PlayerDied[rip]
	mov	r9d, 22
	xor	r10d, r10d
	mov	WORD PTR gPlayer[rip+20], r10w
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR 40[rdx], rsi
	movzx	edx, WORD PTR gPlayer[rip+22]
	mov	WORD PTR gPlayer[rip+108], r9w
	cmp	dx, -1024
	jge	.L1029
	mov	r8d, -512
	mov	WORD PTR gPlayer[rip+22], r8w
.L1030:
	and	eax, -2089
	mov	edx, 2
	mov	BYTE PTR gPlayer[rip+59], 0
	mov	DWORD PTR gPlayer[rip+36], eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	WORD PTR gPlayer[rip+48], dx
	or	WORD PTR 80[rax], 3
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	QWORD PTR gPlayer[rip+64], 0
	cmp	BYTE PTR [rax], 2
	ja	.L1031
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 1
.L1031:
	mov	rdx, QWORD PTR gPlayer[rip+160]
	mov	rbx, QWORD PTR .refptr.gSongTable[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	DWORD PTR gPlayer[rip+136], 16777472
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR [rsi]
	cmp	rax, QWORD PTR 496[rbx]
	je	.L1056
.L1032:
	cmp	QWORD PTR 464[rbx], rax
	je	.L1057
.L1033:
	mov	ecx, 31
	call	m4aSongNumStop
	movzx	eax, BYTE PTR gPlayer[rip+141]
	cmp	al, 2
	je	.L1058
.L1034:
	cmp	al, 1
	je	.L1059
.L1035:
	cmp	BYTE PTR gPlayer[rip+142], 0
	mov	ecx, 157
	js	.L1053
	mov	ecx, 119
.L1053:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L1040:
	mov	r8d, 3072
	mov	eax, 3840
	jmp	.L1020
	.p2align 4,,10
	.p2align 3
.L1018:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1055:
	mov	edx, 2
	cmp	ax, 1024
	jbe	.L1021
	mov	edx, 3
	cmp	ax, 2304
	jbe	.L1021
	xor	edx, edx
	cmp	ax, 2560
	seta	dl
	add	edx, 4
	jmp	.L1021
	.p2align 4,,10
	.p2align 3
.L1054:
	mov	eax, 2
	cmp	dx, 49
	ja	.L1019
	xor	eax, eax
	cmp	dx, 10
	seta	al
	jmp	.L1019
	.p2align 4,,10
	.p2align 3
.L1029:
	test	dx, dx
	jle	.L1030
	xor	ecx, ecx
	mov	WORD PTR gPlayer[rip+22], cx
	jmp	.L1030
	.p2align 4,,10
	.p2align 3
.L1022:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L1024
	cmp	al, 28
	je	.L1060
	cmp	al, 29
	jne	.L1023
.L1024:
	mov	rcx, rbx
	call	sub_80232D0
	jmp	.L1023
	.p2align 4,,10
	.p2align 3
.L1060:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	je	.L1024
	jmp	.L1023
	.p2align 4,,10
	.p2align 3
.L1059:
	mov	ecx, 227
	call	m4aSongNumStop
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1058:
	mov	ecx, 120
	call	m4aSongNumStop
	movzx	eax, BYTE PTR gPlayer[rip+141]
	jmp	.L1034
	.p2align 4,,10
	.p2align 3
.L1057:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStartOrContinue
	jmp	.L1033
	.p2align 4,,10
	.p2align 3
.L1056:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStartOrContinue
	mov	rax, QWORD PTR [rsi]
	jmp	.L1032
	.seh_endproc
	.p2align 4
	.globl	Player_HandleWalkAnim
	.def	Player_HandleWalkAnim;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleWalkAnim
Player_HandleWalkAnim:
	.seh_endprologue
	movzx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	xor	edx, edx
	cmp	ax, 320
	jbe	.L1062
	mov	edx, 1
	cmp	ax, 640
	ja	.L1068
.L1062:
	mov	WORD PTR 92[rcx], dx
	ret
	.p2align 4,,10
	.p2align 3
.L1068:
	mov	edx, 2
	cmp	ax, 1024
	jbe	.L1062
	mov	edx, 3
	cmp	ax, 2304
	jbe	.L1062
	xor	edx, edx
	cmp	ax, 2560
	seta	dl
	add	edx, 4
	jmp	.L1062
	.seh_endproc
	.p2align 4
	.globl	CallSetStageSpawnPos
	.def	CallSetStageSpawnPos;	.scl	2;	.type	32;	.endef
	.seh_proc	CallSetStageSpawnPos
CallSetStageSpawnPos:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	mov	BYTE PTR 104[r9], r8b
	mov	BYTE PTR 141[r9], cl
	je	.L1070
	mov	rax, QWORD PTR .refptr.gSpawnPositions[rip]
	mov	edx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
.L1071:
	mov	DWORD PTR 124[r9], eax
	lea	rcx, gPlayerBodyPSI[rip]
	lea	rax, gPlayerLimbsPSI[rip]
	movq	xmm0, rcx
	movq	xmm1, rax
	mov	BYTE PTR 192[r9], 0
	mov	DWORD PTR 128[r9], 0
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 160[r9], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1070:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	mov	QWORD PTR 12[r9], -1
	shr	al, 4
	and	eax, 3
	lea	eax, [rax+rax*4]
	sal	eax, 2
	neg	eax
	add	ax, 360
	movzx	eax, ax
	or	eax, 11599872
	jmp	.L1071
	.seh_endproc
	.p2align 4
	.globl	DestroyPlayerTasks
	.def	DestroyPlayerTasks;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyPlayerTasks
DestroyPlayerTasks:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR 152[rcx]
	call	TaskDestroy
	cmp	BYTE PTR 104[rbx], 0
	mov	QWORD PTR 152[rbx], 0
	je	.L1074
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1074:
	call	DestroyBrakingDustEffectRelatedTask
	nop
	add	rsp, 32
	pop	rbx
	jmp	DestroyRingsScatterTask
	.seh_endproc
	.p2align 4
	.globl	sub_8029A28
	.def	sub_8029A28;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029A28
sub_8029A28:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	test	rdx, rdx
	mov	rbx, rdx
	lea	rax, 43[rsp]
	cmove	rbx, rax
	lea	rax, 44[rsp]
	test	r8, r8
	cmove	r8, rax
	mov	rdx, rbx
	call	sub_802195C
	movzx	edx, BYTE PTR [rbx]
	test	dl, 1
	je	.L1078
	mov	BYTE PTR [rbx], 0
.L1075:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1078:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rcx], -128
	je	.L1075
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR [rbx], cl
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029A74
	.def	sub_8029A74;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029A74
sub_8029A74:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	test	rdx, rdx
	mov	rbx, rdx
	lea	rax, 43[rsp]
	cmove	rbx, rax
	lea	rax, 44[rsp]
	test	r8, r8
	cmove	r8, rax
	mov	rdx, rbx
	call	sub_8021A34
	movzx	edx, BYTE PTR [rbx]
	test	dl, 1
	je	.L1088
	mov	BYTE PTR [rbx], 0
.L1085:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1088:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rcx], -128
	je	.L1085
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR [rbx], cl
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029AC0
	.def	sub_8029AC0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029AC0
sub_8029AC0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	test	rdx, rdx
	mov	rbx, rdx
	lea	rax, 43[rsp]
	cmove	rbx, rax
	lea	rax, 44[rsp]
	test	r8, r8
	cmove	r8, rax
	mov	rdx, rbx
	call	sub_8021B08
	movzx	edx, BYTE PTR [rbx]
	test	dl, 1
	je	.L1098
	mov	BYTE PTR [rbx], 0
.L1095:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1098:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rcx], -128
	je	.L1095
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR [rbx], cl
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029BB8
	.def	sub_8029BB8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029BB8
sub_8029BB8:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	test	rdx, rdx
	mov	rdi, rdx
	lea	rax, 57[rsp]
	mov	rbx, rcx
	cmove	rdi, rax
	mov	rsi, r8
	test	r8, r8
	mov	ecx, DWORD PTR 16[rcx]
	lea	rax, 60[rsp]
	mov	edx, DWORD PTR 12[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	cmove	rsi, rax
	movsx	eax, BYTE PTR 27[rbx]
	sar	ecx, 8
	sar	edx, 8
	add	ecx, eax
	movsx	eax, BYTE PTR 26[rbx]
	add	eax, 2
	sub	edx, eax
	cmp	WORD PTR 22[rbx], 0
	jns	.L1108
	or	r8d, -128
.L1108:
	mov	r12, QWORD PTR .refptr.sub_801EE64[rip]
	lea	rax, 58[rsp]
	movzx	r8d, r8b
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], r12
	call	sub_801E4E4
	mov	ecx, DWORD PTR 16[rbx]
	movsx	edx, BYTE PTR 26[rbx]
	mov	ebp, eax
	movsx	eax, BYTE PTR 27[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	add	ecx, eax
	mov	eax, DWORD PTR 12[rbx]
	sar	eax, 8
	cmp	WORD PTR 22[rbx], 0
	lea	edx, 2[rax+rdx]
	jns	.L1109
	or	r8d, -128
.L1109:
	lea	rax, 59[rsp]
	mov	QWORD PTR 40[rsp], r12
	mov	r9d, 8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	cmp	ebp, eax
	jge	.L1110
	movzx	edx, BYTE PTR 58[rsp]
.L1111:
	mov	BYTE PTR [rdi], dl
	mov	DWORD PTR [rsi], eax
	mov	eax, ebp
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L1110:
	mov	ecx, ebp
	movzx	edx, BYTE PTR 59[rsp]
	mov	ebp, eax
	mov	eax, ecx
	jmp	.L1111
	.seh_endproc
	.p2align 4
	.globl	sub_8022F58
	.def	sub_8022F58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022F58
sub_8022F58:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	eax, ecx
	mov	rcx, rdx
	movzx	edx, al
	mov	dh, al
	movzx	eax, al
	add	eax, 32
	mov	WORD PTR 44[rcx], dx
	lea	rdx, 44[rsp]
	shr	eax, 6
	and	eax, 3
	cmp	eax, 2
	je	.L1115
	cmp	eax, 3
	je	.L1116
	cmp	eax, 1
	je	.L1117
	lea	r8, 48[rsp]
	call	sub_8029BB8
	add	rsp, 72
	ret
	.p2align 4,,10
	.p2align 3
.L1116:
	lea	r8, 60[rsp]
	call	sub_8021A34
	add	rsp, 72
	ret
	.p2align 4,,10
	.p2align 3
.L1115:
	lea	r8, 56[rsp]
	call	sub_8021B08
	add	rsp, 72
	ret
	.p2align 4,,10
	.p2align 3
.L1117:
	lea	r8, 52[rsp]
	call	sub_802195C
	add	rsp, 72
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_8026BCC
	.def	Player_8026BCC;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8026BCC
Player_8026BCC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rbx, rcx
	movzx	ecx, BYTE PTR 40[rcx]
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR [rdx]
	je	.L1120
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, -128
	sub	eax, ecx
	test	BYTE PTR [rdx], -128
	mov	rdx, rbx
	cmovne	ecx, eax
	add	ecx, -128
	movzx	ecx, cl
	call	sub_8022F58
	cmp	eax, 3
	jg	.L1129
.L1120:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.p2align 4,,10
	.p2align 3
.L1129:
	lea	rax, Player_InitJump[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_DoGrinding
	.def	Player_DoGrinding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_DoGrinding
Player_DoGrinding:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbx, rcx
	movzx	ecx, BYTE PTR 40[rcx]
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR [rdx]
	je	.L1131
	mov	eax, -128
	mov	rdx, rbx
	sub	eax, ecx
	test	BYTE PTR [rsi], -128
	cmovne	ecx, eax
	add	ecx, -128
	movzx	ecx, cl
	call	sub_8022F58
	cmp	eax, 3
	jg	.L1133
	movzx	ecx, BYTE PTR 40[rbx]
.L1131:
	mov	eax, DWORD PTR 36[rbx]
	movzx	edx, WORD PTR 24[rbx]
	mov	r8d, eax
	or	eax, 1
	and	r8d, -2
	test	dx, dx
	cmovns	eax, r8d
	mov	DWORD PTR 36[rbx], eax
	lea	eax, 96[rcx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L1136
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	sal	ecx, 2
	movsx	rcx, ecx
	movzx	eax, WORD PTR [rax+rcx*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*4]
	sar	eax, 5
	add	edx, eax
	mov	WORD PTR 24[rbx], dx
.L1136:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	mov	edx, DWORD PTR 36[rbx]
	movzx	eax, WORD PTR 22[rbx]
	test	dl, 2
	jne	.L1137
.L1138:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	ecx, WORD PTR [rsi]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	mov	ecx, 114
	call	m4aSongNumStartOrContinue
	test	BYTE PTR 36[rbx], 2
	jne	.L1152
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L1153
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1137:
	lea	ecx, 12[rax]
	add	eax, 42
	and	edx, 64
	cmovne	eax, ecx
	jmp	.L1138
	.p2align 4,,10
	.p2align 3
.L1133:
	mov	rdx, QWORD PTR 160[rbx]
	lea	rax, Player_InitJump[rip]
	mov	ecx, 114
	and	DWORD PTR gPlayer[rip+36], -1073741825
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	BYTE PTR 59[rbx], 127
	mov	BYTE PTR 60[rbx], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStop
	.p2align 4,,10
	.p2align 3
.L1153:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateGrindEffect2
	.p2align 4,,10
	.p2align 3
.L1152:
	mov	rdx, QWORD PTR 160[rbx]
	mov	eax, 14
	mov	ecx, 114
	and	DWORD PTR gPlayer[rip+36], -1073741825
	mov	WORD PTR 108[rbx], ax
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	BYTE PTR 59[rbx], 127
	mov	BYTE PTR 60[rbx], 1
	call	m4aSongNumStop
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_InitGrinding
	.def	Player_InitGrinding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitGrinding
Player_InitGrinding:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbx
	mov	r11d, DWORD PTR 36[rbx]
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 41
	cmp	BYTE PTR 118[rbx], 0
	mov	WORD PTR 26[rbx], ax
	mov	WORD PTR 108[rbx], dx
	je	.L1155
	movzx	eax, WORD PTR 20[rbx]
	and	r11d, -5
	mov	edx, -256
	or	r11d, 16777217
	mov	DWORD PTR 36[rbx], r11d
	cmp	ax, dx
	cmovg	eax, edx
.L1156:
	mov	WORD PTR 20[rbx], ax
	mov	rcx, rbx
	mov	WORD PTR 24[rbx], ax
	call	InitPlayerGrindGraphics
	mov	ecx, 114
	call	m4aSongNumStart
	lea	rax, Player_DoGrinding[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_DoGrinding
	.p2align 4,,10
	.p2align 3
.L1155:
	movzx	eax, WORD PTR 20[rbx]
	and	r11d, -6
	mov	edx, 256
	or	r11d, 16777216
	cmp	ax, dx
	mov	DWORD PTR 36[rbx], r11d
	cmovl	eax, edx
	jmp	.L1156
	.seh_endproc
	.p2align 4
	.globl	sub_8029B0C
	.def	sub_8029B0C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029B0C
sub_8029B0C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	test	rdx, rdx
	mov	rbx, rdx
	lea	rax, 43[rsp]
	cmove	rbx, rax
	lea	rax, 44[rsp]
	test	r8, r8
	cmove	r8, rax
	mov	rdx, rbx
	call	sub_8029BB8
	movzx	edx, BYTE PTR [rbx]
	test	dl, 1
	je	.L1160
	mov	BYTE PTR [rbx], 0
.L1157:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1160:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rcx], -128
	je	.L1157
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR [rbx], cl
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029B58
	.def	sub_8029B58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029B58
sub_8029B58:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L1168
	jmp	sub_8029B0C
	.p2align 4,,10
	.p2align 3
.L1168:
	jmp	sub_8029AC0
	.seh_endproc
	.p2align 4
	.globl	sub_8029B88
	.def	sub_8029B88;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029B88
sub_8029B88:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L1170
	jmp	sub_8029AC0
	.p2align 4,,10
	.p2align 3
.L1170:
	jmp	sub_8029B0C
	.seh_endproc
	.p2align 4
	.globl	sub_8022218
	.def	sub_8022218;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022218
sub_8022218:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbx, rcx
	lea	rdx, 43[rsp]
	lea	r8, 44[rsp]
	test	BYTE PTR [rsi], -128
	je	.L1172
	call	sub_8021B08
	movzx	edx, BYTE PTR 43[rsp]
	test	dl, 1
	je	.L1191
.L1173:
	mov	BYTE PTR 43[rsp], 0
	test	eax, eax
	jle	.L1193
.L1171:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1172:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 43[rsp]
	test	dl, 1
	jne	.L1173
.L1191:
	test	BYTE PTR [rsi], -128
	je	.L1174
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 43[rsp], cl
	test	eax, eax
	jg	.L1171
	movzx	edx, BYTE PTR 43[rsp]
	neg	eax
.L1178:
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], dl
	call	sub_8021BE0
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1174:
	test	eax, eax
	jle	.L1178
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1193:
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	je	.L1178
	movzx	edx, BYTE PTR 43[rsp]
	neg	eax
	jmp	.L1178
	.seh_endproc
	.p2align 4
	.globl	sub_8022284
	.def	sub_8022284;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022284
sub_8022284:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbx, rcx
	lea	rdx, 43[rsp]
	lea	r8, 44[rsp]
	test	BYTE PTR [rsi], -128
	je	.L1195
	call	sub_8029BB8
	movzx	r11d, BYTE PTR 43[rsp]
	test	r11b, 1
	je	.L1216
.L1196:
	mov	BYTE PTR 43[rsp], 0
	test	eax, eax
	jle	.L1218
.L1194:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1195:
	call	sub_8021B08
	movzx	r11d, BYTE PTR 43[rsp]
	test	r11b, 1
	jne	.L1196
.L1216:
	test	BYTE PTR [rsi], -128
	je	.L1197
	mov	edx, -128
	sub	edx, r11d
	mov	BYTE PTR 43[rsp], dl
	test	eax, eax
	jg	.L1194
	movzx	r11d, BYTE PTR 43[rsp]
	neg	eax
.L1201:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], r11b
	call	sub_8021BE0
	movzx	edx, WORD PTR 22[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, eax
	neg	edx
	test	r11b, r11b
	cmovns	eax, edx
	cmp	BYTE PTR 118[rbx], 0
	mov	WORD PTR 24[rbx], ax
	je	.L1194
	xor	DWORD PTR 36[rbx], 1
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1197:
	test	eax, eax
	jle	.L1201
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1218:
	xor	r11d, r11d
	test	BYTE PTR [rsi], -128
	je	.L1201
	movzx	r11d, BYTE PTR 43[rsp]
	neg	eax
	jmp	.L1201
	.seh_endproc
	.p2align 4
	.globl	Player_8026D2C
	.def	Player_8026D2C;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8026D2C
Player_8026D2C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80246DC
	mov	rcx, rbx
	call	Player_AirInputControls
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L1220
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L1238
	jne	.L1239
	.p2align 4,,10
	.p2align 3
.L1220:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	je	.L1222
	add	eax, 12
.L1223:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	ecx, r8d
	and	ecx, 128
	mov	ecx, DWORD PTR 16[rbx]
	cmovne	eax, edx
	mov	edx, 3840
	mov	r9d, ecx
	cmp	ax, dx
	cmovle	edx, eax
	mov	WORD PTR 22[rbx], dx
	movsx	edx, dx
	sub	r9d, edx
	add	ecx, edx
	and	r8d, 128
	movsx	edx, BYTE PTR 40[rbx]
	cmovne	ecx, r9d
	mov	DWORD PTR 16[rbx], ecx
	test	edx, edx
	js	.L1240
	mov	ecx, 2
	cmp	edx, ecx
	cmovge	ecx, edx
	sub	ecx, 2
	test	edx, edx
	mov	edx, 0
	cmovne	edx, ecx
.L1228:
	mov	BYTE PTR 40[rbx], dl
	mov	rcx, rbx
	test	ax, ax
	js	.L1229
	call	sub_8022218
	mov	rcx, rbx
	call	sub_8022284
.L1230:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1219
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1219:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1222:
	add	eax, 42
	jmp	.L1223
	.p2align 4,,10
	.p2align 3
.L1238:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1229:
	call	sub_8022284
	mov	rcx, rbx
	call	sub_8022218
	jmp	.L1230
	.p2align 4,,10
	.p2align 3
.L1240:
	mov	ecx, -2
	cmp	edx, ecx
	cmovg	edx, ecx
	add	edx, 2
	jmp	.L1228
	.p2align 4,,10
	.p2align 3
.L1239:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1220
	.seh_endproc
	.p2align 4
	.globl	sub_80224DC
	.def	sub_80224DC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80224DC
sub_80224DC:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	movzx	ebp, BYTE PTR 60[rcx]
	mov	esi, ebp
	mov	r8d, ebp
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	add	eax, 3
	sar	edx, 8
	sub	ecx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L1242
	or	r8d, -128
	movzx	r8d, r8b
.L1242:
	mov	rdi, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rdi
	call	sub_801E4E4
	test	eax, eax
	jle	.L1243
	mov	edx, DWORD PTR 12[rbx]
.L1244:
	movsx	eax, BYTE PTR 26[rbx]
	sar	edx, 8
	lea	ecx, 3[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	sar	edx, 8
	cmp	WORD PTR 22[rbx], 767
	jg	.L1245
	or	esi, -128
	movzx	ebp, sil
.L1245:
	mov	QWORD PTR 40[rsp], rdi
	mov	r9d, 8
	mov	r8d, ebp
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jg	.L1246
	sal	eax, 8
	xor	edx, edx
	add	DWORD PTR 12[rbx], eax
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], dx
.L1246:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rdx, 59[rsp]
	lea	r8, 60[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1247
	call	sub_8029BB8
	test	BYTE PTR 59[rsp], 1
	je	.L1267
.L1248:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1269
.L1241:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1247:
	call	sub_8021B08
	test	BYTE PTR 59[rsp], 1
	jne	.L1248
.L1267:
	test	BYTE PTR [rsi], -128
	je	.L1249
	test	eax, eax
	jg	.L1241
.L1254:
	neg	eax
.L1253:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
.L1270:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1249:
	test	eax, eax
	jle	.L1253
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1269:
	test	BYTE PTR [rsi], -128
	jne	.L1254
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	jmp	.L1270
	.p2align 4,,10
	.p2align 3
.L1243:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	xor	ecx, ecx
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], cx
	sub	edx, eax
	mov	DWORD PTR 12[rbx], edx
	jmp	.L1244
	.seh_endproc
	.p2align 4
	.globl	sub_8021DB8
	.def	sub_8021DB8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021DB8
sub_8021DB8:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	movzx	ebp, BYTE PTR 60[rcx]
	mov	esi, ebp
	mov	r8d, ebp
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	add	eax, 3
	sar	edx, 8
	sub	ecx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L1272
	or	r8d, -128
	movzx	r8d, r8b
.L1272:
	mov	rdi, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rdi
	call	sub_801E4E4
	test	eax, eax
	jle	.L1273
	mov	edx, DWORD PTR 12[rbx]
.L1274:
	movsx	eax, BYTE PTR 26[rbx]
	sar	edx, 8
	lea	ecx, 3[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	sar	edx, 8
	cmp	WORD PTR 22[rbx], 767
	jg	.L1275
	or	esi, -128
	movzx	ebp, sil
.L1275:
	mov	QWORD PTR 40[rsp], rdi
	mov	r9d, 8
	mov	r8d, ebp
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jg	.L1276
	sal	eax, 8
	xor	edx, edx
	add	DWORD PTR 12[rbx], eax
	mov	WORD PTR 20[rbx], dx
.L1276:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rdx, 59[rsp]
	lea	r8, 60[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1277
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1302
.L1278:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1303
.L1271:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1277:
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1278
.L1302:
	test	BYTE PTR [rsi], -128
	je	.L1279
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1271
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
.L1283:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	lea	eax, 32[rdx]
	test	al, 64
	je	.L1284
	cmp	dl, 64
	jg	.L1304
.L1284:
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1279:
	test	eax, eax
	jle	.L1283
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1303:
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	je	.L1283
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
	jmp	.L1283
	.p2align 4,,10
	.p2align 3
.L1273:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	xor	ecx, ecx
	mov	WORD PTR 20[rbx], cx
	sub	edx, eax
	mov	DWORD PTR 12[rbx], edx
	jmp	.L1274
	.p2align 4,,10
	.p2align 3
.L1304:
	mov	BYTE PTR 40[rbx], dl
	mov	rcx, rbx
	call	sub_8021BE0
	movzx	edx, WORD PTR 22[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	WORD PTR 24[rbx], ax
	jmp	.L1271
	.seh_endproc
	.p2align 4
	.globl	sub_80223BC
	.def	sub_80223BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80223BC
sub_80223BC:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	movzx	ebp, BYTE PTR 60[rcx]
	mov	esi, ebp
	mov	r8d, ebp
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	add	eax, 3
	sar	edx, 8
	sub	ecx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L1306
	or	r8d, -128
	movzx	r8d, r8b
.L1306:
	mov	rdi, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rdi
	call	sub_801E4E4
	test	eax, eax
	jle	.L1307
	mov	edx, DWORD PTR 12[rbx]
.L1308:
	movsx	eax, BYTE PTR 26[rbx]
	sar	edx, 8
	lea	ecx, 3[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	sar	edx, 8
	cmp	WORD PTR 22[rbx], 767
	jg	.L1309
	or	esi, -128
	movzx	ebp, sil
.L1309:
	mov	QWORD PTR 40[rsp], rdi
	mov	r9d, 8
	mov	r8d, ebp
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jg	.L1310
	sal	eax, 8
	xor	edx, edx
	add	DWORD PTR 12[rbx], eax
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], dx
.L1310:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rdx, 59[rsp]
	lea	r8, 60[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1311
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1331
.L1312:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1332
.L1305:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1311:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1312
.L1331:
	test	BYTE PTR [rsi], -128
	je	.L1313
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1305
.L1318:
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
.L1317:
	sal	eax, 8
	and	BYTE PTR 196[rbx], -3
	add	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	BYTE PTR 40[rbx], dl
	mov	WORD PTR 22[rbx], ax
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1313:
	test	eax, eax
	jle	.L1317
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1332:
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	je	.L1317
	jmp	.L1318
	.p2align 4,,10
	.p2align 3
.L1307:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	xor	ecx, ecx
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], cx
	sub	edx, eax
	mov	DWORD PTR 12[rbx], edx
	jmp	.L1308
	.seh_endproc
	.p2align 4
	.globl	sub_8021C4C
	.def	sub_8021C4C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021C4C
sub_8021C4C:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	movzx	ebp, BYTE PTR 60[rcx]
	mov	esi, ebp
	mov	r8d, ebp
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	add	eax, 3
	sar	edx, 8
	sub	ecx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L1334
	or	r8d, -128
	movzx	r8d, r8b
.L1334:
	mov	rdi, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rdi
	call	sub_801E4E4
	test	eax, eax
	jle	.L1335
	mov	edx, DWORD PTR 12[rbx]
.L1336:
	movsx	eax, BYTE PTR 26[rbx]
	sar	edx, 8
	lea	ecx, 3[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	sar	edx, 8
	cmp	WORD PTR 22[rbx], 767
	jg	.L1337
	or	esi, -128
	movzx	ebp, sil
.L1337:
	mov	QWORD PTR 40[rsp], rdi
	mov	r9d, 8
	mov	r8d, ebp
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jg	.L1338
	sal	eax, 8
	xor	r8d, r8d
	add	DWORD PTR 12[rbx], eax
	mov	WORD PTR 20[rbx], r8w
.L1338:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rdx, 59[rsp]
	lea	r8, 60[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1339
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1342
.L1364:
	mov	BYTE PTR 59[rsp], 0
.L1345:
	test	eax, eax
	js	.L1366
.L1333:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1339:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1364
.L1342:
	test	BYTE PTR [rsi], -128
	je	.L1345
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jns	.L1333
.L1366:
	movzx	r11d, WORD PTR 22[rbx]
	mov	edx, -6
	mov	ecx, r11d
	sar	cx, 8
	movsx	ecx, cx
	sub	edx, ecx
	cmp	eax, edx
	jge	.L1348
	cmp	DWORD PTR 60[rsp], edx
	jl	.L1333
.L1348:
	mov	edx, eax
	movzx	edi, BYTE PTR 59[rsp]
	mov	rcx, rbx
	neg	edx
	test	BYTE PTR [rsi], -128
	cmovne	eax, edx
	mov	BYTE PTR 40[rbx], dil
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	call	sub_8021BE0
	movzx	edx, dil
	lea	eax, 32[rdx]
	test	al, 64
	jne	.L1367
	add	edx, 16
	and	edx, 32
	je	.L1368
	mov	eax, r11d
	sar	ax
	mov	edx, eax
	mov	WORD PTR 22[rbx], ax
	neg	dx
	cmovns	eax, edx
	mov	edx, eax
.L1353:
	neg	eax
	test	dil, dil
	cmovns	eax, edx
	mov	WORD PTR 24[rbx], ax
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1335:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	xor	r9d, r9d
	mov	WORD PTR 20[rbx], r9w
	sub	edx, eax
	mov	DWORD PTR 12[rbx], edx
	jmp	.L1336
	.p2align 4,,10
	.p2align 3
.L1367:
	xor	ecx, ecx
	mov	WORD PTR 20[rbx], cx
	cmp	r11w, 3024
	jg	.L1352
	mov	edx, r11d
	mov	eax, r11d
	neg	dx
	cmovns	eax, edx
	mov	edx, eax
	jmp	.L1353
	.p2align 4,,10
	.p2align 3
.L1352:
	mov	edx, 3024
	mov	eax, 3024
	mov	WORD PTR 22[rbx], dx
	mov	edx, 3024
	jmp	.L1353
	.p2align 4,,10
	.p2align 3
.L1368:
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
	jmp	.L1333
	.seh_endproc
	.p2align 4
	.globl	sub_8022710
	.def	sub_8022710;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022710
sub_8022710:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	eax, DWORD PTR 12[rcx]
	movsx	edx, BYTE PTR 26[rcx]
	sar	eax, 8
	mov	rbx, rcx
	lea	ecx, 2[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	edx, 8
	cmp	WORD PTR 22[rbx], 767
	jg	.L1370
	or	r8d, -128
.L1370:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	jg	.L1371
	sal	eax, 8
	xor	ecx, ecx
	add	DWORD PTR 12[rbx], eax
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], cx
.L1371:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rbp, 60[rsp]
	lea	rdi, 59[rsp]
	mov	rcx, rbx
	mov	r8, rbp
	mov	rdx, rdi
	test	BYTE PTR [rsi], -128
	je	.L1372
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1408
.L1373:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1411
.L1376:
	cmp	WORD PTR 22[rbx], 0
	js	.L1369
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1381
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1410
.L1382:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jg	.L1369
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	jne	.L1386
.L1385:
	sal	eax, 8
	and	BYTE PTR 196[rbx], -3
	add	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	BYTE PTR 40[rbx], dl
	mov	WORD PTR 22[rbx], ax
.L1369:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1372:
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1373
.L1408:
	test	BYTE PTR [rsi], -128
	je	.L1374
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1376
	neg	eax
.L1377:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	cmp	WORD PTR 22[rbx], 0
	jns	.L1369
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1374:
	test	eax, eax
	jg	.L1376
	jmp	.L1377
	.p2align 4,,10
	.p2align 3
.L1411:
	test	BYTE PTR [rsi], -128
	je	.L1377
	neg	eax
	jmp	.L1377
	.p2align 4,,10
	.p2align 3
.L1381:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1382
.L1410:
	test	BYTE PTR [rsi], -128
	je	.L1383
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1369
.L1386:
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
	jmp	.L1385
	.p2align 4,,10
	.p2align 3
.L1383:
	test	eax, eax
	jg	.L1369
	jmp	.L1385
	.seh_endproc
	.p2align 4
	.globl	sub_80225E8
	.def	sub_80225E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80225E8
sub_80225E8:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	movzx	r8d, BYTE PTR 60[rbx]
	add	eax, 2
	sar	edx, 8
	sub	ecx, eax
	cmp	WORD PTR 22[rbx], 767
	jg	.L1413
	or	r8d, -128
.L1413:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	jg	.L1414
	sal	eax, 8
	xor	ecx, ecx
	sub	DWORD PTR 12[rbx], eax
	or	BYTE PTR 196[rbx], 32
	mov	WORD PTR 20[rbx], cx
.L1414:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	lea	rbp, 60[rsp]
	lea	rdi, 59[rsp]
	mov	rcx, rbx
	mov	r8, rbp
	mov	rdx, rdi
	test	BYTE PTR [rsi], -128
	je	.L1415
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1451
.L1416:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1454
.L1419:
	cmp	WORD PTR 22[rbx], 0
	js	.L1412
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1424
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1453
.L1425:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jg	.L1412
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	jne	.L1429
.L1428:
	sal	eax, 8
	and	BYTE PTR 196[rbx], -3
	add	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	BYTE PTR 40[rbx], dl
	mov	WORD PTR 22[rbx], ax
.L1412:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1415:
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1416
.L1451:
	test	BYTE PTR [rsi], -128
	je	.L1417
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1419
	neg	eax
.L1420:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	cmp	WORD PTR 22[rbx], 0
	jns	.L1412
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1417:
	test	eax, eax
	jg	.L1419
	jmp	.L1420
	.p2align 4,,10
	.p2align 3
.L1454:
	test	BYTE PTR [rsi], -128
	je	.L1420
	neg	eax
	jmp	.L1420
	.p2align 4,,10
	.p2align 3
.L1424:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1425
.L1453:
	test	BYTE PTR [rsi], -128
	je	.L1426
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1412
.L1429:
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
	jmp	.L1428
	.p2align 4,,10
	.p2align 3
.L1426:
	test	eax, eax
	jg	.L1412
	jmp	.L1428
	.seh_endproc
	.p2align 4
	.globl	sub_8022838
	.def	sub_8022838;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022838
sub_8022838:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	movsx	ecx, WORD PTR 20[rcx]
	movsx	edx, WORD PTR 22[rbx]
	test	BYTE PTR 36[rbx], 8
	je	.L1456
	and	BYTE PTR 196[rbx], -3
	xor	eax, eax
	mov	WORD PTR 44[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1456:
	call	ArcTan2
	mov	rcx, rbx
	shr	ax, 8
	sub	eax, 32
	shr	al, 6
	cmp	al, 2
	je	.L1458
	cmp	al, 3
	je	.L1459
	cmp	al, 1
	je	.L1460
	add	rsp, 32
	pop	rbx
	jmp	sub_80223BC
	.p2align 4,,10
	.p2align 3
.L1459:
	add	rsp, 32
	pop	rbx
	jmp	sub_8022710
	.p2align 4,,10
	.p2align 3
.L1458:
	add	rsp, 32
	pop	rbx
	jmp	sub_80224DC
	.p2align 4,,10
	.p2align 3
.L1460:
	add	rsp, 32
	pop	rbx
	jmp	sub_80225E8
	.seh_endproc
	.p2align 4
	.globl	sub_802203C
	.def	sub_802203C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802203C
sub_802203C:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, DWORD PTR 12[rcx]
	movsx	edx, BYTE PTR 26[rcx]
	movzx	r8d, BYTE PTR 60[rcx]
	sar	eax, 8
	mov	rbx, rcx
	lea	ecx, 3[rax+rdx]
	mov	edx, DWORD PTR 16[rbx]
	sar	edx, 8
	test	BYTE PTR [rsi], -128
	jne	.L1506
	cmp	WORD PTR 22[rbx], 767
	jle	.L1507
.L1465:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
.L1464:
	test	eax, eax
	jg	.L1466
	sal	eax, 8
	add	DWORD PTR 12[rbx], eax
	movzx	eax, WORD PTR 22[rbx]
	xor	ecx, ecx
	mov	WORD PTR 20[rbx], cx
	mov	WORD PTR 24[rbx], ax
.L1466:
	lea	rbp, 60[rsp]
	lea	rdi, 59[rsp]
	mov	rcx, rbx
	mov	r8, rbp
	mov	rdx, rdi
	test	BYTE PTR [rsi], -128
	je	.L1467
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1503
.L1468:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1508
.L1471:
	cmp	WORD PTR 22[rbx], 0
	js	.L1462
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1476
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1505
.L1477:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jg	.L1462
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	jne	.L1481
.L1480:
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], dl
	call	sub_8021BE0
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1462:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1467:
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1468
.L1503:
	test	BYTE PTR [rsi], -128
	je	.L1469
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1471
	neg	eax
.L1472:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	cmp	WORD PTR 22[rbx], 0
	jns	.L1462
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1507:
	or	r8d, -128
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L1469:
	test	eax, eax
	jg	.L1471
	jmp	.L1472
	.p2align 4,,10
	.p2align 3
.L1506:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	jmp	.L1464
	.p2align 4,,10
	.p2align 3
.L1508:
	test	BYTE PTR [rsi], -128
	je	.L1472
	neg	eax
	jmp	.L1472
	.p2align 4,,10
	.p2align 3
.L1476:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1477
.L1505:
	test	BYTE PTR [rsi], -128
	je	.L1478
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1462
.L1481:
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
	jmp	.L1480
	.p2align 4,,10
	.p2align 3
.L1478:
	test	eax, eax
	jg	.L1462
	jmp	.L1480
	.seh_endproc
	.p2align 4
	.globl	sub_8021EE4
	.def	sub_8021EE4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8021EE4
sub_8021EE4:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	movzx	r8d, BYTE PTR 60[rcx]
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	movsx	eax, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	add	eax, 3
	sar	edx, 8
	sub	ecx, eax
	test	BYTE PTR [rsi], -128
	jne	.L1553
	cmp	WORD PTR 22[rbx], 767
	jle	.L1554
.L1512:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	movzx	r8d, r8b
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
.L1511:
	test	eax, eax
	jg	.L1513
	sal	eax, 8
	sub	DWORD PTR 12[rbx], eax
	movzx	eax, WORD PTR 22[rbx]
	xor	ecx, ecx
	mov	WORD PTR 20[rbx], cx
	mov	WORD PTR 24[rbx], ax
.L1513:
	lea	rbp, 60[rsp]
	lea	rdi, 59[rsp]
	mov	rcx, rbx
	mov	r8, rbp
	mov	rdx, rdi
	test	BYTE PTR [rsi], -128
	je	.L1514
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1550
.L1515:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jle	.L1555
.L1518:
	cmp	WORD PTR 22[rbx], 0
	js	.L1509
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	test	BYTE PTR [rsi], -128
	je	.L1523
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	je	.L1552
.L1524:
	mov	BYTE PTR 59[rsp], 0
	test	eax, eax
	jg	.L1509
	xor	edx, edx
	test	BYTE PTR [rsi], -128
	jne	.L1528
.L1527:
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], dl
	call	sub_8021BE0
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1509:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1514:
	call	sub_8021B08
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1515
.L1550:
	test	BYTE PTR [rsi], -128
	je	.L1516
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1518
	neg	eax
.L1519:
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
	cmp	WORD PTR 22[rbx], 0
	jns	.L1509
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1554:
	or	r8d, -128
	jmp	.L1512
	.p2align 4,,10
	.p2align 3
.L1516:
	test	eax, eax
	jg	.L1518
	jmp	.L1519
	.p2align 4,,10
	.p2align 3
.L1553:
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	jmp	.L1511
	.p2align 4,,10
	.p2align 3
.L1555:
	test	BYTE PTR [rsi], -128
	je	.L1519
	neg	eax
	jmp	.L1519
	.p2align 4,,10
	.p2align 3
.L1523:
	call	sub_8029BB8
	movzx	edx, BYTE PTR 59[rsp]
	test	dl, 1
	jne	.L1524
.L1552:
	test	BYTE PTR [rsi], -128
	je	.L1525
	mov	ecx, -128
	sub	ecx, edx
	mov	BYTE PTR 59[rsp], cl
	test	eax, eax
	jg	.L1509
.L1528:
	movzx	edx, BYTE PTR 59[rsp]
	neg	eax
	jmp	.L1527
	.p2align 4,,10
	.p2align 3
.L1525:
	test	eax, eax
	jg	.L1509
	jmp	.L1527
	.seh_endproc
	.p2align 4
	.globl	sub_8022190
	.def	sub_8022190;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8022190
sub_8022190:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movsx	edx, WORD PTR 22[rcx]
	movzx	eax, WORD PTR [rax]
	mov	r8d, edx
	mov	rbx, rcx
	movsx	ecx, WORD PTR 20[rcx]
	or	r8w, cx
	jne	.L1557
	and	eax, -128
	sub	eax, 32
	shr	al, 6
	cmp	al, 3
	je	.L1558
.L1559:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8021EE4
	.p2align 4,,10
	.p2align 3
.L1558:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_802203C
	.p2align 4,,10
	.p2align 3
.L1557:
	call	ArcTan2
	shr	ax, 8
	sub	eax, 32
	shr	al, 6
	cmp	al, 2
	jne	.L1570
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8021DB8
	.p2align 4,,10
	.p2align 3
.L1570:
	cmp	al, 3
	je	.L1558
	cmp	al, 1
	je	.L1559
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8021C4C
	.seh_endproc
	.p2align 4
	.globl	Player_Jumping
	.def	Player_Jumping;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Jumping
Player_Jumping:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	edx, eax
	and	edx, 64
	cmp	edx, 1
	mov	rbx, rcx
	sbb	esi, esi
	and	si, -384
	sub	si, 384
	test	ah, 1
	je	.L1574
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	jne	.L1575
.L1581:
	cmp	WORD PTR 22[rbx], si
	jge	.L1574
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 100[rbx]
	and	ax, WORD PTR [rdx]
	je	.L1606
	.p2align 4,,10
	.p2align 3
.L1574:
	mov	rcx, rbx
	call	sub_80246DC
	mov	rcx, rbx
	call	Player_AirInputControls
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L1582
	cmp	al, 28
	je	.L1607
	cmp	al, 29
	je	.L1582
.L1584:
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L1582
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L1608
	je	.L1582
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	.p2align 4,,10
	.p2align 3
.L1582:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	jne	.L1609
	add	eax, 42
.L1587:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1610
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1592:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1571
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1571:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1609:
	add	eax, 12
	jmp	.L1587
	.p2align 4,,10
	.p2align 3
.L1575:
	call	Player_Sonic_TryForwardThrust
	test	eax, eax
	jne	.L1571
	mov	rcx, rbx
	call	Player_TryMidAirAction
	test	eax, eax
	je	.L1581
	jmp	.L1571
	.p2align 4,,10
	.p2align 3
.L1610:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1592
	.p2align 4,,10
	.p2align 3
.L1607:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L1584
	jmp	.L1582
	.p2align 4,,10
	.p2align 3
.L1606:
	mov	WORD PTR 22[rbx], si
	jmp	.L1574
	.p2align 4,,10
	.p2align 3
.L1608:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1582
	.seh_endproc
	.p2align 4
	.globl	Player_InitJump
	.def	Player_InitJump;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitJump
Player_InitJump:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	movzx	r9d, WORD PTR 20[rbx]
	mov	BYTE PTR 120[rbx], 1
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	mov	ecx, eax
	and	ecx, -16777249
	mov	edx, ecx
	or	ecx, 274
	or	edx, 258
	test	al, 4
	mov	eax, r9d
	cmove	ecx, edx
	neg	ax
	cmovs	eax, r9d
	mov	DWORD PTR 36[rbx], ecx
	cmp	ax, 319
	seta	al
	movzx	eax, al
	add	eax, 10
	mov	WORD PTR 108[rbx], ax
	mov	eax, ecx
	and	eax, 64
	cmp	eax, 1
	movzx	eax, BYTE PTR 40[rbx]
	sbb	r8d, r8d
	sub	eax, 64
	and	r8d, 576
	movzx	eax, al
	add	r8d, 672
	lea	edx, 256[0+rax*4]
	movsx	rax, edx
	sub	edx, 256
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	ax, 6
	sar	dx, 6
	cwde
	imul	eax, r8d
	movsx	edx, dx
	imul	edx, r8d
	sar	eax, 8
	add	eax, r9d
	sar	edx, 8
	add	WORD PTR 22[rbx], dx
	and	ecx, 8
	mov	WORD PTR 20[rbx], ax
	je	.L1616
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	ecx, edx
	and	ecx, 3
	cmp	cl, 2
	je	.L1617
	cmp	dl, 28
	je	.L1627
	cmp	dl, 29
	je	.L1617
.L1616:
	mov	rax, QWORD PTR 160[rbx]
	mov	ecx, 116
	and	DWORD PTR 48[rax], -16385
	call	m4aSongNumStart
	lea	rax, Player_Jumping[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Jumping
	.p2align 4,,10
	.p2align 3
.L1627:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L1616
	.p2align 4,,10
	.p2align 3
.L1617:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 56[rdx]
	sal	edx, 8
	sub	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1616
	.seh_endproc
	.p2align 4
	.globl	Player_8025F84
	.def	Player_8025F84;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8025F84
Player_8025F84:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -16777249
	or	eax, 258
	cmp	BYTE PTR 26[rbx], 5
	mov	DWORD PTR 36[rbx], eax
	jle	.L1629
	cmp	BYTE PTR 27[rbx], 8
	jg	.L1630
.L1629:
	movsx	rcx, BYTE PTR 141[rbx]
	lea	rdx, gPlayerCharacterIdleAnims[rip]
	movzx	eax, WORD PTR 112[rbx]
	sub	ax, WORD PTR [rdx+rcx*2]
	lea	edx, -10[rax]
	cmp	dx, 1
	jbe	.L1631
	cmp	ax, 4
	je	.L1631
	cmp	ax, 70
	jne	.L1632
.L1631:
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	WORD PTR 26[rbx], dx
.L1630:
	movzx	edx, WORD PTR 20[rbx]
	mov	BYTE PTR 120[rbx], 1
	mov	ecx, 116
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 319
	seta	al
	movzx	eax, al
	add	eax, 10
	mov	WORD PTR 108[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	and	DWORD PTR 48[rax], -16385
	call	m4aSongNumStart
	lea	rax, Player_Jumping[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Jumping
	.p2align 4,,10
	.p2align 3
.L1632:
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	jmp	.L1630
	.seh_endproc
	.p2align 4
	.globl	Player_Uncurl
	.def	Player_Uncurl;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Uncurl
Player_Uncurl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80246DC
	cmp	BYTE PTR 118[rbx], 1
	jne	.L1636
	cmp	WORD PTR 22[rbx], 0
	jle	.L1639
.L1636:
	mov	rcx, rbx
	call	Player_AirInputControls
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L1639
	test	BYTE PTR 37[rbx], 1
	jne	.L1665
.L1639:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L1638
	cmp	al, 28
	je	.L1666
	cmp	al, 29
	je	.L1638
.L1644:
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L1638
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L1667
	je	.L1638
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	.p2align 4,,10
	.p2align 3
.L1638:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	jne	.L1668
	add	eax, 42
.L1647:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1669
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1652:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1635
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1635:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1668:
	add	eax, 12
	jmp	.L1647
	.p2align 4,,10
	.p2align 3
.L1669:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1652
	.p2align 4,,10
	.p2align 3
.L1666:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L1644
	jmp	.L1638
	.p2align 4,,10
	.p2align 3
.L1665:
	call	Player_Sonic_TryForwardThrust
	test	eax, eax
	jne	.L1635
	mov	rcx, rbx
	call	Player_TryMidAirAction
	test	eax, eax
	je	.L1639
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1667:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1638
	.seh_endproc
	.p2align 4
	.globl	Player_8026060
	.def	Player_8026060;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8026060
Player_8026060:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -16777249
	or	eax, 2
	cmp	BYTE PTR 26[rbx], 5
	mov	DWORD PTR 36[rbx], eax
	jle	.L1671
	cmp	BYTE PTR 27[rbx], 8
	jg	.L1672
.L1671:
	movsx	rcx, BYTE PTR 141[rbx]
	lea	rdx, gPlayerCharacterIdleAnims[rip]
	movzx	eax, WORD PTR 112[rbx]
	sub	ax, WORD PTR [rdx+rcx*2]
	lea	edx, -10[rax]
	cmp	dx, 1
	jbe	.L1673
	cmp	ax, 4
	je	.L1673
	cmp	ax, 70
	jne	.L1674
.L1673:
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	WORD PTR 26[rbx], dx
.L1672:
	mov	rax, QWORD PTR 160[rbx]
	mov	BYTE PTR 120[rbx], 1
	mov	rcx, rbx
	mov	BYTE PTR 118[rbx], 1
	and	DWORD PTR 48[rax], -16385
	lea	rax, Player_Uncurl[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Uncurl
	.p2align 4,,10
	.p2align 3
.L1674:
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	jmp	.L1672
	.seh_endproc
	.p2align 4
	.globl	Player_InitUncurl
	.def	Player_InitUncurl;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitUncurl
Player_InitUncurl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -16777249
	or	eax, 2
	cmp	BYTE PTR 26[rbx], 5
	mov	DWORD PTR 36[rbx], eax
	jle	.L1676
	cmp	BYTE PTR 27[rbx], 8
	jg	.L1677
.L1676:
	movsx	rcx, BYTE PTR 141[rbx]
	lea	rdx, gPlayerCharacterIdleAnims[rip]
	movzx	eax, WORD PTR 112[rbx]
	sub	ax, WORD PTR [rdx+rcx*2]
	lea	edx, -10[rax]
	cmp	dx, 1
	jbe	.L1678
	cmp	ax, 4
	je	.L1678
	cmp	ax, 70
	jne	.L1679
.L1678:
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	WORD PTR 26[rbx], dx
.L1677:
	mov	rax, QWORD PTR 160[rbx]
	mov	BYTE PTR 120[rbx], 1
	mov	rcx, rbx
	mov	BYTE PTR 118[rbx], 0
	and	DWORD PTR 48[rax], -16385
	lea	rax, Player_Uncurl[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Uncurl
	.p2align 4,,10
	.p2align 3
.L1679:
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	jmp	.L1677
	.seh_endproc
	.p2align 4
	.globl	Player_Spindash
	.def	Player_Spindash;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Spindash
Player_Spindash:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rax, gPlayerCharacterIdleAnims[rip]
	movsx	rdx, BYTE PTR 141[rcx]
	mov	r12, QWORD PTR 160[rcx]
	movzx	edi, WORD PTR 112[rcx]
	movzx	esi, WORD PTR 42[rcx]
	movzx	ebp, WORD PTR [rax+rdx*2]
	mov	rbx, rcx
	test	BYTE PTR 100[rcx], -128
	jne	.L1681
	mov	ecx, DWORD PTR 36[rcx]
	sar	si, 8
	mov	eax, ecx
	and	ah, -5
	mov	DWORD PTR 36[rbx], eax
	mov	eax, 8
	cmp	si, ax
	cmovg	esi, eax
	lea	rax, sSpinDashSpeeds[rip]
	movsx	rsi, si
	movsx	edx, WORD PTR [rax+rsi*2]
	mov	eax, edx
	neg	edx
	and	ecx, 1
	mov	ecx, 110
	cmovne	eax, edx
	mov	WORD PTR 24[rbx], ax
	lea	rax, Player_SpinAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
	call	m4aSongNumStart
.L1683:
	test	BYTE PTR 36[rbx], 2
	je	.L1686
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L1687
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L1733
	je	.L1687
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	.p2align 4,,10
	.p2align 3
.L1687:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	jne	.L1734
	add	eax, 42
.L1690:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1735
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1695:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1680
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L1686:
	movzx	edx, BYTE PTR 40[rbx]
	movsx	ecx, WORD PTR 24[rbx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L1698
	test	ecx, ecx
	jne	.L1736
.L1698:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	mov	rcx, rbx
	call	sub_8023128
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edi, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edi, ecx
	test	dil, -128
	je	.L1702
	neg	eax
.L1702:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L1705
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L1680:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L1681:
	test	si, si
	je	.L1684
	movsx	eax, si
	sar	eax, 5
	sub	esi, eax
	xor	eax, eax
	test	si, si
	cmovs	esi, eax
.L1684:
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR [rdx]
	jne	.L1737
	sub	edi, ebp
	mov	WORD PTR 42[rbx], si
	cmp	di, 3
	jne	.L1683
.L1738:
	cmp	WORD PTR 114[rbx], 1
	jne	.L1683
	test	BYTE PTR 49[r12], 64
	je	.L1683
	xor	ecx, ecx
	mov	WORD PTR 114[rbx], cx
	jmp	.L1683
	.p2align 4,,10
	.p2align 3
.L1734:
	add	eax, 12
	jmp	.L1690
	.p2align 4,,10
	.p2align 3
.L1705:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L1680
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L1680
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L1680
	.p2align 4,,10
	.p2align 3
.L1735:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1695
	.p2align 4,,10
	.p2align 3
.L1737:
	mov	ecx, 109
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	r8, QWORD PTR .refptr.gMPlayTable[rip]
	movzx	eax, WORD PTR 1752[rax]
	lea	rax, [rax+rax*2]
	lea	rax, [r8+rax*8]
	mov	r13, QWORD PTR [rax]
	mov	rcx, r13
	call	m4aMPlayImmInit
	mov	r8d, esi
	mov	edx, 65535
	mov	rcx, r13
	and	r8d, -128
	add	si, 512
	movsx	r8d, r8w
	call	m4aMPlayPitchControl
	mov	eax, 2048
	mov	r9d, 1
	mov	BYTE PTR 116[rbx], 1
	cmp	si, ax
	mov	WORD PTR 114[rbx], r9w
	cmovl	esi, eax
	sub	edi, ebp
	mov	WORD PTR 42[rbx], si
	cmp	di, 3
	jne	.L1683
	jmp	.L1738
	.p2align 4,,10
	.p2align 3
.L1733:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L1687
	.p2align 4,,10
	.p2align 3
.L1736:
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 2
	movsx	rdx, edx
	movzx	eax, WORD PTR [rax+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, eax, 60
	mov	edx, eax
	sar	eax, 10
	sar	edx, 8
	test	ecx, ecx
	jle	.L1699
	test	edx, edx
	cmovle	edx, eax
.L1700:
	add	edx, ecx
	mov	WORD PTR 24[rbx], dx
	jmp	.L1698
	.p2align 4,,10
	.p2align 3
.L1699:
	test	edx, edx
	cmovns	edx, eax
	jmp	.L1700
	.seh_endproc
	.p2align 4
	.globl	Player_InitSpindash
	.def	Player_InitSpindash;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitSpindash
Player_InitSpindash:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, 3
	mov	edx, 9
	mov	WORD PTR 108[rcx], ax
	mov	eax, DWORD PTR 36[rcx]
	mov	rbx, rcx
	and	eax, -35
	or	eax, 1028
	mov	DWORD PTR 36[rcx], eax
	call	Player_HandleSpriteYOffsetChange
	xor	edx, edx
	movabs	rax, 650207196201615360
	mov	WORD PTR 42[rcx], dx
	mov	QWORD PTR 20[rcx], rax
	mov	ecx, 109
	call	m4aSongNumStart
	call	CreateSpindashDustEffect
	lea	rax, Player_Spindash[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Spindash
	.seh_endproc
	.p2align 4
	.globl	Player_PropellorSpring
	.def	Player_PropellorSpring;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_PropellorSpring
Player_PropellorSpring:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 40[rcx]
	lea	edx, -4[rax]
	add	eax, 4
	test	BYTE PTR 36[rcx], 1
	cmovne	eax, edx
	mov	rbx, rcx
	mov	BYTE PTR 40[rcx], al
	call	Player_AirInputControls
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L1743
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L1756
	jne	.L1757
	.p2align 4,,10
	.p2align 3
.L1743:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	je	.L1745
	add	eax, 12
.L1746:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1740
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1740:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1745:
	add	eax, 42
	jmp	.L1746
	.p2align 4,,10
	.p2align 3
.L1756:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1743
	.p2align 4,,10
	.p2align 3
.L1757:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1743
	.seh_endproc
	.p2align 4
	.globl	Player_InitPropellorSpring
	.def	Player_InitPropellorSpring;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitPropellorSpring
Player_InitPropellorSpring:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	r11d, -5
	mov	DWORD PTR 36[rbx], r11d
	call	Player_HandleSpriteYOffsetChange
	movzx	eax, WORD PTR 100[rbx]
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
	test	al, 32
	je	.L1759
	or	r11d, 1
	mov	DWORD PTR 36[rbx], r11d
.L1759:
	test	al, 16
	je	.L1760
	and	DWORD PTR 36[rbx], -2
.L1760:
	mov	eax, 63
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], 0
	mov	WORD PTR 108[rbx], ax
	lea	rax, Player_PropellorSpring[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_PropellorSpring
	.seh_endproc
	.p2align 4
	.globl	Player_Hurt
	.def	Player_Hurt;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Hurt
Player_Hurt:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	je	.L1768
	add	eax, 12
.L1769:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1767
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1767:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1768:
	add	eax, 42
	jmp	.L1769
	.seh_endproc
	.p2align 4
	.globl	Player_InitHurt
	.def	Player_InitHurt;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitHurt
Player_InitHurt:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r8d, 120
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	mov	WORD PTR 48[rcx], r8w
	mov	rbx, rcx
	mov	BYTE PTR 98[rcx], 0
	mov	ecx, DWORD PTR 36[rcx]
	cmp	dx, 640
	ja	.L1777
	mov	edx, -384
	cmp	ax, 160
	jle	.L1787
.L1778:
	mov	eax, 20
	and	ecx, 64
	mov	WORD PTR 20[rbx], dx
	mov	WORD PTR 108[rbx], ax
	jne	.L1781
.L1788:
	mov	ecx, -768
	mov	WORD PTR 22[rbx], cx
.L1782:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	eax, -525
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	lea	rax, Player_Hurt[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Hurt
	.p2align 4,,10
	.p2align 3
.L1777:
	sar	ax, 15
	mov	edx, eax
	mov	eax, 21
	and	dx, -768
	mov	WORD PTR 108[rbx], ax
	add	dx, 384
	and	ecx, 64
	mov	WORD PTR 20[rbx], dx
	je	.L1788
.L1781:
	mov	edx, -384
	sar	WORD PTR 20[rbx]
	mov	WORD PTR 22[rbx], dx
	jmp	.L1782
	.p2align 4,,10
	.p2align 3
.L1787:
	mov	edx, 384
	cmp	ax, -160
	jl	.L1778
	mov	eax, ecx
	and	eax, 1
	cmp	eax, 1
	sbb	edx, edx
	and	dx, -768
	add	dx, 384
	jmp	.L1778
	.seh_endproc
	.p2align 4
	.globl	Player_HandlePhysicsWithAirInput
	.def	Player_HandlePhysicsWithAirInput;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandlePhysicsWithAirInput
Player_HandlePhysicsWithAirInput:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	BYTE PTR 36[rcx], 2
	je	.L1790
	call	Player_AirInputControls
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L1791
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L1817
	je	.L1791
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
	.p2align 4,,10
	.p2align 3
.L1791:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	jne	.L1818
	add	eax, 42
.L1794:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1819
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1799:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1789
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1789:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1818:
	add	eax, 12
	jmp	.L1794
	.p2align 4,,10
	.p2align 3
.L1790:
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_80231C0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1803
	neg	eax
.L1803:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L1806
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1806:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L1789
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L1789
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L1789
	.p2align 4,,10
	.p2align 3
.L1819:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1799
	.p2align 4,,10
	.p2align 3
.L1817:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1791
	.seh_endproc
	.p2align 4
	.globl	Player_802A3C4
	.def	Player_802A3C4;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_802A3C4
Player_802A3C4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_HandlePhysicsWithAirInput
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L1820
	lea	rax, Player_SpinAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L1820:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_HandlePhysics
	.def	Player_HandlePhysics;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandlePhysics
Player_HandlePhysics:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	BYTE PTR 36[rcx], 2
	je	.L1826
	call	sub_80232D0
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1828
	neg	eax
.L1828:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1845
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1832:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1825
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1826:
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_80231C0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1836
	neg	eax
.L1836:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L1839
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L1825:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1839:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L1825
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L1825
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L1825
	.p2align 4,,10
	.p2align 3
.L1845:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1832
	.seh_endproc
	.p2align 4
	.globl	PlayerFn_Cmd_HandlePhysics
	.def	PlayerFn_Cmd_HandlePhysics;	.scl	2;	.type	32;	.endef
	.seh_proc	PlayerFn_Cmd_HandlePhysics
PlayerFn_Cmd_HandlePhysics:
	.seh_endprologue
	jmp	Player_HandlePhysics
	.seh_endproc
	.p2align 4
	.globl	Player_InitPipeEntry
	.def	Player_InitPipeEntry;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitPipeEntry
Player_InitPipeEntry:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	r9d, 2310
	mov	r10d, 4
	mov	BYTE PTR 40[rbx], 0
	mov	edx, r11d
	mov	WORD PTR 26[rbx], r9w
	and	edx, -2
	mov	WORD PTR 108[rbx], r10w
	mov	eax, edx
	or	eax, 524804
	mov	DWORD PTR 36[rbx], eax
	movzx	eax, BYTE PTR 118[rbx]
	and	eax, 48
	cmp	al, 32
	je	.L1848
	ja	.L1849
	test	al, al
	je	.L1855
	or	edx, 524806
	mov	ecx, 3072
	mov	DWORD PTR 20[rbx], 201326592
	mov	DWORD PTR 36[rbx], edx
	mov	WORD PTR 24[rbx], cx
.L1853:
	mov	rdx, QWORD PTR 160[rbx]
	mov	ecx, 147
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	BYTE PTR 60[rbx], 0
	call	m4aSongNumStart
	lea	rax, PlayerFn_Cmd_HandlePhysics[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysics
	.p2align 4,,10
	.p2align 3
.L1849:
	cmp	al, 48
	jne	.L1853
	and	r11d, -4
	mov	eax, 3072
	mov	DWORD PTR 20[rbx], 3072
	or	r11d, 524804
	mov	WORD PTR 24[rbx], ax
	mov	DWORD PTR 36[rbx], r11d
	jmp	.L1853
	.p2align 4,,10
	.p2align 3
.L1848:
	and	r11d, -4
	mov	edx, -3072
	mov	DWORD PTR 20[rbx], 62464
	or	r11d, 524805
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], r11d
	jmp	.L1853
	.p2align 4,,10
	.p2align 3
.L1855:
	or	edx, 524806
	mov	r8d, 3072
	mov	DWORD PTR 20[rbx], -201326592
	mov	DWORD PTR 36[rbx], edx
	mov	WORD PTR 24[rbx], r8w
	jmp	.L1853
	.seh_endproc
	.p2align 4
	.globl	sub_8028204
	.def	sub_8028204;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8028204
sub_8028204:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	Player_AirInputControls
	cmp	WORD PTR 22[rcx], -17153
	mov	rbx, rcx
	jbe	.L1857
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L1873
	jne	.L1874
	.p2align 4,,10
	.p2align 3
.L1857:
	mov	rcx, rbx
	call	sub_80232D0
	mov	eax, DWORD PTR 36[rbx]
	movzx	edx, WORD PTR 22[rbx]
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	eax, 30
	add	eax, 12
	mov	ecx, eax
	sar	cx
	test	dx, dx
	cmovs	eax, ecx
	add	edx, eax
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rax]
	mov	eax, edx
	neg	eax
	xor	r8d, ecx
	and	r8d, 128
	cmove	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1875
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1866:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1856
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1856:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1873:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1857
	.p2align 4,,10
	.p2align 3
.L1875:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1866
	.p2align 4,,10
	.p2align 3
.L1874:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1857
	.seh_endproc
	.p2align 4
	.globl	sub_80282EC
	.def	sub_80282EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80282EC
sub_80282EC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	sar	DWORD PTR 80[rcx]
	call	Player_AirInputControls
	cmp	BYTE PTR 141[rcx], 2
	mov	rbx, rcx
	je	.L1890
.L1877:
	mov	rcx, rbx
	call	sub_80232D0
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1880
	neg	eax
.L1880:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1891
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1884:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1876
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1876:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1891:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1884
	.p2align 4,,10
	.p2align 3
.L1890:
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L1877
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L1892
	je	.L1877
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1877
	.p2align 4,,10
	.p2align 3
.L1892:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1877
	.seh_endproc
	.p2align 4
	.globl	sub_80283C4
	.def	sub_80283C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80283C4
sub_80283C4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80232D0
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1895
	neg	eax
.L1895:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1902
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1899:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1893
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1893:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1902:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1899
	.seh_endproc
	.p2align 4
	.globl	sub_8028478
	.def	sub_8028478;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8028478
sub_8028478:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	BYTE PTR 36[rcx], 2
	je	.L1904
	cmp	WORD PTR 22[rcx], -17153
	jbe	.L1905
	movzx	eax, WORD PTR 20[rcx]
	mov	edx, eax
	sar	dx, 5
	js	.L1935
	je	.L1905
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rcx], ax
	.p2align 4,,10
	.p2align 3
.L1905:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	jne	.L1936
	add	eax, 42
.L1908:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1937
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1913:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1903
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1903:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1936:
	add	eax, 12
	jmp	.L1908
	.p2align 4,,10
	.p2align 3
.L1904:
	movzx	edx, BYTE PTR 40[rcx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L1916
	movzx	eax, WORD PTR 24[rcx]
	test	ax, ax
	jne	.L1938
.L1916:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_80231C0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1918
	neg	eax
.L1918:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L1921
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1921:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L1903
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L1903
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L1903
	.p2align 4,,10
	.p2align 3
.L1937:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1913
	.p2align 4,,10
	.p2align 3
.L1935:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rcx], ax
	jmp	.L1905
	.p2align 4,,10
	.p2align 3
.L1938:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 2
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	sar	edx, 5
	add	eax, edx
	mov	WORD PTR 24[rbx], ax
	jmp	.L1916
	.seh_endproc
	.p2align 4
	.globl	Player_WindupDefaultTrick
	.def	Player_WindupDefaultTrick;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_WindupDefaultTrick
Player_WindupDefaultTrick:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	mov	rbx, rcx
	test	BYTE PTR 49[rax], 64
	je	.L1941
	movzx	edx, BYTE PTR 99[rcx]
	movsx	cx, BYTE PTR 141[rcx]
	add	WORD PTR 114[rbx], 1
	mov	r8, rdx
	movzx	eax, cx
	lea	rdx, [rdx+rdx*4]
	add	rax, rdx
	lea	rdx, sTrickAccel[rip]
	movd	xmm0, DWORD PTR [rdx+rax*4]
	movd	DWORD PTR 20[rbx], xmm0
	test	BYTE PTR 36[rbx], 1
	je	.L1942
	pextrw	eax, xmm0, 0
	neg	eax
	mov	WORD PTR 20[rbx], ax
.L1942:
	lea	rax, Player_DefaultTrick[rip]
	mov	QWORD PTR gPlayer[rip], rax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L1975
.L1941:
	mov	rcx, rbx
	call	sub_80232D0
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L1947
	neg	eax
.L1947:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L1976
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L1951:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L1939
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L1939:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1975:
	cmp	r8d, 2
	sete	al
	test	cx, cx
	jne	.L1944
	test	al, al
	je	.L1944
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	xor	r8d, r8d
	sar	edx, 8
	sar	ecx, 8
	call	sub_8028640
	jmp	.L1941
	.p2align 4,,10
	.p2align 3
.L1976:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L1951
	.p2align 4,,10
	.p2align 3
.L1944:
	test	r8d, r8d
	jne	.L1945
	cmp	cx, 3
	jne	.L1945
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	mov	r8d, 1
	sar	edx, 8
	sar	ecx, 8
	call	sub_8028640
	jmp	.L1941
	.p2align 4,,10
	.p2align 3
.L1945:
	cmp	cx, 4
	jne	.L1941
	test	al, al
	je	.L1941
	call	CreateHeartParticles
	jmp	.L1941
	.seh_endproc
	.p2align 4
	.globl	Player_InitDefaultTrick
	.def	Player_InitDefaultTrick;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitDefaultTrick
Player_InitDefaultTrick:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rdx, sTrickMasks[rip]
	movzx	esi, BYTE PTR 99[rcx]
	movsx	ax, BYTE PTR 141[rcx]
	movzx	eax, ax
	mov	rbx, rcx
	lea	rcx, [rsi+rsi*4]
	add	rdx, rcx
	mov	rcx, rbx
	movzx	edi, BYTE PTR [rdx+rax]
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	rcx, rbx
	mov	edx, 14
	and	eax, -16777249
	or	eax, 8450
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	WORD PTR 26[rbx], cx
	test	dil, 4
	je	.L1978
	mov	edx, 10
	mov	WORD PTR 122[rbx], dx
.L1979:
	lea	rax, sTrickDirToCharstate[rip]
	mov	DWORD PTR 20[rbx], 0
	mov	ecx, 116
	movzx	eax, WORD PTR [rax+rsi*2]
	mov	WORD PTR 108[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	and	DWORD PTR 48[rax], -16385
	call	m4aSongNumStart
	mov	ecx, 230
	call	m4aSongNumStart
	lea	rax, Player_WindupDefaultTrick[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Player_WindupDefaultTrick
	.p2align 4,,10
	.p2align 3
.L1978:
	and	edi, 8
	je	.L1979
	mov	eax, 45
	mov	WORD PTR 122[rbx], ax
	jmp	.L1979
	.seh_endproc
	.p2align 4
	.globl	Player_DefaultTrick
	.def	Player_DefaultTrick;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_DefaultTrick
Player_DefaultTrick:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	edx, BYTE PTR 99[rcx]
	movsx	ax, BYTE PTR 141[rcx]
	movzx	eax, ax
	mov	rbx, rcx
	lea	rcx, [rdx+rdx*4]
	lea	rdx, sTrickMasks[rip]
	add	rdx, rcx
	movzx	esi, BYTE PTR [rdx+rax]
	test	sil, 1
	je	.L1984
	cmp	WORD PTR 114[rbx], 1
	je	.L2036
.L1984:
	movzx	eax, WORD PTR 122[rbx]
	test	ax, ax
	je	.L1985
	sub	eax, 1
	mov	WORD PTR 122[rbx], ax
	test	sil, 2
	je	.L1986
	cmp	WORD PTR 22[rbx], 0
	jle	.L1997
.L1986:
	mov	rcx, rbx
	call	Player_AirInputControls
.L1997:
	test	sil, 4
	je	.L1995
	mov	rcx, rbx
	call	sub_80232D0
	and	esi, 16
	jne	.L2001
	movzx	eax, WORD PTR 22[rbx]
.L2004:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L2037
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L2012:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	and	edx, 10
	cmp	edx, 8
	jne	.L2013
	movzx	edx, WORD PTR 20[rbx]
	lea	rsi, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rsi
	mov	WORD PTR 24[rbx], dx
.L2013:
	test	al, 2
	jne	.L1983
	cmp	BYTE PTR 141[rbx], 3
	je	.L2038
.L1983:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1985:
	mov	eax, esi
	and	eax, -5
	test	sil, 4
	cmovne	esi, eax
	mov	eax, esi
	and	eax, 2
	test	sil, 8
	je	.L1989
	cmp	WORD PTR 108[rbx], 14
	je	.L1989
	mov	edx, 14
	mov	WORD PTR 108[rbx], dx
	test	al, al
	jne	.L1993
.L2030:
	mov	rcx, rbx
	call	Player_AirInputControls
	movzx	eax, WORD PTR 22[rbx]
.L1992:
	and	esi, 16
	cmp	ax, -17153
	jbe	.L2032
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L2039
	je	.L2032
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
.L2031:
	mov	WORD PTR 20[rbx], ax
.L2032:
	mov	rcx, rbx
	call	sub_80232D0
	test	sil, sil
	jne	.L2001
	movzx	eax, WORD PTR 22[rbx]
	lea	edx, 12[rax]
	add	eax, 42
	test	BYTE PTR 36[rbx], 64
	cmovne	eax, edx
	jmp	.L2004
	.p2align 4,,10
	.p2align 3
.L1989:
	test	al, al
	je	.L2030
.L1993:
	movzx	eax, WORD PTR 22[rbx]
	test	ax, ax
	jle	.L1992
	mov	rcx, rbx
	call	Player_AirInputControls
.L1995:
	movzx	eax, WORD PTR 22[rbx]
	jmp	.L1992
	.p2align 4,,10
	.p2align 3
.L2001:
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 64
	cmp	eax, 1
	movzx	eax, WORD PTR 22[rbx]
	sbb	edx, edx
	and	edx, 30
	add	edx, 12
	mov	ecx, edx
	sar	cx
	test	ax, ax
	cmovs	edx, ecx
	add	eax, edx
	jmp	.L2004
	.p2align 4,,10
	.p2align 3
.L2037:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L2012
	.p2align 4,,10
	.p2align 3
.L2036:
	cmp	WORD PTR 22[rbx], 0
	jle	.L1984
	mov	ecx, 2
	mov	WORD PTR 114[rbx], cx
	jmp	.L1984
	.p2align 4,,10
	.p2align 3
.L2039:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	jmp	.L2031
	.p2align 4,,10
	.p2align 3
.L2038:
	cmp	BYTE PTR 99[rbx], 2
	jne	.L1983
	lea	rax, Player_802A3C4[rip]
	add	WORD PTR 114[rbx], 1
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L1983
	.seh_endproc
	.p2align 4
	.globl	Player_8029074
	.def	Player_8029074;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8029074
Player_8029074:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80246DC
	mov	rcx, rbx
	call	DoTrickIfButtonPressed
	mov	rcx, rbx
	call	Player_AirInputControls
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L2041
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 5
	js	.L2057
	jne	.L2058
	.p2align 4,,10
	.p2align 3
.L2041:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	je	.L2043
	add	eax, 12
.L2044:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L2059
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L2049:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L2040
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L2040:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2043:
	add	eax, 42
	jmp	.L2044
	.p2align 4,,10
	.p2align 3
.L2057:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L2041
	.p2align 4,,10
	.p2align 3
.L2059:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L2049
	.p2align 4,,10
	.p2align 3
.L2058:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L2041
	.seh_endproc
	.p2align 4
	.globl	Player_GrindRailEndAir
	.def	Player_GrindRailEndAir;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_GrindRailEndAir
Player_GrindRailEndAir:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	mov	eax, r11d
	and	eax, -5
	or	eax, 258
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L2066
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 100[rbx]
	and	ax, WORD PTR [rdx]
	jne	.L2074
.L2066:
	mov	eax, -1248
	mov	edx, 39
.L2061:
	and	r11d, 64
	mov	WORD PTR 22[rbx], ax
	mov	WORD PTR 108[rbx], dx
	je	.L2062
	mov	edx, eax
	shr	dx, 15
	add	eax, edx
	sar	ax
	mov	WORD PTR 22[rbx], ax
.L2062:
	mov	rdx, QWORD PTR 160[rbx]
	mov	ecx, 114
	and	DWORD PTR gPlayer[rip+36], -1073741825
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	BYTE PTR 59[rbx], 127
	mov	BYTE PTR 60[rbx], 1
	call	m4aSongNumStop
	cmp	WORD PTR 20[rbx], 0
	jle	.L2063
	and	DWORD PTR 36[rbx], -2
.L2064:
	mov	ecx, 116
	call	m4aSongNumStart
	lea	rax, Player_8029074[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_8029074
	.p2align 4,,10
	.p2align 3
.L2074:
	movzx	edx, BYTE PTR 141[rbx]
	and	edx, -5
	cmp	dl, 1
	sbb	eax, eax
	and	ax, -672
	sub	ax, 1248
	cmp	dl, 1
	sbb	edx, edx
	and	edx, 3
	add	edx, 39
	jmp	.L2061
	.p2align 4,,10
	.p2align 3
.L2063:
	je	.L2064
	or	DWORD PTR 36[rbx], 1
	jmp	.L2064
	.seh_endproc
	.p2align 4
	.globl	Player_8028D74
	.def	Player_8028D74;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8028D74
Player_8028D74:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -16777249
	or	eax, 258
	cmp	BYTE PTR 26[rbx], 5
	mov	DWORD PTR 36[rbx], eax
	jle	.L2076
	cmp	BYTE PTR 27[rbx], 8
	jg	.L2077
.L2076:
	movsx	rcx, BYTE PTR 141[rbx]
	lea	rdx, gPlayerCharacterIdleAnims[rip]
	movzx	eax, WORD PTR 112[rbx]
	sub	ax, WORD PTR [rdx+rcx*2]
	lea	edx, -10[rax]
	cmp	dx, 1
	jbe	.L2078
	cmp	ax, 4
	je	.L2078
	cmp	ax, 70
	jne	.L2079
.L2078:
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	WORD PTR 26[rbx], dx
.L2077:
	mov	rax, QWORD PTR 160[rbx]
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	lea	rax, Player_8029074[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_8029074
	.p2align 4,,10
	.p2align 3
.L2079:
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	jmp	.L2077
	.seh_endproc
	.p2align 4
	.globl	Player_TouchNormalSpring
	.def	Player_TouchNormalSpring;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TouchNormalSpring
Player_TouchNormalSpring:
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
	movzx	eax, BYTE PTR 118[rcx]
	mov	edi, eax
	and	eax, 3
	shr	dil, 4
	mov	esi, eax
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	lea	eax, -2[rdi]
	mov	r11d, DWORD PTR 36[rbx]
	cmp	al, 1
	jbe	.L2132
.L2082:
	or	r11d, 258
.L2083:
	mov	ebp, r11d
	mov	rcx, rbx
	mov	edx, 14
	and	ebp, -16777249
	mov	DWORD PTR 36[rbx], ebp
	call	Player_HandleSpriteYOffsetChange
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	ecx, 3590
	mov	WORD PTR 26[rbx], cx
	movzx	r8d, BYTE PTR [rax]
	movzx	eax, sil
	sub	r8d, 8
	cmp	r8b, 1
	jbe	.L2133
	movzx	ecx, WORD PTR 20[rbx]
	lea	r9, disableTrickTimerTable[rip]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 639
	seta	dl
	movzx	edx, dl
	add	edx, 38
	mov	WORD PTR 108[rbx], dx
	mov	edx, -1
	mov	WORD PTR 110[rbx], dx
	movzx	edx, BYTE PTR [r9+rax]
	cmp	dil, 7
	ja	.L2134
	lea	r10, .L2111[rip]
	movzx	edx, dil
	movsx	rdx, DWORD PTR [r10+rdx*4]
	add	rdx, r10
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L2111:
	.long	.L2097-.L2111
	.long	.L2112-.L2111
	.long	.L2092-.L2111
	.long	.L2091-.L2111
	.long	.L2090-.L2111
	.long	.L2103-.L2111
	.long	.L2104-.L2111
	.long	.L2105-.L2111
	.text
	.p2align 4,,10
	.p2align 3
.L2133:
	lea	r9, disableTrickTimerTable[rip]
	mov	DWORD PTR 108[rbx], -65499
	movzx	edx, BYTE PTR [r9+rax]
	cmp	dil, 7
	ja	.L2085
	lea	rcx, .L2087[rip]
	movzx	edx, dil
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L2087:
	.long	.L2094-.L2087
	.long	.L2093-.L2087
	.long	.L2092-.L2087
	.long	.L2091-.L2087
	.long	.L2090-.L2087
	.long	.L2089-.L2087
	.long	.L2088-.L2087
	.long	.L2086-.L2087
	.text
	.p2align 4,,10
	.p2align 3
.L2132:
	test	r11b, 2
	jne	.L2082
	and	r11d, -259
	jmp	.L2083
	.p2align 4,,10
	.p2align 3
.L2090:
	lea	rdx, sSpringAccelX[rip]
	pxor	xmm0, xmm0
	movzx	r10d, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	ecx, r10d
	sal	edx, 16
	neg	ecx
	or	edx, r10d
	movd	xmm1, edx
	psubw	xmm0, xmm1
	movd	DWORD PTR 20[rbx], xmm0
.L2099:
	movzx	eax, BYTE PTR [r9+rax]
	mov	BYTE PTR 58[rbx], al
	cmp	r8b, 1
	jbe	.L2096
	.p2align 4,,10
	.p2align 3
.L2100:
	test	r11b, 64
	je	.L2107
	movzx	edx, WORD PTR 22[rbx]
	mov	eax, edx
	shr	ax, 15
	add	eax, edx
	sar	ax
	mov	WORD PTR 22[rbx], ax
.L2107:
	cmp	cx, 320
	jle	.L2108
	and	r11d, -16777250
	mov	DWORD PTR 36[rbx], r11d
.L2109:
	lea	rax, Player_8029074[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	Player_8029074
	.p2align 4,,10
	.p2align 3
.L2092:
	lea	rdx, sSpringAccelX[rip]
	movzx	ecx, WORD PTR [rdx+rax*2]
	neg	ecx
	mov	WORD PTR 20[rbx], cx
	test	r11b, 2
	jne	.L2099
	cmp	cx, -2304
	jge	.L2099
	movzx	eax, BYTE PTR [r9+rax]
	mov	BYTE PTR 98[rbx], 1
	mov	BYTE PTR 58[rbx], al
	cmp	r8b, 1
	ja	.L2100
	movsx	ecx, cx
	lea	eax, [rcx+rcx*4]
	.p2align 4,,10
	.p2align 3
.L2101:
	add	eax, 3
	jmp	.L2102
	.p2align 4,,10
	.p2align 3
.L2091:
	lea	rdx, sSpringAccelX[rip]
	movsx	ecx, WORD PTR [rdx+rax*2]
	mov	WORD PTR 20[rbx], cx
	test	r11b, 2
	jne	.L2099
	cmp	cx, 2304
	jle	.L2099
	movzx	eax, BYTE PTR [r9+rax]
	mov	BYTE PTR 98[rbx], 1
	mov	BYTE PTR 58[rbx], al
	lea	eax, [rcx+rcx*4]
	cmp	r8b, 1
	ja	.L2100
	jmp	.L2102
	.p2align 4,,10
	.p2align 3
.L2112:
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	movzx	eax, BYTE PTR [r9+rax]
	mov	WORD PTR 22[rbx], dx
	mov	BYTE PTR 58[rbx], al
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2097:
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	movzx	eax, BYTE PTR [r9+rax]
	neg	edx
	mov	BYTE PTR 58[rbx], al
	mov	WORD PTR 22[rbx], dx
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2103:
	lea	rdx, sSpringAccelX[rip]
	movzx	r8d, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	ecx, r8d
	neg	edx
.L2131:
	movzx	eax, BYTE PTR [r9+rax]
	sal	edx, 16
	or	edx, r8d
	mov	DWORD PTR 20[rbx], edx
	mov	BYTE PTR 58[rbx], al
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2104:
	lea	rdx, sSpringAccelX[rip]
	movzx	ecx, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	neg	ecx
	movzx	r8d, cx
	jmp	.L2131
	.p2align 4,,10
	.p2align 3
.L2105:
	lea	rdx, sSpringAccelX[rip]
	movzx	r8d, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	ecx, r8d
	jmp	.L2131
	.p2align 4,,10
	.p2align 3
.L2089:
	lea	rdx, sSpringAccelX[rip]
	movzx	r8d, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	ecx, r8d
	neg	edx
.L2130:
	movzx	eax, BYTE PTR [r9+rax]
	sal	edx, 16
	or	edx, r8d
	mov	DWORD PTR 20[rbx], edx
	mov	BYTE PTR 58[rbx], al
.L2096:
	movsx	ecx, cx
	lea	eax, [rcx+rcx*4]
	test	eax, eax
	js	.L2101
.L2102:
	sar	eax, 2
	mov	WORD PTR 20[rbx], ax
	mov	ecx, eax
	movsx	eax, WORD PTR 22[rbx]
	lea	edx, [rax+rax*4]
	test	edx, edx
	lea	eax, 3[rdx]
	cmovns	eax, edx
	sar	eax, 2
	mov	WORD PTR 22[rbx], ax
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2086:
	lea	rdx, sSpringAccelX[rip]
	movzx	r8d, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	ecx, r8d
	jmp	.L2130
	.p2align 4,,10
	.p2align 3
.L2088:
	lea	rdx, sSpringAccelX[rip]
	movzx	ecx, WORD PTR [rdx+rax*2]
	lea	rdx, sSpringAccelY[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	neg	ecx
	movzx	r8d, cx
	jmp	.L2130
	.p2align 4,,10
	.p2align 3
.L2108:
	cmp	cx, -320
	jge	.L2109
	or	ebp, 1
	mov	DWORD PTR 36[rbx], ebp
	jmp	.L2109
.L2134:
	mov	BYTE PTR 58[rbx], dl
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2093:
	lea	rdx, sSpringAccelY[rip]
	movzx	ecx, WORD PTR 20[rbx]
	movzx	edx, WORD PTR [rdx+rax*2]
	movzx	eax, BYTE PTR [r9+rax]
	mov	WORD PTR 22[rbx], dx
	mov	BYTE PTR 58[rbx], al
	jmp	.L2096
	.p2align 4,,10
	.p2align 3
.L2094:
	lea	rdx, sSpringAccelY[rip]
	movzx	ecx, WORD PTR 20[rbx]
	movzx	edx, WORD PTR [rdx+rax*2]
	movzx	eax, BYTE PTR [r9+rax]
	neg	edx
	mov	BYTE PTR 58[rbx], al
	mov	WORD PTR 22[rbx], dx
	jmp	.L2096
.L2085:
	mov	BYTE PTR 58[rbx], dl
	movzx	ecx, WORD PTR 20[rbx]
	jmp	.L2096
	.seh_endproc
	.p2align 4
	.globl	Player_8029314
	.def	Player_8029314;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8029314
Player_8029314:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	WORD PTR 108[rcx], 40
	mov	rbx, rcx
	je	.L2153
.L2136:
	mov	rcx, rbx
	call	DoTrickIfButtonPressed
	cmp	WORD PTR 22[rbx], -17153
	jbe	.L2137
	movzx	eax, WORD PTR 20[rbx]
	mov	edx, eax
	sar	dx, 6
	js	.L2154
	jne	.L2155
	.p2align 4,,10
	.p2align 3
.L2137:
	mov	rcx, rbx
	call	sub_80232D0
	test	BYTE PTR 36[rbx], 64
	movzx	eax, WORD PTR 22[rbx]
	je	.L2139
	add	eax, 12
.L2140:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L2156
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L2145:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L2135
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L2135:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2139:
	add	eax, 42
	jmp	.L2140
	.p2align 4,,10
	.p2align 3
.L2154:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovg	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L2137
	.p2align 4,,10
	.p2align 3
.L2156:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L2145
	.p2align 4,,10
	.p2align 3
.L2153:
	cmp	WORD PTR 114[rcx], 0
	jne	.L2136
	cmp	WORD PTR 22[rcx], 0
	jle	.L2136
	mov	eax, 1
	mov	WORD PTR 114[rcx], ax
	jmp	.L2136
	.p2align 4,,10
	.p2align 3
.L2155:
	sub	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 20[rbx], ax
	jmp	.L2137
	.seh_endproc
	.p2align 4
	.globl	Player_InitRampOrDashRing
	.def	Player_InitRampOrDashRing;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitRampOrDashRing
Player_InitRampOrDashRing:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	mov	edi, r11d
	and	edi, -16777257
	mov	esi, edi
	or	esi, 2
	mov	DWORD PTR 36[rbx], esi
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	DWORD PTR 108[rbx], -65496
	mov	WORD PTR 26[rbx], ax
	movzx	eax, WORD PTR 20[rbx]
	cmp	ax, 320
	jle	.L2158
	and	r11d, -16777258
	mov	esi, r11d
	xor	r11d, r11d
	or	esi, 2
	mov	DWORD PTR 36[rbx], esi
.L2159:
	movzx	eax, BYTE PTR 118[rbx]
	cmp	al, 3
	je	.L2161
.L2181:
	ja	.L2162
	test	al, al
	movsx	eax, WORD PTR 24[rbx]
	lea	ecx, [rax+rax*2]
	mov	edx, eax
	lea	eax, 7[rcx]
	je	.L2163
	test	ecx, ecx
	cmovns	eax, ecx
	shr	eax, 3
	add	ax, 960
	mov	WORD PTR 20[rbx], ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	movzx	eax, ax
	neg	eax
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 715827883
	shr	rdx, 32
	sub	edx, eax
	lea	eax, -1920[rdx]
	mov	WORD PTR 22[rbx], ax
.L2166:
	and	esi, 64
	je	.L2171
	sar	WORD PTR 22[rbx]
.L2171:
	test	r11d, r11d
	je	.L2172
	neg	WORD PTR 20[rbx]
.L2172:
	mov	ecx, 276
	call	m4aSongNumStart
	lea	rax, Player_8029314[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Player_8029314
	.p2align 4,,10
	.p2align 3
.L2158:
	and	r11d, 1
	cmp	ax, -320
	jge	.L2159
	movzx	eax, BYTE PTR 118[rbx]
	or	edi, 3
	mov	r11d, 1
	mov	DWORD PTR 36[rbx], edi
	mov	esi, edi
	cmp	al, 3
	jne	.L2181
.L2161:
	movsx	eax, WORD PTR 24[rbx]
	lea	ecx, [rax+rax*2]
	mov	edx, eax
	test	ecx, ecx
	lea	eax, 7[rcx]
	cmovns	eax, ecx
	shr	eax, 3
	add	ax, 1440
	jmp	.L2180
	.p2align 4,,10
	.p2align 3
.L2162:
	sub	eax, 4
	cmp	al, 1
	ja	.L2166
	movsx	eax, WORD PTR 24[rbx]
	lea	ecx, [rax+rax*2]
	mov	edx, eax
	test	ecx, ecx
	lea	eax, 7[rcx]
	cmovns	eax, ecx
	shr	eax, 3
	add	ax, 2880
.L2180:
	mov	WORD PTR 20[rbx], ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	movzx	eax, ax
	neg	eax
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 715827883
	shr	rdx, 32
	sub	edx, eax
	lea	eax, -640[rdx]
	mov	WORD PTR 22[rbx], ax
	jmp	.L2166
	.p2align 4,,10
	.p2align 3
.L2163:
	test	ecx, ecx
	cmovns	eax, ecx
	shr	eax, 3
	add	ax, 960
	mov	WORD PTR 20[rbx], ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	movzx	eax, ax
	neg	eax
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 715827883
	shr	rdx, 32
	sub	edx, eax
	lea	eax, -960[rdx]
	mov	WORD PTR 22[rbx], ax
	jmp	.L2166
	.seh_endproc
	.p2align 4
	.globl	Player_DashRing
	.def	Player_DashRing;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_DashRing
Player_DashRing:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, WORD PTR 122[rcx]
	sub	eax, 1
	mov	WORD PTR 122[rcx], ax
	mov	rbx, rcx
	cmp	ax, -1
	jne	.L2183
	lea	rax, Player_8029074[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L2183:
	mov	rcx, rbx
	call	sub_80246DC
	mov	rcx, rbx
	call	DoTrickIfButtonPressed
	mov	rcx, rbx
	call	sub_80232D0
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L2185
	neg	eax
.L2185:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	movsx	eax, BYTE PTR 40[rbx]
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	test	eax, eax
	js	.L2192
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
.L2189:
	mov	BYTE PTR 40[rbx], al
	mov	rcx, rbx
	call	sub_8022190
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 10
	cmp	eax, 8
	jne	.L2182
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 24[rbx], ax
.L2182:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2192:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	jmp	.L2189
	.seh_endproc
	.p2align 4
	.globl	Player_InitDashRing
	.def	Player_InitDashRing;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitDashRing
Player_InitDashRing:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	rcx, rbx
	mov	edx, 14
	and	eax, -16777257
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, -1
	mov	BYTE PTR 40[rbx], 0
	mov	WORD PTR 26[rbx], ax
	mov	ecx, 277
	mov	WORD PTR 110[rbx], dx
	call	m4aSongNumStart
	lea	rax, Player_DashRing[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_DashRing
	.seh_endproc
	.p2align 4
	.globl	sub_8029C84
	.def	sub_8029C84;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029C84
sub_8029C84:
	.seh_endprologue
	movzx	eax, BYTE PTR 40[rcx]
	add	eax, 64
	test	al, -128
	je	.L2194
	xor	eax, eax
	mov	WORD PTR 24[rcx], ax
.L2194:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029CA0
	.def	sub_8029CA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029CA0
sub_8029CA0:
	.seh_endprologue
	movzx	edx, BYTE PTR 40[rcx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L2199
	movzx	eax, WORD PTR 24[rcx]
	test	ax, ax
	je	.L2199
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 2
	movsx	rdx, edx
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	sar	edx, 5
	add	eax, edx
	mov	WORD PTR 24[rcx], ax
.L2199:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029CE0
	.def	sub_8029CE0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029CE0
sub_8029CE0:
	.seh_endprologue
	movzx	eax, BYTE PTR 40[rcx]
	lea	edx, 96[rax]
	movzx	edx, dl
	cmp	edx, 191
	jg	.L2204
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*4]
	sar	eax, 5
	add	WORD PTR 24[rcx], ax
.L2204:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029D14
	.def	sub_8029D14;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029D14
sub_8029D14:
	.seh_endprologue
	movsx	r9d, WORD PTR 24[rcx]
	mov	r8d, r9d
	mov	rax, rcx
	movzx	ecx, BYTE PTR 40[rcx]
	lea	edx, 96[rcx]
	movzx	edx, dl
	cmp	edx, 191
	jg	.L2206
	test	r9d, r9d
	jne	.L2216
.L2206:
	ret
	.p2align 4,,10
	.p2align 3
.L2216:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	sal	ecx, 2
	movsx	rcx, ecx
	movzx	edx, WORD PTR [rdx+rcx*2]
	sar	dx, 6
	movsx	edx, dx
	imul	edx, edx, 60
	mov	ecx, edx
	sar	edx, 10
	sar	ecx, 8
	test	r9d, r9d
	jle	.L2208
	test	ecx, ecx
	cmovle	ecx, edx
.L2209:
	add	r8d, ecx
	mov	WORD PTR 24[rax], r8w
	ret
	.p2align 4,,10
	.p2align 3
.L2208:
	test	ecx, ecx
	cmovns	ecx, edx
	jmp	.L2209
	.seh_endproc
	.p2align 4
	.globl	Player_UpdatePosition
	.def	Player_UpdatePosition;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_UpdatePosition
Player_UpdatePosition:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movsx	eax, WORD PTR 20[rcx]
	add	DWORD PTR 12[rcx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	r9d, WORD PTR [rdx]
	movzx	r8d, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rcx]
	xor	r9d, r8d
	mov	edx, eax
	neg	edx
	and	r9d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rcx]
	mov	WORD PTR 22[rcx], ax
	mov	r9d, edx
	cwde
	sub	r9d, eax
	add	edx, eax
	and	r8d, 128
	cmovne	edx, r9d
	mov	DWORD PTR 16[rcx], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	PlayerFn_Cmd_UpdateAirFallSpeed
	.def	PlayerFn_Cmd_UpdateAirFallSpeed;	.scl	2;	.type	32;	.endef
	.seh_proc	PlayerFn_Cmd_UpdateAirFallSpeed
PlayerFn_Cmd_UpdateAirFallSpeed:
	.seh_endprologue
	movzx	eax, WORD PTR 22[rcx]
	lea	edx, 12[rax]
	add	eax, 42
	test	BYTE PTR 36[rcx], 64
	cmovne	eax, edx
	mov	WORD PTR 22[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029DE8
	.def	sub_8029DE8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029DE8
sub_8029DE8:
	.seh_endprologue
	xor	eax, eax
	mov	edx, DWORD PTR 36[rcx]
	test	edx, edx
	js	.L2226
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, DWORD PTR 16[rcx]
	test	BYTE PTR [rax], -128
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	je	.L2228
	mov	eax, DWORD PTR 40[rax]
	sal	eax, 8
	cmp	eax, edx
	setge	al
	movzx	eax, al
.L2226:
	ret
	.p2align 4,,10
	.p2align 3
.L2228:
	mov	eax, DWORD PTR 44[rax]
	sal	eax, 8
	sub	eax, 1
	cmp	eax, edx
	setle	al
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	DeadPlayerLeftScreen_UnusedCopy
	.def	DeadPlayerLeftScreen_UnusedCopy;	.scl	2;	.type	32;	.endef
	.seh_proc	DeadPlayerLeftScreen_UnusedCopy
DeadPlayerLeftScreen_UnusedCopy:
	.seh_endprologue
	xor	eax, eax
	mov	edx, DWORD PTR 36[rcx]
	test	edx, edx
	js	.L2230
	mov	edx, DWORD PTR 16[rcx]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, DWORD PTR 4[rax]
	test	BYTE PTR [rcx], -128
	je	.L2232
	sub	eax, 80
	sal	eax, 8
	cmp	eax, edx
	setge	al
	movzx	eax, al
.L2230:
	ret
	.p2align 4,,10
	.p2align 3
.L2232:
	sal	eax, 8
	add	eax, 81919
	cmp	eax, edx
	setle	al
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_TryJump
	.def	Player_TryJump;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryJump
Player_TryJump:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rdx, rcx
	movzx	ecx, BYTE PTR 40[rcx]
	movzx	eax, WORD PTR 102[rdx]
	and	ax, WORD PTR [r8]
	je	.L2238
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, -128
	sub	eax, ecx
	test	BYTE PTR [r8], -128
	cmovne	ecx, eax
	add	ecx, -128
	movzx	ecx, cl
	call	sub_8022F58
	cmp	eax, 3
	jg	.L2241
.L2238:
	xor	eax, eax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L2241:
	lea	rax, Player_InitJump[rip]
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_8025548
	.def	Player_8025548;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8025548
Player_8025548:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	mov	rbx, rcx
	cmp	ax, 128
	je	.L2274
.L2243:
	mov	rcx, rbx
	call	Player_TryJump
	test	eax, eax
	jne	.L2242
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR 40[rbx]
	cmp	BYTE PTR [rdx], 5
	je	.L2247
	test	DWORD PTR 36[rbx], 33792
	jne	.L2247
	lea	edx, 64[rax]
	test	dl, dl
	jle	.L2247
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	and	dx, WORD PTR 2[rcx]
	je	.L2248
	lea	rax, Player_InitAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
.L2242:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2274:
	movzx	eax, WORD PTR 24[rcx]
	test	ax, ax
	jne	.L2244
	movzx	eax, BYTE PTR 40[rcx]
	add	eax, 32
	test	al, -64
	jne	.L2243
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2243
	lea	rax, Player_InitCrouch[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2242
	.p2align 4,,10
	.p2align 3
.L2244:
	add	eax, 127
	cmp	ax, 254
	jbe	.L2243
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2243
	lea	rax, Player_SpinAttack[rip]
	mov	ecx, 109
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L2247:
	mov	rdx, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rdx], 64
	je	.L2249
	lea	rdx, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rdx
.L2249:
	lea	edx, 96[rax]
	movzx	edx, dl
	cmp	edx, 191
	jle	.L2261
.L2250:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L2252
	neg	eax
.L2252:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2255
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 2
.L2256:
	test	eax, eax
	je	.L2242
.L2259:
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2242
	.p2align 4,,10
	.p2align 3
.L2255:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L2273
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L2273
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
	jmp	.L2259
	.p2align 4,,10
	.p2align 3
.L2248:
	mov	rdx, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rdx], 64
	je	.L2261
	lea	rdx, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rdx
	.p2align 4,,10
	.p2align 3
.L2261:
	movzx	edx, WORD PTR 24[rbx]
	test	dx, dx
	je	.L2250
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	cdqe
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	sar	eax, 5
	add	edx, eax
	mov	WORD PTR 24[rbx], dx
	jmp	.L2250
	.p2align 4,,10
	.p2align 3
.L2273:
	and	eax, 2
	jmp	.L2256
	.seh_endproc
	.p2align 4
	.globl	Player_Skidding
	.def	Player_Skidding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Skidding
Player_Skidding:
	.seh_endprologue
	movzx	edx, WORD PTR 108[rcx]
	mov	eax, DWORD PTR 36[rcx]
	sub	edx, 7
	and	eax, -33
	cmp	dx, 2
	setb	dl
	xor	eax, 1
	movzx	edx, dl
	add	edx, 5
	mov	WORD PTR 108[rcx], dx
	mov	rdx, QWORD PTR 160[rcx]
	and	DWORD PTR 48[rdx], -16385
	xor	edx, edx
	mov	DWORD PTR 36[rcx], eax
	lea	rax, Player_8025548[rip]
	mov	WORD PTR 24[rcx], dx
	mov	QWORD PTR gPlayer[rip], rax
	jmp	Player_8025548
	.seh_endproc
	.p2align 4
	.globl	Player_Taunt
	.def	Player_Taunt;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Taunt
Player_Taunt:
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
	lea	rax, gPlayerCharacterIdleAnims[rip]
	movsx	rdx, BYTE PTR 141[rcx]
	mov	rbp, QWORD PTR 160[rcx]
	movzx	esi, WORD PTR 112[rcx]
	movzx	edi, WORD PTR [rax+rdx*2]
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	mov	rbx, rcx
	cmp	ax, 128
	je	.L2318
.L2279:
	mov	rcx, rbx
	call	Player_TryJump
	test	eax, eax
	je	.L2319
.L2278:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L2318:
	movzx	eax, WORD PTR 24[rcx]
	test	ax, ax
	jne	.L2280
	movzx	eax, BYTE PTR 40[rcx]
	add	eax, 32
	test	al, -64
	jne	.L2279
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2279
	lea	rax, Player_InitCrouch[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2278
	.p2align 4,,10
	.p2align 3
.L2280:
	add	eax, 127
	cmp	ax, 254
	jbe	.L2279
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2279
	lea	rax, Player_SpinAttack[rip]
	mov	ecx, 109
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L2319:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR 40[rbx]
	cmp	BYTE PTR [rdx], 5
	je	.L2283
	test	DWORD PTR 36[rbx], 33792
	jne	.L2283
	lea	edx, 64[rax]
	test	dl, dl
	jle	.L2283
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	and	dx, WORD PTR 2[rcx]
	je	.L2283
	lea	rax, Player_InitAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2278
	.p2align 4,,10
	.p2align 3
.L2283:
	movzx	edx, WORD PTR 100[rbx]
	sub	esi, edi
	and	dx, 240
	je	.L2320
	cmp	dx, 64
	je	.L2289
	lea	rdi, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rdi
.L2289:
	cmp	si, 1
	je	.L2321
.L2286:
	lea	edx, 96[rax]
	movzx	edx, dl
	cmp	edx, 191
	jg	.L2291
	movzx	edx, WORD PTR 24[rbx]
	test	dx, dx
	je	.L2291
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	cdqe
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	sar	eax, 5
	add	edx, eax
	mov	WORD PTR 24[rbx], dx
.L2291:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edi, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edi, edx
	test	dil, -128
	je	.L2293
	neg	eax
.L2293:
	mov	ecx, 3840
	cmp	ax, cx
	cmovg	eax, ecx
	mov	ecx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, ecx
	cwde
	sub	r8d, eax
	add	eax, ecx
	and	edx, 128
	mov	rcx, rbx
	cmovne	eax, r8d
	mov	DWORD PTR 16[rbx], eax
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2296
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 2
.L2297:
	test	eax, eax
	je	.L2278
.L2300:
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2278
	.p2align 4,,10
	.p2align 3
.L2320:
	cmp	si, 1
	jne	.L2286
	movzx	edx, WORD PTR 114[rbx]
	test	dx, dx
	jne	.L2287
	mov	rdx, QWORD PTR 160[rbx]
	mov	r8d, 1
	mov	WORD PTR 114[rbx], r8w
	and	DWORD PTR 48[rdx], -16385
.L2288:
	test	BYTE PTR 49[rbp], 64
	je	.L2286
	lea	rsi, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rsi
	jmp	.L2286
	.p2align 4,,10
	.p2align 3
.L2296:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L2317
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L2317
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
	jmp	.L2300
	.p2align 4,,10
	.p2align 3
.L2317:
	and	eax, 2
	jmp	.L2297
.L2321:
	movzx	edx, WORD PTR 114[rbx]
.L2287:
	cmp	dx, 1
	jne	.L2286
	jmp	.L2288
	.seh_endproc
	.p2align 4
	.globl	Player_InitTaunt
	.def	Player_InitTaunt;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitTaunt
Player_InitTaunt:
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR 160[rcx]
	and	DWORD PTR 36[rcx], -33
	and	DWORD PTR 48[rax], -16385
	mov	eax, 1
	mov	WORD PTR 108[rcx], ax
	lea	rax, Player_Taunt[rip]
	mov	WORD PTR 24[rcx], dx
	mov	QWORD PTR gPlayer[rip], rax
	jmp	Player_Taunt
	.seh_endproc
	.p2align 4
	.globl	Player_Crouch
	.def	Player_Crouch;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Crouch
Player_Crouch:
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
	lea	rax, gPlayerCharacterIdleAnims[rip]
	movsx	rdx, BYTE PTR 141[rcx]
	cmp	WORD PTR 108[rcx], 2
	mov	rdi, QWORD PTR 160[rcx]
	movzx	esi, WORD PTR 112[rcx]
	movzx	ebp, WORD PTR [rax+rdx*2]
	mov	rbx, rcx
	je	.L2365
.L2324:
	mov	rcx, rbx
	call	Player_TryJump
	test	eax, eax
	je	.L2366
.L2323:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L2365:
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rcx]
	and	ax, WORD PTR [rdx]
	je	.L2324
	lea	rax, Player_InitSpindash[rip]
	mov	r9d, 3
	mov	edx, 9
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, DWORD PTR 36[rcx]
	mov	WORD PTR 108[rcx], r9w
	and	eax, -35
	or	eax, 1028
	mov	DWORD PTR 36[rcx], eax
	call	Player_HandleSpriteYOffsetChange
	xor	r10d, r10d
	movabs	rax, 650207196201615360
	mov	WORD PTR 42[rcx], r10w
	mov	QWORD PTR 20[rcx], rax
	mov	ecx, 109
	call	m4aSongNumStart
	call	CreateSpindashDustEffect
	lea	rax, Player_Spindash[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	Player_Spindash
	.p2align 4,,10
	.p2align 3
.L2366:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR 40[rbx]
	cmp	BYTE PTR [rdx], 5
	je	.L2327
	test	DWORD PTR 36[rbx], 33792
	jne	.L2327
	lea	edx, 64[rax]
	test	dl, dl
	jle	.L2327
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	and	dx, WORD PTR 2[rcx]
	je	.L2327
	lea	rax, Player_InitAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2323
	.p2align 4,,10
	.p2align 3
.L2327:
	movzx	edx, WORD PTR 100[rbx]
	sub	esi, ebp
	and	dx, 240
	jne	.L2328
	cmp	si, 2
	je	.L2367
.L2330:
	lea	edx, 96[rax]
	movzx	edx, dl
	cmp	edx, 191
	jg	.L2335
	movzx	edx, WORD PTR 24[rbx]
	test	dx, dx
	jne	.L2368
.L2335:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edi, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edi, ecx
	test	dil, -128
	je	.L2337
	neg	eax
.L2337:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2340
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 2
.L2341:
	test	eax, eax
	je	.L2323
.L2344:
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2323
	.p2align 4,,10
	.p2align 3
.L2340:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L2364
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L2364
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
	jmp	.L2344
	.p2align 4,,10
	.p2align 3
.L2364:
	and	eax, 2
	jmp	.L2341
	.p2align 4,,10
	.p2align 3
.L2328:
	cmp	dx, 128
	je	.L2333
	lea	rcx, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rcx
.L2333:
	cmp	si, 2
	jne	.L2330
	movzx	edx, WORD PTR 114[rbx]
.L2331:
	cmp	dx, 1
	jne	.L2330
	jmp	.L2332
	.p2align 4,,10
	.p2align 3
.L2368:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	cdqe
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	sar	eax, 5
	add	edx, eax
	mov	WORD PTR 24[rbx], dx
	jmp	.L2335
	.p2align 4,,10
	.p2align 3
.L2367:
	movzx	edx, WORD PTR 114[rbx]
	test	dx, dx
	jne	.L2331
	mov	rdx, QWORD PTR 160[rbx]
	mov	r8d, 1
	mov	WORD PTR 114[rbx], r8w
	and	DWORD PTR 48[rdx], -16385
.L2332:
	test	BYTE PTR 49[rdi], 64
	je	.L2330
	lea	rsi, Player_TouchGround[rip]
	mov	QWORD PTR gPlayer[rip], rsi
	jmp	.L2330
	.seh_endproc
	.p2align 4
	.globl	Player_InitCrouch
	.def	Player_InitCrouch;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitCrouch
Player_InitCrouch:
	.seh_endprologue
	mov	eax, 2
	xor	edx, edx
	and	DWORD PTR 36[rcx], -33
	mov	WORD PTR 108[rcx], ax
	lea	rax, Player_Crouch[rip]
	mov	WORD PTR 24[rcx], dx
	mov	QWORD PTR gPlayer[rip], rax
	jmp	Player_Crouch
	.seh_endproc
	.p2align 4
	.globl	sub_8029ED8
	.def	sub_8029ED8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029ED8
sub_8029ED8:
	.seh_endprologue
	movzx	eax, WORD PTR 46[rcx]
	test	ax, ax
	je	.L2371
	sub	eax, 1
	mov	WORD PTR 46[rcx], ax
.L2370:
	ret
	.p2align 4,,10
	.p2align 3
.L2371:
	movzx	eax, BYTE PTR 40[rcx]
	add	eax, 32
	test	al, -64
	je	.L2370
	movzx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L2370
	or	DWORD PTR 36[rcx], 2
	xor	eax, eax
	mov	edx, 30
	mov	WORD PTR 24[rcx], ax
	mov	WORD PTR 46[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8029F20
	.def	sub_8029F20;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029F20
sub_8029F20:
	.seh_endprologue
	movsx	eax, BYTE PTR 40[rcx]
	test	eax, eax
	js	.L2380
	mov	edx, 2
	cmp	eax, edx
	cmovge	edx, eax
	sub	edx, 2
	test	eax, eax
	mov	eax, 0
	cmovne	eax, edx
	mov	BYTE PTR 40[rcx], al
	ret
	.p2align 4,,10
	.p2align 3
.L2380:
	mov	edx, -2
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 2
	mov	BYTE PTR 40[rcx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	ContinueLevelSongAfterDrowning
	.def	ContinueLevelSongAfterDrowning;	.scl	2;	.type	32;	.endef
	.seh_proc	ContinueLevelSongAfterDrowning
ContinueLevelSongAfterDrowning:
	.seh_endprologue
	mov	eax, 15390
	mov	WORD PTR 142[rcx], ax
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	rax, QWORD PTR 496[rax]
	cmp	QWORD PTR [rdx], rax
	je	.L2383
.L2381:
	ret
	.p2align 4,,10
	.p2align 3
.L2383:
	cmp	BYTE PTR 104[rcx], 0
	jne	.L2381
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	jmp	m4aSongNumStartOrContinue
	.seh_endproc
	.p2align 4
	.globl	sub_8029FA4
	.def	sub_8029FA4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8029FA4
sub_8029FA4:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 134217728
	cmp	eax, 1
	sbb	eax, eax
	and	eax, -4
	add	eax, 7
	and	eax, DWORD PTR [rdx]
	jne	.L2384
	movsx	eax, BYTE PTR 27[rcx]
	mov	r9, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8d, DWORD PTR 12[rcx]
	mov	edx, DWORD PTR 16[rcx]
	mov	ecx, eax
	neg	ecx
	test	BYTE PTR [r9], -128
	cmovne	eax, ecx
	sar	edx, 8
	mov	ecx, r8d
	sar	ecx, 8
	add	edx, eax
	jmp	CreateBrakingDustEffect
	.p2align 4,,10
	.p2align 3
.L2384:
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_GoalBrake
	.def	Player_GoalBrake;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_GoalBrake
Player_GoalBrake:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rdx, gPlayerCharacterIdleAnims[rip]
	mov	rbx, rcx
	movsx	rcx, BYTE PTR 141[rcx]
	movzx	eax, WORD PTR 112[rbx]
	sub	ax, WORD PTR [rdx+rcx*2]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 28[rcx]
	cmp	edx, -55
	jl	.L2392
	sub	edx, 1
	mov	DWORD PTR 28[rcx], edx
.L2392:
	cmp	ax, 31
	je	.L2423
.L2393:
	movzx	eax, WORD PTR 24[rbx]
.L2403:
	sub	eax, 32
	xor	edx, edx
	mov	rcx, rbx
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 24[rbx], ax
	call	sub_8029FA4
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L2406
	neg	eax
.L2406:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2409
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L2391:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2409:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L2391
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L2391
	or	DWORD PTR 36[rbx], 2
	xor	eax, eax
	mov	edx, 30
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2423:
	movzx	eax, WORD PTR 114[rbx]
	test	ax, ax
	jne	.L2394
	mov	rdx, QWORD PTR 160[rbx]
	movzx	eax, WORD PTR 24[rbx]
	test	BYTE PTR 49[rdx], 64
	je	.L2403
	mov	r9d, 26
	mov	WORD PTR 108[rbx], r9w
	jmp	.L2403
	.p2align 4,,10
	.p2align 3
.L2394:
	cmp	ax, 1
	jne	.L2396
	movzx	eax, WORD PTR 24[rbx]
	test	ax, ax
	jg	.L2403
	mov	ecx, 27
	xor	r8d, r8d
	mov	WORD PTR 108[rbx], cx
	mov	ecx, 232
	mov	WORD PTR 24[rbx], r8w
	call	m4aSongNumStop
	mov	rax, QWORD PTR .refptr.gStageGoalX[rip]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L2422
	mov	r9d, DWORD PTR 12[rbx]
	sar	r9d, 8
	mov	edx, r9d
	sub	edx, eax
	cmp	dx, 730
	jbe	.L2411
	cmp	dx, 1114
	jbe	.L2412
	mov	r8d, 100
	cmp	dx, 1401
	ja	.L2422
	.p2align 4,,10
	.p2align 3
.L2399:
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	ecx, DWORD PTR [rax]
	lea	edx, [r8+rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L2401
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L2401
	mov	r10, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [r10]
	sub	ecx, edx
	mov	edx, 255
	add	eax, ecx
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [r10], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L2401:
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, r9d
	sar	edx, 8
	call	CreateStageGoalBonusPointsAnim
.L2422:
	movzx	eax, WORD PTR 114[rbx]
.L2396:
	cmp	ax, 2
	jne	.L2393
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L2393
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_InitVictoryPoseTransition
.L2411:
	mov	r8d, 800
	jmp	.L2399
.L2412:
	mov	r8d, 500
	jmp	.L2399
	.seh_endproc
	.p2align 4
	.globl	Player_GoalSlowdown
	.def	Player_GoalSlowdown;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_GoalSlowdown
Player_GoalSlowdown:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageGoalX[rip]
	movzx	eax, WORD PTR 13[rcx]
	sub	ax, WORD PTR [rdx]
	movzx	edx, WORD PTR 24[rcx]
	mov	rbx, rcx
	cmp	dx, 511
	jle	.L2425
	test	BYTE PTR 102[rcx], 32
	jne	.L2426
	cmp	ax, 1401
	jbe	.L2443
.L2426:
	mov	rax, QWORD PTR 160[rbx]
	mov	r8d, 25
	mov	ecx, 232
	mov	WORD PTR 108[rbx], r8w
	and	DWORD PTR 48[rax], -16385
	call	m4aSongNumStart
	lea	rax, Player_GoalBrake[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_GoalBrake
	.p2align 4,,10
	.p2align 3
.L2425:
	cmp	ax, 1401
	ja	.L2426
	test	dx, dx
	jg	.L2429
	xor	ecx, ecx
	mov	WORD PTR 24[rbx], cx
.L2430:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_InitVictoryPoseTransition
	.p2align 4,,10
	.p2align 3
.L2443:
	sub	edx, 8
	mov	WORD PTR 24[rcx], dx
.L2431:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 28[rdx]
	cmp	eax, -55
	jl	.L2432
	sub	eax, 1
	mov	DWORD PTR 28[rdx], eax
.L2432:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L2434
	neg	eax
.L2434:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2437
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L2424:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2437:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L2424
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L2424
	xor	eax, eax
	mov	edx, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], ax
	mov	WORD PTR 46[rbx], dx
	jmp	.L2424
	.p2align 4,,10
	.p2align 3
.L2429:
	sub	edx, 8
	xor	eax, eax
	test	dx, dx
	cmovns	eax, edx
	mov	WORD PTR 24[rcx], ax
	jg	.L2431
	jmp	.L2430
	.seh_endproc
	.p2align 4
	.globl	Player_HandleGroundMovement
	.def	Player_HandleGroundMovement;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleGroundMovement
Player_HandleGroundMovement:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r8d, DWORD PTR 80[rcx]
	mov	rbx, rcx
	mov	ecx, DWORD PTR 84[rcx]
	cmp	WORD PTR 46[rbx], 0
	movzx	eax, WORD PTR 24[rbx]
	jne	.L2445
	movzx	edx, WORD PTR 100[rbx]
	test	dl, 48
	je	.L2445
	test	ax, ax
	jle	.L2446
	and	edx, 16
	je	.L2447
	mov	edx, DWORD PTR 76[rbx]
	movsx	ecx, ax
	cmp	ecx, edx
	jl	.L2497
	add	WORD PTR 96[rbx], r8w
.L2450:
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	and	edx, -2
	mov	DWORD PTR 36[rbx], edx
	test	ah, -128
	jne	.L2479
.L2452:
	movzx	eax, WORD PTR 108[rbx]
	sub	eax, 7
	cmp	ax, 1
	ja	.L2479
	mov	eax, 9
	mov	WORD PTR 108[rbx], ax
	jmp	.L2479
	.p2align 4,,10
	.p2align 3
.L2445:
	mov	ecx, DWORD PTR 36[rbx]
	movsx	edx, ax
	and	ecx, 32768
	test	edx, edx
	jle	.L2475
	sub	eax, 8
	mov	esi, 9
	test	ax, ax
	jle	.L2494
.L2478:
	mov	WORD PTR 24[rbx], ax
	test	ecx, ecx
	jne	.L2479
.L2488:
	movzx	eax, WORD PTR 108[rbx]
.L2460:
	cmp	si, ax
	je	.L2479
.L2493:
	mov	WORD PTR 108[rbx], si
.L2479:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8023128
	.p2align 4,,10
	.p2align 3
.L2475:
	jne	.L2477
	test	ecx, ecx
	jne	.L2479
	movzx	eax, WORD PTR 108[rbx]
	xor	esi, esi
	jmp	.L2460
	.p2align 4,,10
	.p2align 3
.L2477:
	mov	esi, 9
	add	ax, 8
	js	.L2478
.L2494:
	xor	eax, eax
	xor	esi, esi
	jmp	.L2478
	.p2align 4,,10
	.p2align 3
.L2446:
	je	.L2461
	and	edx, 32
	jne	.L2498
	add	ecx, eax
	cmp	ax, -511
	jge	.L2466
	movzx	esi, WORD PTR 108[rbx]
	lea	eax, -7[rsi]
	cmp	ax, 1
	jbe	.L2467
	cmp	WORD PTR 92[rbx], 4
	sbb	esi, esi
	add	esi, 8
.L2467:
	mov	WORD PTR 24[rbx], cx
	jmp	.L2496
	.p2align 4,,10
	.p2align 3
.L2447:
	mov	edx, eax
	sub	edx, ecx
	cmp	ax, 511
	jle	.L2453
	movzx	esi, WORD PTR 108[rbx]
	lea	eax, -7[rsi]
	cmp	ax, 1
	jbe	.L2454
	cmp	WORD PTR 92[rbx], 4
	sbb	esi, esi
	add	esi, 8
.L2454:
	mov	WORD PTR 24[rbx], dx
.L2496:
	mov	rcx, rbx
	call	sub_8029FA4
	mov	ecx, 115
	call	m4aSongNumStart
	test	BYTE PTR 37[rbx], -128
	jne	.L2493
	jmp	.L2488
	.p2align 4,,10
	.p2align 3
.L2461:
	mov	ecx, DWORD PTR 36[rbx]
	sar	edx, 4
	mov	r11d, ecx
	xor	edx, ecx
	and	r11d, 32768
	and	edx, 1
	je	.L2472
	mov	eax, r8d
	mov	edx, 14
	neg	eax
	and	ecx, 1
	mov	rcx, rbx
	cmove	eax, r8d
	mov	WORD PTR 24[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
	test	r11d, r11d
	jne	.L2479
	movzx	eax, WORD PTR 108[rbx]
	mov	esi, 9
	jmp	.L2460
	.p2align 4,,10
	.p2align 3
.L2453:
	mov	eax, DWORD PTR 36[rbx]
	mov	WORD PTR 24[rbx], dx
	mov	ecx, eax
	and	ecx, 32768
	test	dx, dx
	jle	.L2492
	test	al, 1
	jne	.L2492
	movzx	eax, WORD PTR 108[rbx]
	lea	edx, -7[rax]
	cmp	dx, 1
	jbe	.L2499
.L2470:
	lea	rax, Player_Skidding[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2479
	.p2align 4,,10
	.p2align 3
.L2497:
	add	eax, r8d
	movsx	ecx, ax
	cmp	edx, ecx
	cmovl	eax, edx
	mov	WORD PTR 24[rbx], ax
	jmp	.L2450
	.p2align 4,,10
	.p2align 3
.L2472:
	lea	rax, Player_Skidding[rip]
	mov	QWORD PTR gPlayer[rip], rax
	test	r11d, r11d
	jne	.L2479
	jmp	.L2452
	.p2align 4,,10
	.p2align 3
.L2498:
	mov	edx, DWORD PTR 76[rbx]
	movsx	r9d, ax
	mov	ecx, edx
	neg	ecx
	cmp	r9d, ecx
	jle	.L2463
	sub	eax, r8d
	neg	edx
	movsx	r8d, ax
	cmp	ecx, r8d
	cmovg	eax, edx
	mov	WORD PTR 24[rbx], ax
.L2465:
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	or	edx, 1
	mov	DWORD PTR 36[rbx], edx
	test	ah, -128
	jne	.L2479
	jmp	.L2452
	.p2align 4,,10
	.p2align 3
.L2492:
	test	ecx, ecx
	jne	.L2479
	jmp	.L2452
	.p2align 4,,10
	.p2align 3
.L2466:
	mov	eax, DWORD PTR 36[rbx]
	mov	WORD PTR 24[rbx], cx
	mov	edx, eax
	and	edx, 32768
	test	cx, cx
	js	.L2468
.L2490:
	test	edx, edx
	jne	.L2479
	jmp	.L2452
	.p2align 4,,10
	.p2align 3
.L2463:
	add	WORD PTR 96[rbx], r8w
	jmp	.L2465
.L2468:
	test	al, 1
	je	.L2490
	movzx	eax, WORD PTR 108[rbx]
	lea	ecx, -7[rax]
	cmp	cx, 1
	ja	.L2470
	lea	rsi, Player_Skidding[rip]
	mov	QWORD PTR gPlayer[rip], rsi
	test	edx, edx
	je	.L2481
.L2471:
	mov	esi, 7
	jmp	.L2493
.L2499:
	lea	rsi, Player_Skidding[rip]
	mov	QWORD PTR gPlayer[rip], rsi
	test	ecx, ecx
	jne	.L2471
.L2481:
	mov	esi, 7
	jmp	.L2460
	.seh_endproc
	.p2align 4
	.globl	Player_HandleMultiplayerFinish
	.def	Player_HandleMultiplayerFinish;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_HandleMultiplayerFinish
Player_HandleMultiplayerFinish:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gMultiplayerRanks[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	movsx	di, BYTE PTR [rdx+rax]
	mov	rax, QWORD PTR .refptr.gStageGoalX[rip]
	mov	rbx, rcx
	mov	edx, DWORD PTR 12[rcx]
	movzx	esi, di
	add	esi, 2
	sal	esi, 5
	add	esi, DWORD PTR [rax]
	mov	eax, 16
	sal	esi, 8
	cmp	edx, esi
	jb	.L2501
	xor	eax, eax
	cmp	esi, edx
	setb	al
	sal	eax, 5
.L2501:
	mov	WORD PTR 100[rbx], ax
	mov	rcx, rbx
	call	Player_HandleGroundMovement
	movzx	edx, BYTE PTR 40[rbx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L2502
	movzx	eax, WORD PTR 24[rbx]
	test	ax, ax
	jne	.L2522
.L2502:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	edx, ecx
	test	dl, -128
	je	.L2504
	neg	eax
.L2504:
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2507
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
.L2508:
	mov	eax, DWORD PTR 12[rbx]
	cmp	esi, eax
	jnb	.L2509
	cmp	WORD PTR 100[rbx], 16
	je	.L2510
.L2511:
	cmp	esi, eax
	je	.L2510
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L2509:
	cmp	eax, esi
	jnb	.L2511
	cmp	WORD PTR 100[rbx], 32
	jne	.L2511
.L2510:
	xor	eax, eax
	cmp	di, 4
	mov	BYTE PTR 98[rbx], 0
	mov	WORD PTR 24[rbx], ax
	sbb	eax, eax
	xor	edx, edx
	xor	ecx, ecx
	and	DWORD PTR 36[rbx], -2
	and	eax, 28
	mov	WORD PTR 108[rbx], ax
	lea	rax, Player_Nop[rip]
	mov	DWORD PTR 20[rbx], 0
	mov	DWORD PTR 12[rbx], esi
	mov	WORD PTR 122[rbx], dx
	mov	WORD PTR 100[rbx], cx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L2522:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 2
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	sar	edx, 5
	add	eax, edx
	mov	WORD PTR 24[rbx], ax
	jmp	.L2502
	.p2align 4,,10
	.p2align 3
.L2507:
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L2508
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 479
	ja	.L2508
	xor	r8d, r8d
	mov	r9d, 30
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 24[rbx], r8w
	mov	WORD PTR 46[rbx], r9w
	jmp	.L2508
	.seh_endproc
	.p2align 4
	.globl	Player_InitReachedGoal
	.def	Player_InitReachedGoal;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitReachedGoal
Player_InitReachedGoal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	mov	rbx, rcx
	cmp	al, 2
	ja	.L2541
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	ecx, edx
	and	ecx, 3
	cmp	cl, 2
	je	.L2525
	cmp	dl, 28
	je	.L2542
	cmp	dl, 29
	je	.L2525
.L2527:
	mov	edx, DWORD PTR gPlayer[rip+36]
	and	edx, 134217728
	cmp	al, 1
	je	.L2543
	test	edx, edx
	je	.L2529
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rax], 6
	ja	.L2530
.L2529:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	mov	eax, r11d
	and	eax, -6
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	cmp	WORD PTR 24[rbx], 0
	mov	WORD PTR 26[rbx], dx
	jle	.L2544
	mov	eax, 9
	and	r11d, -2097158
	mov	WORD PTR 108[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	and	DWORD PTR 48[rax], -16385
	lea	rax, Player_GoalSlowdown[rip]
	mov	DWORD PTR 36[rbx], r11d
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_GoalSlowdown
	.p2align 4,,10
	.p2align 3
.L2542:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L2527
.L2525:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbx
	mov	r11d, DWORD PTR 36[rbx]
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	mov	eax, 9
	and	r11d, -6
	mov	WORD PTR 108[rbx], ax
	lea	rax, Player_8027C5C[rip]
	mov	DWORD PTR 36[rbx], r11d
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_8027C5C
	.p2align 4,,10
	.p2align 3
.L2541:
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	eax, -5
	or	eax, 2097152
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	lea	rax, Player_HandleMultiplayerFinish[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_HandleMultiplayerFinish
	.p2align 4,,10
	.p2align 3
.L2543:
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	mov	BYTE PTR [rax], 7
	test	edx, edx
	je	.L2529
.L2530:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	r8d, 3590
	xor	r10d, r10d
	mov	r9d, 9
	and	r11d, -6
	lea	rax, Player_80279F8[rip]
	mov	WORD PTR 26[rbx], r8w
	mov	BYTE PTR 98[rbx], 0
	mov	WORD PTR 108[rbx], r9w
	mov	DWORD PTR 36[rbx], r11d
	mov	WORD PTR 122[rbx], r10w
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_80279F8
	.p2align 4,,10
	.p2align 3
.L2544:
	add	rsp, 32
	pop	rbx
	jmp	Player_InitVictoryPoseTransition
	.seh_endproc
	.p2align 4
	.globl	Player_SetMovestate_IsInScriptedSequence
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SetMovestate_IsInScriptedSequence
Player_SetMovestate_IsInScriptedSequence:
	.seh_endprologue
	or	DWORD PTR gPlayer[rip+36], 1073741824
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_ClearMovestate_IsInScriptedSequence
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_ClearMovestate_IsInScriptedSequence
Player_ClearMovestate_IsInScriptedSequence:
	.seh_endprologue
	and	DWORD PTR gPlayer[rip+36], -1073741825
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_DisableInputAndBossTimer
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_DisableInputAndBossTimer
Player_DisableInputAndBossTimer:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR gPlayer[rip+117], 10
	movzx	edx, WORD PTR [rax]
	mov	ecx, edx
	or	ecx, 35
	mov	WORD PTR [rax], cx
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 2
	je	.L2549
	ret
	.p2align 4,,10
	.p2align 3
.L2549:
	or	dx, 547
	mov	WORD PTR [rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_DisableInputAndBossTimer_FinalBoss
	.def	Player_DisableInputAndBossTimer_FinalBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_DisableInputAndBossTimer_FinalBoss
Player_DisableInputAndBossTimer_FinalBoss:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	mov	ecx, edx
	or	ecx, 35
	mov	WORD PTR [rax], cx
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 2
	je	.L2552
	ret
	.p2align 4,,10
	.p2align 3
.L2552:
	or	dx, 547
	mov	WORD PTR [rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_TryTaunt
	.def	Player_TryTaunt;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryTaunt
Player_TryTaunt:
	.seh_endprologue
	xor	edx, edx
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	cmp	ax, 64
	je	.L2557
.L2553:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L2557:
	cmp	WORD PTR 24[rcx], 0
	jne	.L2553
	lea	rax, Player_InitTaunt[rip]
	mov	edx, 1
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_TryCrouchOrSpinAttack
	.def	Player_TryCrouchOrSpinAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryCrouchOrSpinAttack
Player_TryCrouchOrSpinAttack:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	edx, edx
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	cmp	ax, 128
	je	.L2567
.L2558:
	mov	eax, edx
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L2567:
	movzx	eax, WORD PTR 24[rcx]
	test	ax, ax
	jne	.L2560
	movzx	eax, BYTE PTR 40[rcx]
	add	eax, 32
	test	al, -64
	jne	.L2558
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2558
	lea	rax, Player_InitCrouch[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2560:
	add	eax, 127
	cmp	ax, 254
	jbe	.L2558
	test	DWORD PTR 36[rcx], 16777222
	jne	.L2558
	lea	rax, Player_SpinAttack[rip]
	mov	ecx, 109
	mov	QWORD PTR gPlayer[rip], rax
	call	m4aSongNumStart
.L2561:
	mov	edx, 1
	jmp	.L2558
	.seh_endproc
	.p2align 4
	.globl	Player_Idle
	.def	Player_Idle;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Idle
Player_Idle:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	edx, eax
	and	edx, 134217738
	mov	rbx, rcx
	cmp	edx, 134217728
	je	.L2603
	and	eax, 2058
	cmp	eax, 2048
	je	.L2604
	movzx	eax, WORD PTR 100[rcx]
	and	ax, 240
	cmp	ax, 64
	je	.L2605
.L2573:
	mov	rcx, rbx
	call	Player_TryCrouchOrSpinAttack
	test	eax, eax
	je	.L2606
.L2568:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2605:
	cmp	WORD PTR 24[rcx], 0
	jne	.L2573
	lea	rax, Player_InitTaunt[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2568
	.p2align 4,,10
	.p2align 3
.L2606:
	mov	rsi, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	movzx	eax, BYTE PTR 40[rbx]
	and	dx, WORD PTR [rsi]
	je	.L2575
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, -128
	sub	edx, eax
	test	BYTE PTR [rcx], -128
	cmovne	eax, edx
	mov	rdx, rbx
	add	eax, -128
	movzx	ecx, al
	call	sub_8022F58
	cmp	eax, 3
	jle	.L2575
	lea	rax, Player_InitJump[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2568
	.p2align 4,,10
	.p2align 3
.L2575:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L2577
	test	DWORD PTR 36[rbx], 33792
	jne	.L2577
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 64
	test	al, al
	jle	.L2577
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR 2[rsi]
	je	.L2577
	lea	rax, Player_InitAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2568
	.p2align 4,,10
	.p2align 3
.L2604:
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	r8d, 3590
	mov	r9d, 62
	mov	ecx, 292
	and	r11d, -6
	mov	WORD PTR 26[rbx], r8w
	mov	WORD PTR 108[rbx], r9w
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	jne	.L2568
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	Player_8026BCC.part.0
	.p2align 4,,10
	.p2align 3
.L2603:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	Player_InitReachedGoal
	.p2align 4,,10
	.p2align 3
.L2577:
	mov	rcx, rbx
	call	Player_HandleGroundMovement
	movzx	edx, BYTE PTR 40[rbx]
	lea	eax, 96[rdx]
	movzx	eax, al
	cmp	eax, 191
	jg	.L2578
	movzx	ecx, WORD PTR 24[rbx]
	test	cx, cx
	je	.L2578
	lea	eax, 0[0+rdx*4]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	sar	eax, 5
	add	ecx, eax
	mov	WORD PTR 24[rbx], cx
.L2578:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	movsx	eax, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	esi, WORD PTR [rax]
	movzx	eax, WORD PTR 22[rbx]
	xor	esi, edx
	test	sil, -128
	je	.L2580
	neg	eax
.L2580:
	mov	ecx, 3840
	cmp	ax, cx
	cmovg	eax, ecx
	mov	ecx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, ecx
	cwde
	sub	r8d, eax
	add	eax, ecx
	and	edx, 128
	mov	rcx, rbx
	cmovne	eax, r8d
	mov	DWORD PTR 16[rbx], eax
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2583
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
.L2584:
	test	ah, -128
	je	.L2585
	and	eax, -3
	mov	DWORD PTR 36[rbx], eax
	jmp	.L2568
.L2583:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L2584
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L2584
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
	jmp	.L2584
.L2585:
	test	al, 2
	je	.L2568
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	.L2568
	.seh_endproc
	.p2align 4
	.globl	Player_TouchGround
	.def	Player_TouchGround;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TouchGround
Player_TouchGround:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR 36[rcx]
	mov	rbx, rcx
	mov	ecx, edx
	and	ecx, 3
	cmp	cl, 2
	je	.L2608
	cmp	dl, 28
	je	.L2623
	cmp	dl, 29
	jne	.L2610
.L2608:
	test	al, 2
	jne	.L2624
.L2610:
	and	eax, 2058
	mov	rcx, rbx
	cmp	eax, 2048
	je	.L2625
	call	Player_TransitionCancelFlyingAndBoost
	and	DWORD PTR 36[rbx], -7
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	movzx	eax, WORD PTR 24[rbx]
	neg	ax
	sbb	ax, ax
	and	eax, 9
	mov	WORD PTR 108[rbx], ax
	lea	rax, Player_Idle[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Idle
	.p2align 4,,10
	.p2align 3
.L2623:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L2610
	test	al, 2
	je	.L2610
.L2624:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8025F84
	.p2align 4,,10
	.p2align 3
.L2625:
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	mov	ecx, 62
	and	r11d, -6
	mov	WORD PTR 108[rbx], cx
	mov	ecx, 292
	mov	WORD PTR 26[rbx], dx
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	je	.L2626
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2626:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.seh_endproc
	.p2align 4
	.globl	Player_Rolling
	.def	Player_Rolling;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Rolling
Player_Rolling:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	edx, eax
	and	edx, 134217738
	mov	rbx, rcx
	cmp	edx, 134217728
	je	.L2674
	and	eax, 2058
	cmp	eax, 2048
	je	.L2675
	movzx	eax, BYTE PTR 176[rcx]
	test	al, al
	je	.L2632
	movzx	edx, WORD PTR 24[rcx]
	sub	eax, 1
	mov	BYTE PTR 176[rcx], al
	mov	eax, edx
.L2633:
	test	dx, dx
	jle	.L2643
.L2641:
	lea	edx, -8[rax]
	mov	ecx, 8
	add	eax, 119
	mov	WORD PTR 88[rbx], cx
	mov	WORD PTR 24[rbx], dx
	cmp	ax, 254
	jbe	.L2640
.L2645:
	test	dx, dx
	je	.L2646
	movzx	eax, BYTE PTR 40[rbx]
	lea	ecx, 96[rax]
	movzx	ecx, cl
	cmp	ecx, 191
	jg	.L2648
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	movsx	edx, dx
	cdqe
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, eax, 60
	mov	ecx, eax
	sar	eax, 10
	sar	ecx, 8
	test	edx, edx
	jle	.L2649
	test	ecx, ecx
	cmovle	ecx, eax
.L2650:
	add	ecx, edx
	mov	WORD PTR 24[rbx], cx
.L2648:
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	sub_8023260
	mov	rcx, rbx
	call	sub_8023128
	mov	edx, DWORD PTR 36[rbx]
	movzx	eax, WORD PTR 22[rbx]
	test	dl, 2
	je	.L2652
	lea	ecx, 12[rax]
	add	eax, 42
	and	edx, 64
	cmovne	eax, ecx
.L2652:
	movsx	edx, WORD PTR 20[rbx]
	add	DWORD PTR 12[rbx], edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gPrevStageFlags[rip]
	movzx	r8d, WORD PTR [rdx]
	mov	edx, eax
	neg	edx
	xor	r8d, ecx
	and	r8d, 128
	cmovne	eax, edx
	mov	edx, 3840
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], ax
	mov	r8d, edx
	cwde
	sub	r8d, eax
	add	edx, eax
	and	ecx, 128
	mov	rcx, rbx
	cmovne	edx, r8d
	mov	DWORD PTR 16[rbx], edx
	call	sub_8022D6C
	movzx	eax, WORD PTR 46[rbx]
	test	ax, ax
	je	.L2657
	sub	eax, 1
	mov	WORD PTR 46[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 2
.L2658:
	test	eax, eax
	jne	.L2661
.L2627:
	add	rsp, 32
	pop	rbx
	ret
.L2676:
	or	DWORD PTR 36[rbx], 1
	mov	eax, edx
	.p2align 4,,10
	.p2align 3
.L2643:
	test	dx, dx
	je	.L2640
	lea	edx, 8[rax]
	mov	ecx, -8
	add	ax, 135
	mov	WORD PTR 88[rbx], cx
	mov	WORD PTR 24[rbx], dx
	cmp	ax, 254
	ja	.L2645
	.p2align 4,,10
	.p2align 3
.L2640:
	xor	r8d, r8d
	xor	r9d, r9d
	mov	WORD PTR 88[rbx], r8w
	mov	WORD PTR 24[rbx], r9w
.L2646:
	lea	rax, Player_TouchGround[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_TouchGround
	.p2align 4,,10
	.p2align 3
.L2632:
	call	Player_TryJump
	test	eax, eax
	jne	.L2627
	cmp	WORD PTR 46[rbx], 0
	movzx	edx, WORD PTR 24[rbx]
	jne	.L2635
	movzx	eax, WORD PTR 100[rbx]
	and	eax, 48
	cmp	ax, 16
	je	.L2636
	cmp	ax, 32
	je	.L2637
.L2635:
	mov	eax, edx
	jmp	.L2633
	.p2align 4,,10
	.p2align 3
.L2657:
	movzx	edx, BYTE PTR 40[rbx]
	mov	eax, DWORD PTR 36[rbx]
	add	edx, 32
	and	edx, 192
	je	.L2673
	movzx	ecx, WORD PTR 24[rbx]
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, 479
	ja	.L2673
	xor	edx, edx
	or	eax, 2
	mov	ecx, 30
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 46[rbx], cx
.L2661:
	lea	rax, Player_Jumping[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2673:
	and	eax, 2
	jmp	.L2658
	.p2align 4,,10
	.p2align 3
.L2649:
	test	ecx, ecx
	cmovns	ecx, eax
	jmp	.L2650
	.p2align 4,,10
	.p2align 3
.L2674:
	add	rsp, 32
	pop	rbx
	jmp	Player_InitReachedGoal
	.p2align 4,,10
	.p2align 3
.L2675:
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 62
	mov	r10d, 3590
	mov	ecx, 292
	and	r11d, -6
	mov	WORD PTR 108[rbx], ax
	mov	WORD PTR 26[rbx], r10w
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	jne	.L2627
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.p2align 4,,10
	.p2align 3
.L2637:
	movsx	eax, dx
	test	eax, eax
	jle	.L2676
	cmp	eax, 23
	jle	.L2640
	lea	eax, -24[rdx]
	mov	WORD PTR 24[rbx], ax
	test	ax, ax
	jne	.L2641
	jmp	.L2640
	.p2align 4,,10
	.p2align 3
.L2636:
	movsx	eax, dx
	test	eax, eax
	js	.L2642
	and	DWORD PTR 36[rbx], -2
	mov	eax, edx
	test	dx, dx
	jne	.L2641
	jmp	.L2640
	.p2align 4,,10
	.p2align 3
.L2642:
	cmp	eax, -23
	jge	.L2640
	lea	eax, 24[rdx]
	mov	WORD PTR 24[rbx], ax
	mov	edx, eax
	jmp	.L2643
	.seh_endproc
	.p2align 4
	.globl	Player_SpinAttack
	.def	Player_SpinAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SpinAttack
Player_SpinAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	r11d, DWORD PTR 36[rcx]
	mov	edx, eax
	and	edx, 3
	mov	rbx, rcx
	cmp	dl, 2
	je	.L2678
	cmp	al, 28
	je	.L2690
	cmp	al, 29
	jne	.L2680
.L2678:
	test	r11b, 2
	jne	.L2691
.L2680:
	mov	eax, r11d
	and	eax, 2058
	cmp	eax, 2048
	je	.L2692
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 9
	mov	rcx, rbx
	or	r11d, 4
	and	DWORD PTR 48[rax], -16385
	mov	eax, 4
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	DWORD PTR 36[rbx], r11d
	lea	rax, Player_Rolling[rip]
	mov	WORD PTR 26[rbx], dx
	mov	BYTE PTR 176[rbx], 0
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Rolling
	.p2align 4,,10
	.p2align 3
.L2690:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L2680
	test	r11b, 2
	je	.L2680
.L2691:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8025F84
	.p2align 4,,10
	.p2align 3
.L2692:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	r8d, 62
	and	r11d, -6
	mov	WORD PTR 26[rbx], cx
	mov	ecx, 292
	mov	WORD PTR 108[rbx], r8w
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	je	.L2693
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2693:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.seh_endproc
	.p2align 4
	.globl	Player_InitPipeExit
	.def	Player_InitPipeExit;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitPipeExit
Player_InitPipeExit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r11d, DWORD PTR 36[rcx]
	mov	eax, r11d
	and	eax, 2058
	mov	rbx, rcx
	cmp	eax, 2048
	je	.L2697
	mov	rax, QWORD PTR 160[rcx]
	mov	edx, 9
	or	r11d, 4
	and	DWORD PTR 48[rax], -16385
	mov	eax, 4
	mov	WORD PTR 108[rcx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	mov	DWORD PTR 36[rcx], r11d
	lea	rax, Player_Rolling[rip]
	mov	WORD PTR 26[rcx], dx
	mov	BYTE PTR 176[rcx], 30
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Rolling
	.p2align 4,,10
	.p2align 3
.L2697:
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	r8d, 62
	and	r11d, -6
	mov	WORD PTR 26[rbx], cx
	mov	ecx, 292
	mov	WORD PTR 108[rbx], r8w
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	je	.L2698
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2698:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.seh_endproc
	.p2align 4
	.globl	Player_802A258
	.def	Player_802A258;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_802A258
Player_802A258:
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	test	al, 2
	jne	.L2700
	test	al, 4
	je	.L2701
	jmp	Player_SpinAttack
	.p2align 4,,10
	.p2align 3
.L2701:
	jmp	Player_TouchGround
	.p2align 4,,10
	.p2align 3
.L2700:
	and	eax, -16777249
	or	eax, 262144
	mov	DWORD PTR 36[rcx], eax
	lea	rax, Player_8026D2C[rip]
	mov	QWORD PTR gPlayer[rip], rax
	jmp	Player_8026D2C
	.seh_endproc
	.p2align 4
	.globl	Player_InitGrindRailEndGround
	.def	Player_InitGrindRailEndGround;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitGrindRailEndGround
Player_InitGrindRailEndGround:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	and	DWORD PTR 36[rbx], -263
	mov	rcx, rbx
	mov	edx, 14
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 9
	mov	eax, 3590
	mov	ecx, 114
	mov	WORD PTR 108[rbx], dx
	mov	rdx, QWORD PTR 160[rbx]
	mov	WORD PTR 26[rbx], ax
	and	DWORD PTR gPlayer[rip+36], -1073741825
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	BYTE PTR 59[rbx], 127
	mov	BYTE PTR 60[rbx], 1
	call	m4aSongNumStop
	lea	rax, Player_Idle[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_Idle
	.seh_endproc
	.p2align 4
	.globl	Player_TryInitSpindash
	.def	Player_TryInitSpindash;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryInitSpindash
Player_TryInitSpindash:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	xor	eax, eax
	cmp	WORD PTR 108[rcx], 2
	mov	rbx, rcx
	je	.L2708
.L2703:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2708:
	movzx	edx, WORD PTR 102[rcx]
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	and	dx, WORD PTR [rcx]
	je	.L2703
	lea	rax, Player_InitSpindash[rip]
	mov	edx, 9
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, 3
	mov	WORD PTR 108[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	and	eax, -35
	or	eax, 1028
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	xor	edx, edx
	mov	ecx, 109
	movabs	rax, 650207196201615360
	mov	WORD PTR 42[rbx], dx
	mov	QWORD PTR 20[rbx], rax
	call	m4aSongNumStart
	call	CreateSpindashDustEffect
	lea	rax, Player_Spindash[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_Spindash
	mov	eax, 1
	jmp	.L2703
	.seh_endproc
	.p2align 4
	.globl	Player_ApplyBoostPhysics
	.def	Player_ApplyBoostPhysics;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_ApplyBoostPhysics
Player_ApplyBoostPhysics:
	.seh_endprologue
	cmp	BYTE PTR 98[rcx], 0
	movzx	edx, WORD PTR 90[rcx]
	jne	.L2711
	mov	eax, DWORD PTR 36[rcx]
	mov	r9d, 1536
	and	eax, 4
	cmp	eax, 1
	sbb	eax, eax
	and	eax, -1536
	add	eax, 3840
.L2710:
	lea	r8, playerBoostPhysicsTable[rip]
	movd	xmm0, eax
	movd	xmm3, r9d
	movsx	r10d, WORD PTR [r8+rdx*4]
	movsx	edx, WORD PTR 2[r8+rdx*4]
	punpckldq	xmm0, xmm3
	movd	xmm1, r10d
	movd	xmm2, edx
	punpckldq	xmm1, xmm2
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 72[rcx], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2711:
	mov	r9d, 3072
	mov	eax, 3840
	jmp	.L2710
	.seh_endproc
	.p2align 4
	.globl	Player_TryAttack
	.def	Player_TryAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_TryAttack
Player_TryAttack:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	xor	eax, eax
	cmp	BYTE PTR [rdx], 5
	je	.L2713
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 33792
	jne	.L2716
	movzx	edx, BYTE PTR 40[rcx]
	add	edx, 64
	test	dl, dl
	jle	.L2713
	movzx	edx, WORD PTR 102[rcx]
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	and	dx, WORD PTR 2[rcx]
	je	.L2713
	lea	rax, Player_InitAttack[rip]
	mov	QWORD PTR gPlayer[rip], rax
	mov	eax, 1
.L2713:
	ret
	.p2align 4,,10
	.p2align 3
.L2716:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_InitIceSlide
	.def	Player_InitIceSlide;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitIceSlide
Player_InitIceSlide:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 62
	mov	ecx, 292
	and	r11d, -6
	mov	WORD PTR 26[rbx], ax
	mov	WORD PTR 108[rbx], dx
	mov	DWORD PTR 36[rbx], r11d
	call	m4aSongNumStart
	lea	rax, Player_8026BCC[rip]
	mov	rcx, rbx
	mov	QWORD PTR gPlayer[rip], rax
	call	Player_TryJump
	test	eax, eax
	je	.L2722
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2722:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_8026BCC.part.0
	.seh_endproc
	.p2align 4
	.globl	Player_InitSpecialStageTransition
	.def	Player_InitSpecialStageTransition;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitSpecialStageTransition
Player_InitSpecialStageTransition:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	xor	r8d, r8d
	mov	BYTE PTR 98[rbx], 0
	mov	WORD PTR 26[rbx], ax
	mov	edx, 9
	and	r11d, -6
	lea	rax, Player_80279F8[rip]
	mov	WORD PTR 108[rbx], dx
	mov	DWORD PTR 36[rbx], r11d
	mov	WORD PTR 122[rbx], r8w
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_80279F8
	.seh_endproc
	.p2align 4
	.globl	Player_InitKilledBoss
	.def	Player_InitKilledBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitKilledBoss
Player_InitKilledBoss:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	r11d, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 9
	mov	WORD PTR 26[rbx], ax
	and	r11d, -6
	lea	rax, Player_8027C5C[rip]
	mov	WORD PTR 108[rbx], dx
	mov	DWORD PTR 36[rbx], r11d
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_8027C5C
	.seh_endproc
	.p2align 4
	.globl	Player_InitReachedGoalMultiplayer
	.def	Player_InitReachedGoalMultiplayer;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitReachedGoalMultiplayer
Player_InitReachedGoalMultiplayer:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	eax, -5
	or	eax, 2097152
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	lea	rax, Player_HandleMultiplayerFinish[rip]
	mov	QWORD PTR gPlayer[rip], rax
	add	rsp, 32
	pop	rbx
	jmp	Player_HandleMultiplayerFinish
	.seh_endproc
	.p2align 4
	.globl	sub_802A500
	.def	sub_802A500;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A500
sub_802A500:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	WORD PTR 22[rcx], 0
	mov	rbx, rcx
	js	.L2727
	call	sub_8022218
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8022284
	.p2align 4,,10
	.p2align 3
.L2727:
	call	sub_8022284
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8022218
	.seh_endproc
	.p2align 4
	.globl	sub_802A52C
	.def	sub_802A52C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A52C
sub_802A52C:
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 10
	cmp	eax, 8
	je	.L2730
	ret
	.p2align 4,,10
	.p2align 3
.L2730:
	lea	rax, Player_TouchGround[rip]
	mov	BYTE PTR 40[rcx], 0
	mov	QWORD PTR gPlayer[rip], rax
	movzx	eax, WORD PTR 20[rcx]
	mov	WORD PTR 24[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802A558
	.def	sub_802A558;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A558
sub_802A558:
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	movzx	edx, WORD PTR 22[rcx]
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	eax, 30
	add	eax, 12
	mov	r8d, eax
	sar	r8w
	test	dx, dx
	cmovs	eax, r8d
	add	edx, eax
	mov	WORD PTR 22[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802A58C
	.def	sub_802A58C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A58C
sub_802A58C:
	.seh_endprologue
	cmp	WORD PTR 108[rcx], 20
	je	.L2735
	movzx	eax, WORD PTR 48[rcx]
	test	ax, ax
	jle	.L2735
	sub	eax, 1
	mov	WORD PTR 48[rcx], ax
.L2735:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802A5AC
	.def	sub_802A5AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A5AC
sub_802A5AC:
	.seh_endprologue
	movzx	eax, BYTE PTR 58[rcx]
	test	al, al
	je	.L2737
	sub	eax, 1
	mov	BYTE PTR 58[rcx], al
.L2737:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802A660
	.def	sub_802A660;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A660
sub_802A660:
	.seh_endprologue
	cmp	WORD PTR 46[rcx], 0
	jne	.L2742
	movzx	eax, WORD PTR 100[rcx]
	and	eax, 48
	cmp	ax, 16
	je	.L2744
	cmp	ax, 32
	je	.L2749
.L2742:
	ret
	.p2align 4,,10
	.p2align 3
.L2744:
	movsx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	test	edx, edx
	js	.L2747
	and	DWORD PTR 36[rcx], -2
	ret
	.p2align 4,,10
	.p2align 3
.L2749:
	movsx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	test	edx, edx
	jle	.L2750
	sub	eax, 24
	cmp	edx, 24
	mov	edx, -96
	cmovl	eax, edx
	mov	WORD PTR 24[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L2747:
	add	eax, 24
	cmp	edx, -24
	mov	edx, 96
	cmovg	eax, edx
	mov	WORD PTR 24[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L2750:
	or	DWORD PTR 36[rcx], 1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802A6C0
	.def	sub_802A6C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802A6C0
sub_802A6C0:
	.seh_endprologue
	and	DWORD PTR gPlayer[rip+36], -1073741825
	mov	rdx, QWORD PTR 160[rcx]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	and	BYTE PTR 59[rcx], 127
	mov	BYTE PTR 60[rcx], 1
	mov	ecx, 114
	jmp	m4aSongNumStop
	.seh_endproc
	.section .rdata,"dr"
disableTrickTimerTable:
	.ascii "\4\3\2\2"
	.align 8
sSpringAccelY:
	.word	1920
	.word	2304
	.word	2688
	.word	3072
	.set	sSpringAccelX,sSpringAccelY
	.align 8
gUnknown_080D69A6:
	.word	32
	.word	49
	.word	2
	.word	24
	.word	321
	.word	3
	.align 16
sTrickMasks:
	.ascii "\1\1\1\3\1"
	.ascii "\0\0\0\0\0"
	.ascii "\10\20\21\4\10"
	.ascii "\0\21\21\4\0"
	.align 8
sTrickDirToCharstate:
	.word	33
	.word	36
	.word	34
	.word	35
	.align 32
sTrickAccel:
	.word	0
	.word	-1536
	.word	0
	.word	-1536
	.word	0
	.word	-1536
	.word	0
	.word	-1536
	.word	0
	.word	-1536
	.word	0
	.word	256
	.word	0
	.word	128
	.word	0
	.word	128
	.word	0
	.word	256
	.word	0
	.word	256
	.word	1536
	.word	0
	.word	1024
	.word	-640
	.word	1024
	.word	-640
	.word	1536
	.word	0
	.word	1536
	.word	0
	.word	-1280
	.word	-896
	.word	-896
	.word	-768
	.word	-896
	.word	-768
	.word	-1280
	.word	0
	.word	-1280
	.word	-896
	.align 16
sSpinDashSpeeds:
	.word	1536
	.word	1632
	.word	1728
	.word	1824
	.word	1920
	.word	2016
	.word	2112
	.word	2208
	.word	2304
	.align 8
playerBoostThresholdTable:
	.word	2048
	.word	2040
	.word	1680
	.word	1440
	.word	1080
	.align 16
playerBoostPhysicsTable:
	.word	8
	.word	64
	.word	12
	.word	64
	.word	14
	.word	64
	.word	16
	.word	64
	.word	18
	.word	64
	.globl	sCharStateAnimInfo
	.align 32
sCharStateAnimInfo:
	.word	0
	.word	0
	.word	1
	.word	0
	.word	2
	.word	0
	.word	3
	.word	0
	.word	4
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	7
	.word	0
	.word	8
	.word	0
	.word	9
	.word	0
	.word	10
	.word	0
	.word	11
	.word	0
	.word	12
	.word	0
	.word	13
	.word	0
	.word	13
	.word	0
	.word	14
	.word	0
	.word	15
	.word	0
	.word	16
	.word	0
	.word	17
	.word	0
	.word	18
	.word	0
	.word	28
	.word	0
	.word	28
	.word	1
	.word	29
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	31
	.word	0
	.word	31
	.word	1
	.word	31
	.word	2
	.word	32
	.word	0
	.word	33
	.word	0
	.word	34
	.word	0
	.word	1
	.word	0
	.word	35
	.word	0
	.word	48
	.word	0
	.word	49
	.word	0
	.word	50
	.word	0
	.word	51
	.word	0
	.word	65
	.word	0
	.word	52
	.word	0
	.word	53
	.word	0
	.word	54
	.word	0
	.word	55
	.word	0
	.word	56
	.word	0
	.word	57
	.word	0
	.word	58
	.word	0
	.word	59
	.word	0
	.word	60
	.word	0
	.word	68
	.word	0
	.word	69
	.word	0
	.word	69
	.word	1
	.word	70
	.word	0
	.word	62
	.word	0
	.word	62
	.word	1
	.word	63
	.word	0
	.word	63
	.word	1
	.word	61
	.word	0
	.word	64
	.word	0
	.word	66
	.word	0
	.word	67
	.word	0
	.word	73
	.word	0
	.word	73
	.word	1
	.word	73
	.word	2
	.word	75
	.word	0
	.word	9
	.word	2
	.word	71
	.word	0
	.word	71
	.word	1
	.word	72
	.word	0
	.word	36
	.word	0
	.word	36
	.word	1
	.word	36
	.word	2
	.word	36
	.word	3
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	19
	.word	0
	.word	37
	.word	0
	.word	37
	.word	1
	.word	110
	.word	0
	.word	110
	.word	1
	.word	112
	.word	0
	.word	111
	.word	0
	.word	113
	.word	0
	.word	202
	.word	0
	.word	203
	.word	0
	.word	204
	.word	0
	.word	201
	.word	0
	.word	292
	.word	0
	.word	295
	.word	0
	.word	295
	.word	1
	.word	294
	.word	0
	.word	293
	.word	0
	.word	293
	.word	1
	.word	293
	.word	2
	.word	293
	.word	3
	.word	296
	.word	0
	.word	297
	.word	2
	.word	297
	.word	0
	.word	297
	.word	1
	.word	297
	.word	3
	.word	297
	.word	4
	.word	324
	.word	0
	.word	324
	.word	1
	.word	324
	.word	2
	.word	416
	.word	0
	.word	1
	.word	0
	.word	378
	.word	0
	.word	383
	.word	0
	.word	1
	.word	0
	.word	382
	.word	0
	.globl	gPlayerCharacterIdleAnims
	.align 8
gPlayerCharacterIdleAnims:
	.word	0
	.word	91
	.word	182
	.word	273
	.word	364
	.globl	gPlayerBodyPSI
	.bss
	.align 16
gPlayerBodyPSI:
	.space 88
	.globl	gPlayerLimbsPSI
	.align 16
gPlayerLimbsPSI:
	.space 88
	.globl	gPlayer
	.align 16
gPlayer:
	.space 208
	.section .rdata,"dr"
	.align 16
.LC3:
	.long	2304
	.long	1536
	.long	8
	.long	64
	.align 8
.LC7:
	.long	-213
	.long	-120
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_SonicAmy_InitSkidAttack;	.scl	2;	.type	32;	.endef
	.def	Player_Amy_InitHammerAttack;	.scl	2;	.type	32;	.endef
	.def	Player_Cream_InitChaoAttack;	.scl	2;	.type	32;	.endef
	.def	Player_Tails_InitTailSwipe;	.scl	2;	.type	32;	.endef
	.def	Player_Knuckles_InitPunch;	.scl	2;	.type	32;	.endef
	.def	Player_Cream_InitStepAttack;	.scl	2;	.type	32;	.endef
	.def	Player_Knuckles_InitSpiralAttack;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_8015750;	.scl	2;	.type	32;	.endef
	.def	sub_801561C;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	CreateBrakingDustEffectRelatedTask;	.scl	2;	.type	32;	.endef
	.def	InitPlayerHitRingsScatter;	.scl	2;	.type	32;	.endef
	.def	InitNewInputCounters;	.scl	2;	.type	32;	.endef
	.def	InputRecorderLoadTape;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	HandleLifeLost;	.scl	2;	.type	32;	.endef
	.def	HandleDeath;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	CreateRunOnWaterEffect;	.scl	2;	.type	32;	.endef
	.def	sub_8039F14;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackResults;	.scl	2;	.type	32;	.endef
	.def	CreateBoostEffectTasks;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Shield_Normal;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Shield_Magnetic;	.scl	2;	.type	32;	.endef
	.def	CreateWaterfallSurfaceHitEffect;	.scl	2;	.type	32;	.endef
	.def	SpawnAirBubbles;	.scl	2;	.type	32;	.endef
	.def	SpawnDrowningCountdownNum;	.scl	2;	.type	32;	.endef
	.def	SpawnBubblesAfterDrowning;	.scl	2;	.type	32;	.endef
	.def	InitScatteringRings;	.scl	2;	.type	32;	.endef
	.def	sub_801E6D4;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	ArcTan2;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.def	Player_Cream_InitMidAirChaoAttack;	.scl	2;	.type	32;	.endef
	.def	CreateSonicAmySkidAttackEffect;	.scl	2;	.type	32;	.endef
	.def	Player_Knuckles_InitDrillClaw;	.scl	2;	.type	32;	.endef
	.def	Player_SonicAmy_InitStopNSlam;	.scl	2;	.type	32;	.endef
	.def	Player_Knuckles_InitGlide;	.scl	2;	.type	32;	.endef
	.def	Player_Tails_InitFlying;	.scl	2;	.type	32;	.endef
	.def	Player_Cream_InitFlying;	.scl	2;	.type	32;	.endef
	.def	CreateAmyAttackHeartEffect;	.scl	2;	.type	32;	.endef
	.def	Player_Cream_InitChaoRollingAttack;	.scl	2;	.type	32;	.endef
	.def	Player_Sonic_InitHomingAttack;	.scl	2;	.type	32;	.endef
	.def	CreateBoostModeParticles;	.scl	2;	.type	32;	.endef
	.def	InputBuffer_HandleFrameInput;	.scl	2;	.type	32;	.endef
	.def	BoostEffect_StorePlayerPos;	.scl	2;	.type	32;	.endef
	.def	BoostEffect_StorePlayerState;	.scl	2;	.type	32;	.endef
	.def	DestroyBrakingDustEffectRelatedTask;	.scl	2;	.type	32;	.endef
	.def	DestroyRingsScatterTask;	.scl	2;	.type	32;	.endef
	.def	CreateGrindEffect2;	.scl	2;	.type	32;	.endef
	.def	Player_Sonic_TryForwardThrust;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayImmInit;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayPitchControl;	.scl	2;	.type	32;	.endef
	.def	CreateSpindashDustEffect;	.scl	2;	.type	32;	.endef
	.def	CreateHeartParticles;	.scl	2;	.type	32;	.endef
	.def	CreateBrakingDustEffect;	.scl	2;	.type	32;	.endef
	.def	CreateStageGoalBonusPointsAnim;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.gHomingTarget, "dr"
	.globl	.refptr.gHomingTarget
	.linkonce	discard
.refptr.gHomingTarget:
	.quad	gHomingTarget
	.section	.rdata$.refptr.Player_Knuckles_InitDrillClaw, "dr"
	.globl	.refptr.Player_Knuckles_InitDrillClaw
	.linkonce	discard
.refptr.Player_Knuckles_InitDrillClaw:
	.quad	Player_Knuckles_InitDrillClaw
	.section	.rdata$.refptr.Player_SonicAmy_InitStopNSlam, "dr"
	.globl	.refptr.Player_SonicAmy_InitStopNSlam
	.linkonce	discard
.refptr.Player_SonicAmy_InitStopNSlam:
	.quad	Player_SonicAmy_InitStopNSlam
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.Task_UpdateMpSpriteTaskSprite, "dr"
	.globl	.refptr.Task_UpdateMpSpriteTaskSprite
	.linkonce	discard
.refptr.Task_UpdateMpSpriteTaskSprite:
	.quad	Task_UpdateMpSpriteTaskSprite
	.section	.rdata$.refptr.TaskDestructor_MultiplayerSpriteTask, "dr"
	.globl	.refptr.TaskDestructor_MultiplayerSpriteTask
	.linkonce	discard
.refptr.TaskDestructor_MultiplayerSpriteTask:
	.quad	TaskDestructor_MultiplayerSpriteTask
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.Player_InitHomingAttackRecoil, "dr"
	.globl	.refptr.Player_InitHomingAttackRecoil
	.linkonce	discard
.refptr.Player_InitHomingAttackRecoil:
	.quad	Player_InitHomingAttackRecoil
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gLevelSongs, "dr"
	.globl	.refptr.gLevelSongs
	.linkonce	discard
.refptr.gLevelSongs:
	.quad	gLevelSongs
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gPrevStageFlags, "dr"
	.globl	.refptr.gPrevStageFlags
	.linkonce	discard
.refptr.gPrevStageFlags:
	.quad	gPrevStageFlags
	.section	.rdata$.refptr.gBossCameraClampYUpper, "dr"
	.globl	.refptr.gBossCameraClampYUpper
	.linkonce	discard
.refptr.gBossCameraClampYUpper:
	.quad	gBossCameraClampYUpper
	.section	.rdata$.refptr.gBossCameraClampYLower, "dr"
	.globl	.refptr.gBossCameraClampYLower
	.linkonce	discard
.refptr.gBossCameraClampYLower:
	.quad	gBossCameraClampYLower
	.section	.rdata$.refptr.gBossRingsShallRespawn, "dr"
	.globl	.refptr.gBossRingsShallRespawn
	.linkonce	discard
.refptr.gBossRingsShallRespawn:
	.quad	gBossRingsShallRespawn
	.section	.rdata$.refptr.gUnknown_080D661C, "dr"
	.globl	.refptr.gUnknown_080D661C
	.linkonce	discard
.refptr.gUnknown_080D661C:
	.quad	gUnknown_080D661C
	.section	.rdata$.refptr.gUnknown_080D650C, "dr"
	.globl	.refptr.gUnknown_080D650C
	.linkonce	discard
.refptr.gUnknown_080D650C:
	.quad	gUnknown_080D650C
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gWater, "dr"
	.globl	.refptr.gWater
	.linkonce	discard
.refptr.gWater:
	.quad	gWater
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.sub_801ED24, "dr"
	.globl	.refptr.sub_801ED24
	.linkonce	discard
.refptr.sub_801ED24:
	.quad	sub_801ED24
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gWorldSpeedY, "dr"
	.globl	.refptr.gWorldSpeedY
	.linkonce	discard
.refptr.gWorldSpeedY:
	.quad	gWorldSpeedY
	.section	.rdata$.refptr.gWorldSpeedX, "dr"
	.globl	.refptr.gWorldSpeedX
	.linkonce	discard
.refptr.gWorldSpeedX:
	.quad	gWorldSpeedX
	.section	.rdata$.refptr.gStageGoalX, "dr"
	.globl	.refptr.gStageGoalX
	.linkonce	discard
.refptr.gStageGoalX:
	.quad	gStageGoalX
	.section	.rdata$.refptr.gInputRecorder, "dr"
	.globl	.refptr.gInputRecorder
	.linkonce	discard
.refptr.gInputRecorder:
	.quad	gInputRecorder
	.section	.rdata$.refptr.gShouldSpawnMPAttack2Effect, "dr"
	.globl	.refptr.gShouldSpawnMPAttack2Effect
	.linkonce	discard
.refptr.gShouldSpawnMPAttack2Effect:
	.quad	gShouldSpawnMPAttack2Effect
	.section	.rdata$.refptr.gMPAttackEffect2Regs, "dr"
	.globl	.refptr.gMPAttackEffect2Regs
	.linkonce	discard
.refptr.gMPAttackEffect2Regs:
	.quad	gMPAttackEffect2Regs
	.section	.rdata$.refptr.gShouldSpawnMPAttackEffect, "dr"
	.globl	.refptr.gShouldSpawnMPAttackEffect
	.linkonce	discard
.refptr.gShouldSpawnMPAttackEffect:
	.quad	gShouldSpawnMPAttackEffect
	.section	.rdata$.refptr.gCheckpointTime, "dr"
	.globl	.refptr.gCheckpointTime
	.linkonce	discard
.refptr.gCheckpointTime:
	.quad	gCheckpointTime
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
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
	.section	.rdata$.refptr.gSpawnPositions, "dr"
	.globl	.refptr.gSpawnPositions
	.linkonce	discard
.refptr.gSpawnPositions:
	.quad	gSpawnPositions
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
