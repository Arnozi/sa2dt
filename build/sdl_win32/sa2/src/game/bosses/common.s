	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	CreateZoneBoss
	.def	CreateZoneBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateZoneBoss
CreateZoneBoss:
	.seh_endprologue
	cmp	cl, 8
	ja	.L1
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	ecx, cl
	and	WORD PTR [rax], -34
	lea	rax, sBossCreationFuncs[rip]
	rex.W jmp	[QWORD PTR [rax+rcx*8]]
	.p2align 4,,10
	.p2align 3
.L1:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8039ED4
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039ED4
sub_8039ED4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 28
	je	.L6
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.Player_TouchGround[rip]
	and	DWORD PTR 36[rax], -136314881
	mov	QWORD PTR [rax], rdx
	mov	BYTE PTR 117[rax], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8039F14
	.def	sub_8039F14;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039F14
sub_8039F14:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L7
	cmp	QWORD PTR gActiveBossTask[rip], 0
	je	.L7
	sar	al, 2
	lea	r8, MoveBossPositionFuncs[rip]
	movsx	rax, al
	rex.W jmp	[QWORD PTR [r8+rax*8]]
	.p2align 4,,10
	.p2align 3
.L7:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8039F50
	.def	sub_8039F50;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039F50
sub_8039F50:
	.seh_endprologue
	cmp	dl, 6
	ja	.L12
	cmp	QWORD PTR gActiveBossTask[rip], 0
	je	.L12
	movzx	edx, dl
	lea	rax, MoveBossPositionFuncs[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	xor	edx, edx
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L12:
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_DestroyBossParts
	.def	Task_DestroyBossParts;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DestroyBossParts
Task_DestroyBossParts:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR 80[rdx]
	sub	BYTE PTR [rdx], 1
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.globl	gTileInfoBossScrews
	.section .rdata,"dr"
	.align 32
gTileInfoBossScrews:
	.long	412
	.long	620
	.long	0
	.long	416
	.long	620
	.long	1
	.long	420
	.long	621
	.long	0
	.long	436
	.long	621
	.long	1
	.long	448
	.long	622
	.long	0
	.long	449
	.long	622
	.long	1
	.globl	MoveBossPositionFuncs
	.align 32
MoveBossPositionFuncs:
	.quad	EggHammerTankIIMove
	.quad	EggBomberTankMove
	.quad	EggTotemMove
	.quad	AeroEggMove
	.quad	EggSaucerMove
	.quad	EggGoRoundMove
	.quad	EggFrogMove
	.quad	TrueArea53BossMove
	.globl	sBossCreationFuncs
	.align 32
sBossCreationFuncs:
	.quad	CreateEggHammerTankII
	.quad	CreateEggBomberTank
	.quad	CreateEggTotem
	.quad	CreateAeroEgg
	.quad	CreateEggSaucer
	.quad	CreateEggGoRound
	.quad	CreateEggFrog
	.quad	CreateSuperEggRoboZ
	.quad	CreateTrueArea53Boss
	.globl	gActiveBossTask
	.bss
	.align 8
gActiveBossTask:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	EggHammerTankIIMove;	.scl	2;	.type	32;	.endef
	.def	EggBomberTankMove;	.scl	2;	.type	32;	.endef
	.def	EggTotemMove;	.scl	2;	.type	32;	.endef
	.def	AeroEggMove;	.scl	2;	.type	32;	.endef
	.def	EggSaucerMove;	.scl	2;	.type	32;	.endef
	.def	EggGoRoundMove;	.scl	2;	.type	32;	.endef
	.def	EggFrogMove;	.scl	2;	.type	32;	.endef
	.def	TrueArea53BossMove;	.scl	2;	.type	32;	.endef
	.def	CreateEggHammerTankII;	.scl	2;	.type	32;	.endef
	.def	CreateEggBomberTank;	.scl	2;	.type	32;	.endef
	.def	CreateEggTotem;	.scl	2;	.type	32;	.endef
	.def	CreateAeroEgg;	.scl	2;	.type	32;	.endef
	.def	CreateEggSaucer;	.scl	2;	.type	32;	.endef
	.def	CreateEggGoRound;	.scl	2;	.type	32;	.endef
	.def	CreateEggFrog;	.scl	2;	.type	32;	.endef
	.def	CreateSuperEggRoboZ;	.scl	2;	.type	32;	.endef
	.def	CreateTrueArea53Boss;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.Player_TouchGround, "dr"
	.globl	.refptr.Player_TouchGround
	.linkonce	discard
.refptr.Player_TouchGround:
	.quad	Player_TouchGround
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
