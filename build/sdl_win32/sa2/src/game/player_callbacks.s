	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Player_80123D0
	.def	Player_80123D0;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_80123D0
Player_80123D0:
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L2
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.Player_TouchGround[rip]
	mov	QWORD PTR [rax], rdx
.L2:
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_StopNSlam_FallAfterCollision
	.def	Player_SonicAmy_StopNSlam_FallAfterCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_StopNSlam_FallAfterCollision
Player_SonicAmy_StopNSlam_FallAfterCollision:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L7
	mov	BYTE PTR 117[rbx], 1
.L7:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Sonic_HomingAttack
	.def	Player_Sonic_HomingAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Sonic_HomingAttack
Player_Sonic_HomingAttack:
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
	jne	.L10
	mov	eax, 14
	and	DWORD PTR 36[rcx], -33554433
	mov	WORD PTR 108[rcx], ax
.L10:
	mov	rcx, rbx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L9
	mov	BYTE PTR 117[rbx], 1
.L9:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_ChaoAttack
	.def	Player_Cream_ChaoAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_ChaoAttack
Player_Cream_ChaoAttack:
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L13
	test	BYTE PTR 36[rcx], 2
	je	.L14
	mov	eax, 9
	mov	BYTE PTR 117[rcx], 5
	mov	WORD PTR 108[rcx], ax
.L13:
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L14:
	mov	BYTE PTR 117[rcx], 1
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_StepAttack
	.def	Player_Cream_StepAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_StepAttack
Player_Cream_StepAttack:
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L19
	test	BYTE PTR 36[rcx], 2
	je	.L20
	mov	eax, 50
	mov	BYTE PTR 117[rcx], 5
	mov	WORD PTR 108[rcx], ax
.L19:
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L20:
	mov	BYTE PTR 117[rcx], 1
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_ChaoRollingAttack
	.def	Player_Cream_ChaoRollingAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_ChaoRollingAttack
Player_Cream_ChaoRollingAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	mov	rbx, rcx
	test	BYTE PTR 49[rax], 64
	je	.L25
	cmp	DWORD PTR 112[rcx], 108
	je	.L30
.L25:
	mov	rcx, rbx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L24
	mov	BYTE PTR 117[rbx], 1
.L24:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	add	WORD PTR 114[rcx], 1
	jmp	.L25
	.seh_endproc
	.p2align 4
	.globl	Player_Tails_TailSwipe
	.def	Player_Tails_TailSwipe;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Tails_TailSwipe
Player_Tails_TailSwipe:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, DWORD PTR 84[rcx]
	movsx	eax, WORD PTR 24[rcx]
	sar	edx
	mov	rbx, rcx
	test	eax, eax
	jle	.L32
	sub	eax, edx
	mov	edx, 0
	cmovs	eax, edx
.L33:
	mov	WORD PTR 24[rbx], ax
	mov	rcx, rbx
	call	sub_8029C84
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L34
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.Player_TouchGround[rip]
	mov	QWORD PTR [rax], rdx
.L34:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L32:
	add	edx, eax
	xor	eax, eax
	test	edx, edx
	cmovle	eax, edx
	jmp	.L33
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_PunchLeft
	.def	Player_Knuckles_PunchLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_PunchLeft
Player_Knuckles_PunchLeft:
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	test	eax, eax
	jle	.L39
	sub	eax, 96
	mov	edx, 0
	cmovs	eax, edx
	mov	WORD PTR 24[rcx], ax
.L40:
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L41
	mov	eax, DWORD PTR 36[rcx]
	test	al, 2
	je	.L42
	mov	eax, 50
	mov	BYTE PTR 117[rcx], 5
	mov	WORD PTR 108[rcx], ax
.L41:
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L42:
	movzx	r8d, WORD PTR 24[rcx]
	add	WORD PTR 114[rcx], 1
	mov	BYTE PTR 116[rcx], 1
	mov	edx, r8d
	neg	dx
	cmovs	edx, r8d
	cmp	dx, 767
	ja	.L43
	and	eax, 1
	cmp	eax, 1
	sbb	eax, eax
	and	ax, 1536
	sub	ax, 768
	mov	WORD PTR 24[rcx], ax
.L43:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_PunchRight[rip]
	mov	QWORD PTR [rax], rdx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L39:
	je	.L40
	add	eax, 96
	xor	edx, edx
	test	eax, eax
	cmovg	eax, edx
	mov	WORD PTR 24[rcx], ax
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_PunchRight
	.def	Player_Knuckles_PunchRight;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_PunchRight
Player_Knuckles_PunchRight:
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	test	eax, eax
	jle	.L52
	sub	eax, 96
	mov	edx, 0
	cmovs	eax, edx
	mov	WORD PTR 24[rcx], ax
.L53:
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L54
	test	BYTE PTR 36[rcx], 2
	je	.L55
	mov	eax, 50
	mov	BYTE PTR 117[rcx], 5
	mov	WORD PTR 108[rcx], ax
.L54:
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L55:
	mov	BYTE PTR 117[rcx], 1
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L52:
	je	.L53
	add	eax, 96
	xor	edx, edx
	test	eax, eax
	cmovg	eax, edx
	mov	WORD PTR 24[rcx], ax
	jmp	.L53
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_SpiralAttack
	.def	Player_Knuckles_SpiralAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_SpiralAttack
Player_Knuckles_SpiralAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, DWORD PTR 84[rcx]
	movsx	eax, WORD PTR 24[rcx]
	sar	edx
	mov	rbx, rcx
	test	eax, eax
	jle	.L63
	sub	eax, edx
	mov	edx, 0
	cmovs	eax, edx
	mov	WORD PTR 24[rcx], ax
.L64:
	mov	rcx, rbx
	call	sub_8029C84
	movzx	eax, WORD PTR 122[rbx]
	sub	eax, 1
	mov	WORD PTR 122[rbx], ax
	cmp	ax, -1
	jne	.L65
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rcx, Player_8013B6C[rip]
	add	WORD PTR 114[rbx], 1
	mov	BYTE PTR 116[rbx], 1
	mov	QWORD PTR [rax], rcx
.L65:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L63:
	je	.L64
	add	eax, edx
	xor	edx, edx
	test	eax, eax
	cmovg	eax, edx
	mov	WORD PTR 24[rcx], ax
	jmp	.L64
	.seh_endproc
	.p2align 4
	.globl	Player_8013B6C
	.def	Player_8013B6C;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8013B6C
Player_8013B6C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8029C84
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L70
	test	BYTE PTR 36[rbx], 2
	je	.L71
	mov	eax, 50
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
.L70:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L71:
	mov	rcx, rbx
	mov	BYTE PTR 117[rbx], 1
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_GlideSoftLanding
	.def	Player_Knuckles_GlideSoftLanding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_GlideSoftLanding
Player_Knuckles_GlideSoftLanding:
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L76
	mov	BYTE PTR 117[rcx], 1
.L76:
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_DrillClawLanding
	.def	Player_Knuckles_DrillClawLanding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_DrillClawLanding
Player_Knuckles_DrillClawLanding:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_HandlePhysicsWithAirInput
	xor	eax, eax
	mov	DWORD PTR 20[rbx], 0
	mov	WORD PTR 24[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L80
	mov	BYTE PTR 117[rbx], 1
.L80:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Amy_HammerAttack
	.def	Player_Amy_HammerAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Amy_HammerAttack
Player_Amy_HammerAttack:
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	test	eax, eax
	jle	.L86
	sub	eax, 96
	mov	edx, 0
	cmovs	eax, edx
	mov	WORD PTR 24[rcx], ax
.L87:
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L88
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.Player_TouchGround[rip]
	mov	QWORD PTR [rax], rdx
.L88:
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L86:
	je	.L87
	add	eax, 96
	xor	edx, edx
	test	eax, eax
	cmovg	eax, edx
	mov	WORD PTR 24[rcx], ax
	jmp	.L87
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_SkidAttack
	.def	Player_SonicAmy_SkidAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_SkidAttack
Player_SonicAmy_SkidAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	mov	edx, eax
	mov	rbx, rcx
	test	eax, eax
	jle	.L96
	mov	edx, 32
	cmp	eax, edx
	cmovl	eax, edx
	sub	eax, 32
	mov	WORD PTR 24[rcx], ax
.L97:
	mov	rcx, rbx
	call	sub_8029C84
	movzx	eax, WORD PTR 122[rbx]
	sub	eax, 1
	mov	WORD PTR 122[rbx], ax
	cmp	ax, -1
	je	.L105
.L99:
	mov	rcx, rbx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	je	.L106
.L95:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	je	.L97
	add	edx, 32
	cmp	eax, -31
	mov	eax, 0
	cmovge	edx, eax
	mov	WORD PTR 24[rcx], dx
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L105:
	test	BYTE PTR 36[rbx], 2
	je	.L100
	mov	edx, 50
	mov	BYTE PTR 117[rbx], 5
	mov	rcx, rbx
	mov	WORD PTR 108[rbx], dx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L95
.L106:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8029FA4
	.p2align 4,,10
	.p2align 3
.L100:
	mov	eax, 2
	lea	rdx, Player_80123D0[rip]
	mov	BYTE PTR 116[rbx], 1
	mov	WORD PTR 114[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rax], rdx
	jmp	.L99
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_StopNSlam
	.def	Player_SonicAmy_StopNSlam;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_StopNSlam
Player_SonicAmy_StopNSlam:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	add	WORD PTR 22[rcx], 56
	mov	rbx, rcx
	call	sub_80283C4
	mov	edx, DWORD PTR 36[rbx]
	mov	eax, edx
	and	eax, 16386
	cmp	eax, 2
	je	.L107
	movzx	eax, BYTE PTR 40[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	movsx	r8, eax
	add	eax, 256
	cdqe
	movzx	r8d, WORD PTR [rcx+r8*2]
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	r8w, 6
	sar	ax, 6
	lea	r9d, 0[0+r8*4]
	cwde
	lea	ecx, 0[0+rax*4]
	sub	eax, ecx
	add	eax, eax
	mov	ecx, eax
	neg	ecx
	cmovns	eax, ecx
	or	edx, 2
	lea	rcx, Player_SonicAmy_StopNSlam_AfterGroundCollision[rip]
	mov	DWORD PTR 36[rbx], edx
	neg	eax
	mov	WORD PTR 22[rbx], ax
	mov	eax, r9d
	sub	eax, r8d
	cmp	BYTE PTR 141[rbx], 0
	mov	WORD PTR 20[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rax], rcx
	je	.L113
.L109:
	mov	eax, -1
	mov	WORD PTR 108[rbx], ax
.L107:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	mov	ecx, 223
	call	m4aSongNumStart
	jmp	.L109
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_StopNSlam_AfterGroundCollision
	.def	Player_SonicAmy_StopNSlam_AfterGroundCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_StopNSlam_AfterGroundCollision
Player_SonicAmy_StopNSlam_AfterGroundCollision:
	.seh_endprologue
	add	WORD PTR 22[rcx], 56
	js	.L115
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_SonicAmy_StopNSlam_FallAfterCollision[rip]
	add	WORD PTR 114[rcx], 1
	mov	BYTE PTR 116[rcx], 1
	mov	QWORD PTR [rax], rdx
.L115:
	jmp	sub_80283C4
	.seh_endproc
	.p2align 4
	.globl	Task_SonicBoundMotionFrames
	.def	Task_SonicBoundMotionFrames;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SonicBoundMotionFrames
Task_SonicBoundMotionFrames:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR 24[rcx]
	test	BYTE PTR 36[rax], -128
	jne	.L117
	cmp	WORD PTR 22[rax], 511
	jg	.L119
.L117:
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L119:
	cmp	WORD PTR 108[rax], 36
	jne	.L117
	lea	rsi, 48[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 40[rbx]
	lea	rcx, 40[rsp]
	lea	edx, -1[rax]
	and	edx, 6
	mov	WORD PTR 40[rbx], dx
	movzx	edx, dx
	call	GetPreviousPlayerPos
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 41[rsp]
	mov	rcx, rsi
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 86[rbx], ax
	movzx	eax, WORD PTR 45[rsp]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 88[rbx], ax
	call	DisplaySprite
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_SonicBoundMotionFrames
	.def	TaskDestructor_SonicBoundMotionFrames;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_SonicBoundMotionFrames
TaskDestructor_SonicBoundMotionFrames:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 56[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	Player_8012D1C
	.def	Player_8012D1C;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_8012D1C
Player_8012D1C:
	.seh_endprologue
	test	BYTE PTR 36[rcx], 2
	jne	.L122
	mov	BYTE PTR 117[rcx], 1
.L122:
	jmp	sub_8028204
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_DrillClaw
	.def	Player_Knuckles_DrillClaw;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_DrillClaw
Player_Knuckles_DrillClaw:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	add	WORD PTR 22[rcx], 42
	mov	rbx, rcx
	call	sub_80283C4
	test	BYTE PTR 36[rbx], 2
	jne	.L123
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_DrillClawLanding[rip]
	mov	QWORD PTR [rax], rdx
	mov	eax, 108
	xor	edx, edx
	mov	WORD PTR 108[rbx], ax
	mov	WORD PTR 22[rbx], dx
.L123:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_ClimbPullUpEdge
	.def	Player_Knuckles_ClimbPullUpEdge;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_ClimbPullUpEdge
Player_Knuckles_ClimbPullUpEdge:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR 160[rcx]
	mov	rbx, rcx
	test	BYTE PTR 49[rax], 64
	je	.L126
	movsx	edx, BYTE PTR 27[rcx]
	mov	eax, DWORD PTR 16[rcx]
	mov	BYTE PTR 40[rcx], 0
	sal	edx, 8
	lea	ecx, [rax+rdx]
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	cmovne	eax, ecx
	mov	rcx, rbx
	mov	DWORD PTR 16[rbx], eax
	mov	eax, DWORD PTR 12[rbx]
	lea	edx, -4096[rax]
	add	eax, 4096
	test	BYTE PTR 36[rbx], 1
	cmovne	eax, edx
	mov	DWORD PTR 12[rbx], eax
	add	rsp, 32
	pop	rbx
	jmp	Player_TouchGround
	.p2align 4,,10
	.p2align 3
.L126:
	call	sub_80232D0
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_UpdatePosition
	.seh_endproc
	.p2align 4
	.def	CreateKnucklesFireEffect.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateKnucklesFireEffect.part.0
CreateKnucklesFireEffect.part.0:
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
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	movsx	r9d, BYTE PTR 104[rbp]
	mov	QWORD PTR 40[rsp], rax
	movsx	edx, dx
	movsx	ecx, cx
	mov	edi, r8d
	mov	rax, QWORD PTR .refptr.Task_UpdateMpSpriteTaskSprite[rip]
	mov	r8d, 232
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	movsx	rcx, WORD PTR 108[rbp]
	mov	rdx, QWORD PTR .refptr.sCharStateAnimInfo[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	movd	xmm0, DWORD PTR [rdx+rcx*4]
	movd	DWORD PTR 22[rbx], xmm0
	cmp	cx, 79
	jg	.L132
	movsx	rcx, BYTE PTR 141[rbp]
	mov	rdx, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	pextrw	eax, xmm0, 0
	add	ax, WORD PTR [rdx+rcx*2]
	mov	WORD PTR 22[rbx], ax
.L132:
	movzx	r8d, di
	lea	rax, sKnucklesAnimData_FX[rip]
	lea	rdx, [r8+r8*2]
	lea	rdi, [rax+rdx*2]
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	mov	DWORD PTR 64[rbx], 8192
	mov	QWORD PTR 40[rbx], rax
	movzx	eax, WORD PTR 2[rdi]
	mov	WORD PTR 50[rbx], ax
	movzx	eax, WORD PTR 4[rdi]
	mov	BYTE PTR 80[rbx], al
	mov	eax, 512
	mov	WORD PTR 74[rbx], ax
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_WindupMidAirChaoAttack
	.def	Player_Cream_WindupMidAirChaoAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_WindupMidAirChaoAttack
Player_Cream_WindupMidAirChaoAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L133
	mov	BYTE PTR 117[rbx], 1
.L133:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_WindupDrillClaw
	.def	Player_Knuckles_WindupDrillClaw;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_WindupDrillClaw
Player_Knuckles_WindupDrillClaw:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80283C4
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	jne	.L141
.L135:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	ecx, 107
	mov	eax, 298
	mov	DWORD PTR 20[rbx], 16777216
	mov	WORD PTR 108[rbx], cx
	cmp	BYTE PTR [rdx], 2
	ja	.L138
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	mov	r8d, 1
	sar	edx, 8
	sar	ecx, 8
	call	CreateKnucklesFireEffect.part.0
	movzx	eax, WORD PTR 22[rbx]
	add	eax, 42
.L138:
	mov	WORD PTR 22[rbx], ax
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_DrillClaw[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rsi], rdx
	call	sub_80283C4
	test	BYTE PTR 36[rbx], 2
	jne	.L135
	lea	rax, Player_Knuckles_DrillClawLanding[rip]
	xor	edx, edx
	mov	QWORD PTR [rsi], rax
	mov	eax, 108
	mov	WORD PTR 108[rbx], ax
	mov	WORD PTR 22[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSonicAmySkidAttackEffect
	.def	CreateSonicAmySkidAttackEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSonicAmySkidAttackEffect
CreateSonicAmySkidAttackEffect:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	xor	edi, edi
	cmp	BYTE PTR [rax], 2
	mov	ebx, r8d
	ja	.L142
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	movsx	edx, dx
	movsx	ecx, cx
	mov	r8d, 232
	movsx	r9d, BYTE PTR 104[rbp]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR .refptr.Task_UpdateMpSpriteTaskSprite[rip]
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	mov	rsi, QWORD PTR 24[rax]
	mov	rdi, rax
	test	bx, bx
	je	.L144
	lea	eax, -1[rbx]
	cmp	ax, 1
	ja	.L145
	movsx	rcx, WORD PTR 108[rbp]
	mov	rdx, QWORD PTR .refptr.sCharStateAnimInfo[rip]
	movd	xmm0, DWORD PTR [rdx+rcx*4]
	movd	DWORD PTR 22[rsi], xmm0
	cmp	cx, 79
	jg	.L145
	movsx	rcx, BYTE PTR 141[rbp]
	mov	rdx, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	pextrw	eax, xmm0, 0
	add	ax, WORD PTR [rdx+rcx*2]
	mov	WORD PTR 22[rsi], ax
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L144:
	mov	eax, DWORD PTR 112[rbp]
	mov	DWORD PTR 22[rsi], eax
.L145:
	movzx	ebx, bx
	lea	rax, gUnknown_080D5518[rip]
	lea	rdx, [rbx+rbx*2]
	lea	rbx, [rax+rdx*2]
	movzx	ecx, WORD PTR [rbx]
	call	VramMalloc
	mov	DWORD PTR 64[rsi], 8192
	mov	QWORD PTR 40[rsi], rax
	movzx	eax, WORD PTR 2[rbx]
	mov	WORD PTR 50[rsi], ax
	movzx	eax, WORD PTR 4[rbx]
	mov	BYTE PTR 80[rsi], al
	mov	eax, 512
	mov	WORD PTR 74[rsi], ax
.L142:
	mov	rax, rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_WindupSkidAttack
	.def	Player_SonicAmy_WindupSkidAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_WindupSkidAttack
Player_SonicAmy_WindupSkidAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	mov	edx, eax
	mov	rbx, rcx
	test	eax, eax
	jle	.L150
	mov	edx, 8
	cmp	eax, edx
	cmovl	eax, edx
	sub	eax, 8
	mov	WORD PTR 24[rcx], ax
.L151:
	mov	rcx, rbx
	call	sub_8029C84
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L153
	mov	eax, DWORD PTR 36[rbx]
	test	al, 2
	je	.L154
	mov	ecx, 50
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
.L153:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L154:
	mov	edx, 1
	lea	rcx, Player_SonicAmy_SkidAttack[rip]
	cmp	BYTE PTR 98[rbx], 0
	mov	BYTE PTR 116[rbx], 1
	mov	WORD PTR 114[rbx], dx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rdx], rcx
	jne	.L155
	and	eax, 1
	cmp	eax, 1
	sbb	eax, eax
	and	ax, 2048
	sub	ax, 1024
	mov	WORD PTR 24[rbx], ax
.L157:
	mov	eax, 32
	mov	ecx, 111
	mov	WORD PTR 122[rbx], ax
	call	m4aSongNumStart
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L150:
	je	.L151
	add	edx, 8
	cmp	eax, -7
	mov	eax, 0
	cmovge	edx, eax
	mov	WORD PTR 24[rcx], dx
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L155:
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	xor	r8d, r8d
	sar	edx, 8
	sar	ecx, 8
	call	CreateSonicAmySkidAttackEffect
	jmp	.L157
	.seh_endproc
	.p2align 4
	.globl	CreateSonicBoundEffect
	.def	CreateSonicBoundEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSonicBoundEffect
CreateSonicBoundEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	movups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	xor	esi, esi
	cmp	BYTE PTR [rax], 2
	movd	xmm7, ecx
	movd	xmm6, edx
	ja	.L164
	lea	rax, TaskDestructor_SonicBoundMotionFrames[rip]
	mov	edx, 112
	xor	r9d, r9d
	mov	r8d, 16385
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_SonicBoundMotionFrames[rip]
	call	TaskCreate
	pshufd	xmm0, xmm7, 0
	punpckldq	xmm7, xmm6
	mov	ecx, 16
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	xor	eax, eax
	movups	XMMWORD PTR [rbx], xmm0
	movdqu	xmm0, xmm6
	punpckldq	xmm0, xmm6
	mov	WORD PTR 40[rbx], ax
	pshufd	xmm6, xmm6, 0xe0
	punpcklqdq	xmm7, xmm0
	movq	QWORD PTR 32[rbx], xmm6
	movups	XMMWORD PTR 16[rbx], xmm7
	call	VramMalloc
	mov	edx, -253
	mov	DWORD PTR 64[rbx], 3342336
	mov	QWORD PTR 56[rbx], rax
	mov	WORD PTR 96[rbx], dx
	mov	DWORD PTR 90[rbx], 1088
	mov	BYTE PTR 98[rbx], 16
	mov	BYTE PTR 101[rbx], 0
	mov	DWORD PTR 80[rbx], 8192
.L164:
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	mov	rax, rsi
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_WindupStopNSlam
	.def	Player_SonicAmy_WindupStopNSlam;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_WindupStopNSlam
Player_SonicAmy_WindupStopNSlam:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80283C4
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L167
	mov	eax, 512
	lea	rdx, Player_SonicAmy_StopNSlam[rip]
	add	WORD PTR 114[rbx], 1
	mov	WORD PTR 22[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rax], rdx
	movzx	eax, BYTE PTR 141[rbx]
	test	al, al
	je	.L172
	cmp	al, 4
	je	.L173
.L167:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L172:
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	sar	edx, 8
	sar	ecx, 8
	add	rsp, 32
	pop	rbx
	jmp	CreateSonicBoundEffect
	.p2align 4,,10
	.p2align 3
.L173:
	mov	ecx, 3
	add	rsp, 32
	pop	rbx
	jmp	CreateAmyAttackHeartEffect
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_InitSkidAttack
	.def	Player_SonicAmy_InitSkidAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_InitSkidAttack
Player_SonicAmy_InitSkidAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 9
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 2310
	mov	WORD PTR 26[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, eax
	or	edx, 536870912
	cmp	BYTE PTR 98[rbx], 0
	mov	DWORD PTR 36[rbx], edx
	mov	edx, 17
	jne	.L175
	and	eax, 1
	mov	edx, 15
	cmp	eax, 1
	sbb	eax, eax
	and	ax, 1536
	sub	ax, 768
	mov	WORD PTR 24[rbx], ax
.L175:
	mov	WORD PTR 108[rbx], dx
	mov	ecx, 121
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rcx, Player_SonicAmy_WindupSkidAttack[rip]
	mov	QWORD PTR [rax], rcx
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_SonicAmy_WindupSkidAttack
	.seh_endproc
	.p2align 4
	.globl	Player_SonicAmy_InitStopNSlam
	.def	Player_SonicAmy_InitStopNSlam;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicAmy_InitStopNSlam
Player_SonicAmy_InitStopNSlam:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 2310
	mov	edx, 36
	or	DWORD PTR 36[rbx], 536870912
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	and	DWORD PTR 48[rax], -16385
	cmp	BYTE PTR 141[rbx], 4
	mov	BYTE PTR 98[rbx], 0
	mov	WORD PTR 108[rbx], dx
	je	.L181
.L180:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_SonicAmy_WindupStopNSlam[rip]
	mov	rcx, rbx
	mov	DWORD PTR 20[rbx], 0
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_SonicAmy_WindupStopNSlam
	.p2align 4,,10
	.p2align 3
.L181:
	mov	ecx, 131
	call	m4aSongNumStart
	jmp	.L180
	.seh_endproc
	.p2align 4
	.globl	Player_SonicForwardThrust
	.def	Player_SonicForwardThrust;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_SonicForwardThrust
Player_SonicForwardThrust:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 36[rcx]
	mov	rbx, rcx
	test	al, 16
	je	.L184
	movzx	edx, WORD PTR 100[rcx]
	test	dl, 32
	je	.L185
	or	eax, 1
	mov	DWORD PTR 36[rcx], eax
.L185:
	and	edx, 16
	jne	.L195
.L184:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	rcx, rbx
	mov	edx, 14
	and	eax, -16777253
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	r8d, 80
	test	BYTE PTR 36[rbx], 1
	mov	WORD PTR 26[rbx], cx
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 108[rbx], r8w
	je	.L187
	sub	ax, 576
.L188:
	xor	edx, edx
	mov	WORD PTR 20[rbx], ax
	xor	eax, eax
	mov	ecx, 112
	mov	WORD PTR 22[rbx], ax
	mov	WORD PTR 120[rbx], dx
	mov	BYTE PTR 40[rbx], 0
	call	m4aSongNumStart
	mov	rax, QWORD PTR 160[rbx]
	mov	BYTE PTR 118[rbx], 0
	mov	rcx, rbx
	mov	rdx, QWORD PTR .refptr.Player_Uncurl[rip]
	and	DWORD PTR 48[rax], -16385
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Uncurl
	.p2align 4,,10
	.p2align 3
.L187:
	add	ax, 576
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L195:
	and	DWORD PTR 36[rbx], -2
	jmp	.L184
	.seh_endproc
	.p2align 4
	.globl	Player_Sonic_InitHomingAttack
	.def	Player_Sonic_InitHomingAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Sonic_InitHomingAttack
Player_Sonic_InitHomingAttack:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gHomingTarget[rip]
	movsx	rsi, WORD PTR 4[rax]
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 9
	mov	rcx, rbx
	and	eax, -16777249
	or	eax, 570425346
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 2310
	xor	r8d, r8d
	mov	BYTE PTR 118[rbx], 0
	mov	ecx, 19
	mov	WORD PTR 26[rbx], dx
	movsx	edx, si
	mov	r9d, 60
	mov	WORD PTR 108[rbx], cx
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	add	edx, 256
	movsx	rdx, edx
	mov	WORD PTR 120[rbx], r8w
	movzx	eax, WORD PTR [rcx+rsi*2]
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	ecx, 112
	lea	rsi, Player_Sonic_HomingAttack[rip]
	sar	ax, 6
	sar	dx, 6
	lea	eax, [rax+rax*2]
	movsx	edx, dx
	lea	eax, -128[rax+rax]
	lea	edx, [rdx+rdx*2]
	mov	WORD PTR 22[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	add	edx, edx
	mov	WORD PTR 20[rbx], dx
	and	DWORD PTR 48[rax], -16385
	mov	BYTE PTR 40[rbx], 0
	mov	WORD PTR 122[rbx], r9w
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rax], rsi
	movzx	eax, WORD PTR 122[rbx]
	sub	eax, 1
	mov	WORD PTR 122[rbx], ax
	cmp	ax, -1
	jne	.L197
	mov	eax, 14
	and	DWORD PTR 36[rbx], -33554433
	mov	WORD PTR 108[rbx], ax
.L197:
	mov	rcx, rbx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L196
	mov	BYTE PTR 117[rbx], 1
.L196:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_InitHomingAttackRecoil
	.def	Player_InitHomingAttackRecoil;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_InitHomingAttackRecoil
Player_InitHomingAttackRecoil:
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
	and	eax, -553648161
	or	eax, 258
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	BYTE PTR 118[rbx], 0
	mov	edx, 14
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	mov	ecx, 1
	mov	WORD PTR 108[rbx], dx
	mov	rdx, QWORD PTR .refptr.Player_Uncurl[rip]
	mov	WORD PTR 120[rbx], cx
	mov	rcx, rbx
	mov	DWORD PTR 20[rbx], -67108864
	and	DWORD PTR 48[rax], -16385
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Uncurl
	.seh_endproc
	.p2align 4
	.globl	Player_UpdateHomingPosition
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_UpdateHomingPosition
Player_UpdateHomingPosition:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 12[r8]
	mov	r9d, ecx
	sub	eax, ecx
	mov	ecx, DWORD PTR 16[r8]
	sar	eax, 8
	sub	ecx, edx
	mov	esi, eax
	sar	ecx, 8
	imul	esi, eax
	mov	r10d, ecx
	imul	r10d, ecx
	add	esi, r10d
	movzx	r10d, BYTE PTR 141[r8]
	test	r10b, r10b
	jne	.L201
	mov	rbx, QWORD PTR .refptr.gHomingTarget[rip]
	cmp	DWORD PTR [rbx], esi
	jle	.L200
	test	BYTE PTR 36[r8], 1
	je	.L204
	movsx	edx, cx
	movsx	ecx, ax
	call	sub_8004418
	sub	ax, 256
	and	ax, 1023
	cmp	ax, 312
	ja	.L200
	mov	edx, 512
	mov	DWORD PTR [rbx], esi
	sub	edx, eax
	mov	WORD PTR 4[rbx], dx
.L200:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L201:
	cmp	r10b, 1
	jne	.L200
	mov	rcx, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gCheeseTarget[rip]
	cmp	DWORD PTR [rcx], esi
	jle	.L200
	test	BYTE PTR 36[r8], 1
	je	.L206
	test	eax, eax
	js	.L208
.L207:
	mov	DWORD PTR [rcx], esi
	mov	QWORD PTR 8[rcx], r10
.L208:
	cmp	BYTE PTR 61[r10], 0
	je	.L200
	sar	r9d, 8
	sar	edx, 8
	mov	WORD PTR 62[r10], r9w
	mov	WORD PTR 64[r10], dx
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L204:
	neg	eax
	neg	ecx
	movsx	edx, ax
	movsx	ecx, cx
	call	sub_8004418
	cmp	ax, 312
	ja	.L200
	mov	DWORD PTR [rbx], esi
	mov	WORD PTR 4[rbx], ax
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L206:
	test	eax, eax
	jg	.L208
	jmp	.L207
	.seh_endproc
	.p2align 4
	.globl	Player_Sonic_TryForwardThrust
	.def	Player_Sonic_TryForwardThrust;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Sonic_TryForwardThrust
Player_Sonic_TryForwardThrust:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	eax, eax
	cmp	BYTE PTR 141[rcx], 0
	jne	.L209
	cmp	BYTE PTR 121[rcx], 1
	je	.L213
.L209:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L213:
	call	Player_SonicForwardThrust
	mov	eax, 1
	jmp	.L209
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_InitChaoAttack
	.def	Player_Cream_InitChaoAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_InitChaoAttack
Player_Cream_InitChaoAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	movzx	edx, WORD PTR 24[rbx]
	mov	WORD PTR 26[rbx], cx
	mov	ecx, DWORD PTR 36[rbx]
	mov	eax, ecx
	or	eax, 536870912
	mov	DWORD PTR 36[rbx], eax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, 87
	cmp	ax, 63
	ja	.L215
	xor	edx, edx
	mov	WORD PTR 24[rbx], dx
	mov	edx, 15
.L215:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 108[rbx], dx
	lea	rdx, Player_Cream_ChaoAttack[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L216
	and	ecx, 2
	je	.L217
	mov	eax, 9
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
.L216:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L217:
	mov	rcx, rbx
	mov	BYTE PTR 117[rbx], 1
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	UpdateCreamFlying
	.def	UpdateCreamFlying;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateCreamFlying
UpdateCreamFlying:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	WORD PTR 196[rcx], 0
	mov	rbx, rcx
	jne	.L223
	cmp	WORD PTR 108[rcx], 85
	je	.L246
	mov	ecx, 85
	mov	WORD PTR 108[rbx], cx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	movzx	eax, WORD PTR 100[rcx]
	test	al, 32
	je	.L226
	test	BYTE PTR 36[rcx], 1
	jne	.L247
.L227:
	mov	edx, 84
	mov	ecx, 227
	mov	WORD PTR 108[rbx], dx
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStartOrChange
	.p2align 4,,10
	.p2align 3
.L226:
	test	al, 16
	je	.L229
	test	BYTE PTR 36[rcx], 1
	jne	.L227
.L229:
	cmp	WORD PTR 108[rbx], 84
	je	.L248
.L231:
	mov	eax, 83
	mov	WORD PTR 108[rbx], ax
.L230:
	mov	ecx, 227
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStartOrChange
	.p2align 4,,10
	.p2align 3
.L247:
	test	al, 16
	jne	.L227
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L246:
	mov	ecx, 227
	call	m4aSongNumStop
	mov	ecx, 85
	mov	WORD PTR 108[rbx], cx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L230
	jmp	.L231
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_Flying
	.def	Player_Cream_Flying;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_Flying
Player_Cream_Flying:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, WORD PTR 196[rcx]
	mov	rbx, rcx
	test	ax, ax
	je	.L250
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	sub	eax, 1
	mov	WORD PTR 196[rcx], ax
	movzx	eax, WORD PTR 100[rcx]
	and	ax, WORD PTR 2[rdx]
	jne	.L274
.L250:
	movzx	edx, BYTE PTR 105[rbx]
	movzx	eax, WORD PTR 22[rbx]
	cmp	dl, 1
	je	.L251
	cmp	ax, -192
	jge	.L275
.L252:
	mov	BYTE PTR 105[rbx], 1
.L253:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 40[rax]
	sal	eax, 8
	cmp	DWORD PTR 16[rbx], eax
	jge	.L256
	cmp	WORD PTR 22[rbx], 0
	mov	DWORD PTR 16[rbx], eax
	jns	.L256
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
.L256:
	mov	rcx, rbx
	call	UpdateCreamFlying
	movzx	edx, WORD PTR 20[rbx]
	movzx	r8d, WORD PTR 90[rbx]
	lea	rcx, creamBoostMinFlySpeedTable[rip]
	mov	eax, edx
	movsx	ecx, WORD PTR [rcx+r8*2]
	neg	ax
	cmovs	eax, edx
	movzx	eax, ax
	cmp	eax, ecx
	jle	.L258
	movzx	eax, WORD PTR 80[rbx]
	mov	ecx, edx
	add	eax, eax
	lea	r8d, [rdx+rax]
	sub	ecx, eax
	test	dx, dx
	mov	eax, r8d
	cmovg	eax, ecx
	mov	WORD PTR 20[rbx], ax
.L258:
	mov	rcx, rbx
	call	sub_80282EC
	mov	eax, DWORD PTR 36[rbx]
	test	al, 2
	jne	.L260
	mov	BYTE PTR 117[rbx], 1
.L249:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	sub	eax, 24
	add	edx, 1
	mov	WORD PTR 22[rbx], ax
	mov	BYTE PTR 105[rbx], dl
	cmp	dl, 32
	jne	.L253
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L260:
	test	al, 64
	je	.L249
	mov	eax, 14
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	and	dx, WORD PTR [rcx]
	je	.L254
	cmp	ax, -192
	jl	.L254
	cmp	WORD PTR 196[rbx], 0
	je	.L254
	mov	BYTE PTR 105[rbx], 2
	.p2align 4,,10
	.p2align 3
.L254:
	add	eax, 8
	mov	WORD PTR 22[rbx], ax
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L274:
	mov	ecx, 86
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	ecx, 227
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStop
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_InitFlying
	.def	Player_Cream_InitFlying;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_InitFlying
Player_Cream_InitFlying:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	test	al, 4
	jne	.L281
.L277:
	mov	eax, 240
	xor	edx, edx
	mov	rcx, rbx
	mov	BYTE PTR 105[rbx], 1
	mov	WORD PTR 196[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 96[rbx], dx
	lea	rdx, Player_Cream_Flying[rip]
	or	DWORD PTR 36[rax], 268435456
	mov	BYTE PTR 98[rbx], 0
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Cream_Flying
	.p2align 4,,10
	.p2align 3
.L281:
	and	eax, -5
	mov	rcx, rbx
	mov	edx, 14
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	WORD PTR 26[rbx], cx
	jmp	.L277
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_InitStepAttack
	.def	Player_Cream_InitStepAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_InitStepAttack
Player_Cream_InitStepAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	call	Player_HandleSpriteYOffsetChange
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 3590
	mov	ecx, 17
	mov	WORD PTR 26[rbx], dx
	mov	edx, eax
	mov	WORD PTR 108[rbx], cx
	lea	rcx, Player_Cream_StepAttack[rip]
	or	edx, 536870912
	mov	DWORD PTR 36[rbx], edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rdx], rcx
	mov	rdx, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rdx], 64
	je	.L283
	test	al, 2
	je	.L284
	mov	eax, 50
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
.L283:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.p2align 4,,10
	.p2align 3
.L284:
	mov	rcx, rbx
	mov	BYTE PTR 117[rbx], 1
	add	rsp, 32
	pop	rbx
	jmp	Player_HandlePhysicsWithAirInput
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_InitChaoRollingAttack
	.def	Player_Cream_InitChaoRollingAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_InitChaoRollingAttack
Player_Cream_InitChaoRollingAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 18
	or	DWORD PTR 36[rbx], 536871170
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 108[rbx], dx
	lea	rdx, Player_Cream_ChaoRollingAttack[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	je	.L289
	cmp	DWORD PTR 112[rbx], 108
	je	.L294
.L289:
	mov	rcx, rbx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L288
	mov	BYTE PTR 117[rbx], 1
.L288:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L294:
	add	WORD PTR 114[rbx], 1
	jmp	.L289
	.seh_endproc
	.p2align 4
	.globl	Player_Cream_InitMidAirChaoAttack
	.def	Player_Cream_InitMidAirChaoAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Cream_InitMidAirChaoAttack
Player_Cream_InitMidAirChaoAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 19
	mov	rcx, rbx
	or	DWORD PTR 36[rbx], 536871170
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 108[rbx], dx
	lea	rdx, Player_Cream_WindupMidAirChaoAttack[rip]
	mov	QWORD PTR [rax], rdx
	call	Player_HandlePhysicsWithAirInput
	test	BYTE PTR 36[rbx], 2
	jne	.L295
	mov	BYTE PTR 117[rbx], 1
.L295:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateTailsTailSwipeEffect
	.def	CreateTailsTailSwipeEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTailsTailSwipeEffect
CreateTailsTailSwipeEffect:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	xor	ebx, ebx
	cmp	BYTE PTR [rax], 2
	ja	.L297
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	movsx	edx, dx
	movsx	ecx, cx
	mov	r8d, 232
	movsx	r9d, BYTE PTR 104[rdi]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR .refptr.Task_UpdateMpSpriteTaskSprite[rip]
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	movsx	rcx, WORD PTR 108[rdi]
	movsx	r9, BYTE PTR 141[rdi]
	mov	rsi, QWORD PTR 24[rax]
	mov	rbx, rax
	mov	rax, QWORD PTR .refptr.sCharStateAnimInfo[rip]
	mov	r8, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	movzx	edx, WORD PTR [rax+rcx*4]
	movzx	eax, WORD PTR 2[rax+rcx*4]
	add	dx, WORD PTR [r8+r9*2]
	movzx	edx, dx
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 22[rsi], eax
	movzx	edi, BYTE PTR 98[rdi]
	test	dil, dil
	je	.L302
	mov	ecx, 24
	mov	edi, 1
	call	VramMalloc
	mov	edx, 198
.L300:
	mov	QWORD PTR 40[rsi], rax
	mov	eax, 512
	mov	WORD PTR 50[rsi], dx
	mov	BYTE PTR 80[rsi], dil
	mov	WORD PTR 74[rsi], ax
	mov	DWORD PTR 64[rsi], 8192
.L297:
	mov	rax, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L302:
	mov	ecx, 15
	call	VramMalloc
	mov	edx, 845
	jmp	.L300
	.seh_endproc
	.p2align 4
	.globl	Player_Tails_InitUnusedJump
	.def	Player_Tails_InitUnusedJump;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Tails_InitUnusedJump
Player_Tails_InitUnusedJump:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	mov	eax, 91
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 3590
	mov	ecx, 116
	mov	WORD PTR 26[rbx], dx
	mov	edx, eax
	and	eax, 64
	or	edx, 536871170
	cmp	eax, 1
	sbb	eax, eax
	mov	DWORD PTR 36[rbx], edx
	and	ax, -512
	sub	ax, 512
	mov	WORD PTR 22[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_8012D1C[rip]
	mov	QWORD PTR [rax], rdx
	test	BYTE PTR 36[rbx], 2
	jne	.L305
	mov	BYTE PTR 117[rbx], 1
.L305:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8028204
	.seh_endproc
	.p2align 4
	.globl	sub_8012B44
	.def	sub_8012B44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8012B44
sub_8012B44:
	.seh_endprologue
	mov	r9d, DWORD PTR 200[rcx]
	test	r9d, r9d
	je	.L329
	movzx	eax, WORD PTR 100[rcx]
	test	al, 32
	je	.L309
	test	BYTE PTR 36[rcx], 1
	jne	.L330
.L310:
	mov	edx, 89
	mov	WORD PTR 108[rcx], dx
	mov	ecx, 120
	jmp	m4aSongNumStartOrChange
	.p2align 4,,10
	.p2align 3
.L309:
	test	al, 16
	jne	.L331
.L312:
	cmp	WORD PTR 108[rcx], 89
	je	.L332
.L314:
	mov	eax, 88
	mov	WORD PTR 108[rcx], ax
.L313:
	mov	ecx, 120
	jmp	m4aSongNumStartOrChange
	.p2align 4,,10
	.p2align 3
.L329:
	mov	r8d, 90
	mov	WORD PTR 108[rcx], r8w
	mov	ecx, 120
	jmp	m4aSongNumStop
	.p2align 4,,10
	.p2align 3
.L330:
	test	al, 16
	jne	.L310
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L331:
	test	BYTE PTR 36[rcx], 1
	jne	.L310
	cmp	WORD PTR 108[rcx], 89
	jne	.L314
.L332:
	mov	rax, QWORD PTR 160[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L313
	jmp	.L314
	.seh_endproc
	.p2align 4
	.globl	Player_Tails_8012C2C
	.def	Player_Tails_8012C2C;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Tails_8012C2C
Player_Tails_8012C2C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rbx, rcx
	test	BYTE PTR [rax], 1
	je	.L334
	mov	eax, DWORD PTR 200[rcx]
	test	eax, eax
	jne	.L356
.L334:
	movzx	edx, BYTE PTR 105[rbx]
	movzx	eax, WORD PTR 22[rbx]
	cmp	dl, 1
	je	.L335
.L358:
	cmp	ax, -192
	jge	.L357
.L336:
	mov	BYTE PTR 105[rbx], 1
.L337:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 40[rax]
	sal	eax, 8
	cmp	DWORD PTR 16[rbx], eax
	jge	.L340
	cmp	WORD PTR 22[rbx], 0
	mov	DWORD PTR 16[rbx], eax
	jns	.L340
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
.L340:
	mov	rcx, rbx
	call	sub_8012B44
	mov	DWORD PTR 72[rbx], 1536
	mov	rcx, rbx
	mov	DWORD PTR 80[rbx], 16
	call	sub_80282EC
	mov	eax, DWORD PTR 36[rbx]
	test	al, 2
	jne	.L342
	mov	BYTE PTR 117[rbx], 1
.L333:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L357:
	sub	eax, 24
	add	edx, 1
	mov	WORD PTR 22[rbx], ax
	mov	BYTE PTR 105[rbx], dl
	cmp	dl, 32
	jne	.L337
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L356:
	sub	eax, 1
	mov	DWORD PTR 200[rcx], eax
	movzx	edx, BYTE PTR 105[rbx]
	movzx	eax, WORD PTR 22[rbx]
	cmp	dl, 1
	jne	.L358
.L335:
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rbx]
	and	dx, WORD PTR [rcx]
	je	.L338
	cmp	ax, -192
	jl	.L338
	mov	ecx, DWORD PTR 200[rbx]
	test	ecx, ecx
	je	.L338
	mov	BYTE PTR 105[rbx], 2
	.p2align 4,,10
	.p2align 3
.L338:
	add	eax, 8
	mov	WORD PTR 22[rbx], ax
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L342:
	test	al, 64
	je	.L333
	mov	eax, 14
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Tails_InitFlying
	.def	Player_Tails_InitFlying;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Tails_InitFlying
Player_Tails_InitFlying:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	eax, DWORD PTR 36[rbx]
	test	al, 4
	jne	.L364
.L360:
	xor	eax, eax
	lea	rdx, Player_Tails_8012C2C[rip]
	mov	rcx, rbx
	mov	BYTE PTR 105[rbx], 1
	mov	WORD PTR 96[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 200[rbx], 240
	or	DWORD PTR 36[rax], 268435456
	mov	BYTE PTR 98[rbx], 0
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Tails_8012C2C
	.p2align 4,,10
	.p2align 3
.L364:
	and	eax, -5
	mov	edx, 14
	mov	rcx, rbx
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
	jmp	.L360
	.seh_endproc
	.p2align 4
	.globl	Player_Tails_InitTailSwipe
	.def	Player_Tails_InitTailSwipe;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Tails_InitTailSwipe
Player_Tails_InitTailSwipe:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	rcx, rbx
	mov	edx, 14
	and	DWORD PTR 48[rax], -16385
	mov	eax, 15
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 536870912
	mov	edx, 3590
	mov	ecx, DWORD PTR 12[rbx]
	mov	WORD PTR 26[rbx], dx
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	sar	edx, 8
	call	CreateTailsTailSwipeEffect
	mov	ecx, 121
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Tails_TailSwipe[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Tails_TailSwipe
	.seh_endproc
	.p2align 4
	.globl	CreateKnucklesFireEffect
	.def	CreateKnucklesFireEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateKnucklesFireEffect
CreateKnucklesFireEffect:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L367
	movzx	r8d, r8w
	jmp	CreateKnucklesFireEffect.part.0
	.p2align 4,,10
	.p2align 3
.L367:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_InitPunch
	.def	Player_Knuckles_InitPunch;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_InitPunch
Player_Knuckles_InitPunch:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 14
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	mov	eax, 15
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, DWORD PTR 36[rbx]
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
	movzx	edx, WORD PTR 24[rbx]
	mov	eax, ecx
	or	eax, 536870912
	mov	DWORD PTR 36[rbx], eax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 767
	ja	.L369
	and	ecx, 1
	cmp	ecx, 1
	sbb	eax, eax
	and	ax, 1536
	sub	ax, 768
	mov	WORD PTR 24[rbx], ax
.L369:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_PunchLeft[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_PunchLeft
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_InitSpiralAttack
	.def	Player_Knuckles_InitSpiralAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_InitSpiralAttack
Player_Knuckles_InitSpiralAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	edx, 17
	mov	rcx, rbx
	and	DWORD PTR 48[rax], -16385
	mov	WORD PTR 108[rbx], dx
	mov	edx, 9
	call	Player_HandleSpriteYOffsetChange
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	ecx, 2310
	or	DWORD PTR 36[rbx], 536870912
	mov	WORD PTR 26[rbx], cx
	cmp	BYTE PTR [rax], 2
	ja	.L372
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	xor	r8d, r8d
	sar	edx, 8
	sar	ecx, 8
	call	CreateKnucklesFireEffect.part.0
.L372:
	mov	eax, 32
	mov	ecx, 225
	mov	WORD PTR 122[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_SpiralAttack[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_SpiralAttack
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_Glide_UpdateFrames
	.def	Player_Knuckles_Glide_UpdateFrames;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_Glide_UpdateFrames
Player_Knuckles_Glide_UpdateFrames:
	.seh_endprologue
	mov	edx, DWORD PTR 36[rcx]
	movzx	eax, BYTE PTR 197[rcx]
	and	edx, -34
	mov	DWORD PTR 36[rcx], edx
	test	al, 127
	jne	.L374
	mov	r8d, 92
	mov	WORD PTR 108[rcx], r8w
	cmp	al, -128
	je	.L377
	ret
	.p2align 4,,10
	.p2align 3
.L374:
	mov	edx, eax
	neg	edx
	test	al, al
	cmovs	eax, edx
	lea	rdx, sKnucklesTurnFrameToCharstate[rip]
	shr	eax, 5
	and	eax, 3
	movsx	ax, BYTE PTR [rdx+rax]
	mov	WORD PTR 108[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L377:
	or	edx, 1
	mov	DWORD PTR 36[rcx], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_Glide_MainUpdate
	.def	Player_Knuckles_Glide_MainUpdate;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_Glide_MainUpdate
Player_Knuckles_Glide_MainUpdate:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8022838
	movzx	eax, BYTE PTR 196[rbx]
	test	al, 2
	jne	.L379
	mov	edx, DWORD PTR 36[rbx]
	mov	eax, edx
	and	eax, -2
	cmp	WORD PTR 20[rbx], 0
	jle	.L411
	movzx	esi, BYTE PTR 40[rbx]
	mov	DWORD PTR 36[rbx], eax
	lea	edx, 32[rsi]
	and	edx, 192
	je	.L382
.L412:
	movzx	esi, BYTE PTR 197[rbx]
	mov	ecx, eax
	and	eax, -2
	or	ecx, 1
	lea	edx, 64[rsi]
	test	dl, dl
	cmovle	eax, ecx
	mov	rcx, rbx
	mov	DWORD PTR 36[rbx], eax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	call	sub_8022318
	mov	BYTE PTR 117[rbx], 1
.L378:
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L411:
	movzx	esi, BYTE PTR 40[rbx]
	mov	eax, edx
	or	eax, 1
	lea	edx, 32[rsi]
	mov	DWORD PTR 36[rbx], eax
	and	edx, 192
	jne	.L412
.L382:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, Player_Knuckles_GlideHardLanding[rip]
	mov	ecx, 111
	mov	QWORD PTR [rax], rsi
	mov	eax, 95
	mov	WORD PTR 108[rbx], ax
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L379:
	test	al, 32
	je	.L386
	cmp	BYTE PTR 198[rbx], 0
	js	.L387
	movzx	esi, BYTE PTR 197[rbx]
	mov	eax, DWORD PTR 36[rbx]
	lea	edx, 64[rsi]
	test	dl, dl
	jle	.L413
	and	eax, -2
	lea	r8, 60[rsp]
	xor	edx, edx
	mov	rcx, rbx
	mov	DWORD PTR 36[rbx], eax
	call	sub_8029A74
	mov	esi, eax
	cmp	DWORD PTR 60[rsp], eax
	jne	.L410
	test	eax, eax
	je	.L392
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, DWORD PTR 12[rbx]
	test	BYTE PTR [rdx], -128
	jne	.L397
	movsx	ecx, BYTE PTR 26[rbx]
	mov	edx, DWORD PTR 16[rbx]
	sar	eax, 8
	mov	r9d, 8
	lea	eax, 1[rax+rcx]
	movsx	ecx, BYTE PTR 27[rbx]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	lea	ecx, 1[rdx+rcx]
	mov	rdx, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rdx
	movzx	r8d, BYTE PTR 60[rbx]
	mov	edx, eax
	call	sub_801E4E4
	test	eax, eax
	js	.L410
.L397:
	sal	esi, 8
	add	DWORD PTR 12[rbx], esi
.L392:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, Player_Knuckles_Climb[rip]
	mov	r10d, 100
	or	DWORD PTR 36[rbx], 268435456
	mov	BYTE PTR 197[rbx], 3
	mov	QWORD PTR [rax], rsi
	movabs	rax, 722264790239543296
	mov	WORD PTR 108[rbx], r10w
	mov	QWORD PTR 20[rbx], rax
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L386:
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 100[rbx]
	mov	eax, DWORD PTR 36[rbx]
	and	dx, WORD PTR [rcx]
	jne	.L414
.L398:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, Player_Knuckles_FallAfterGlide[rip]
	mov	ecx, eax
	and	eax, -2
	or	ecx, 1
	mov	QWORD PTR [rdx], rsi
	mov	edx, 93
	mov	WORD PTR 108[rbx], dx
	movzx	edx, WORD PTR 20[rbx]
	test	dx, dx
	cmovle	eax, ecx
	sar	dx, 2
	mov	ecx, 3590
	mov	WORD PTR 20[rbx], dx
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 26[rbx], cx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L414:
	test	al, 64
	jne	.L398
	mov	rcx, rbx
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	Player_Knuckles_Glide_UpdateFrames
	.p2align 4,,10
	.p2align 3
.L387:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, Player_Knuckles_FallAfterGlide[rip]
	mov	r8d, 93
	or	eax, 2
	mov	r9d, 3590
	mov	WORD PTR 108[rbx], r8w
	mov	QWORD PTR [rdx], rsi
	mov	WORD PTR 26[rbx], r9w
	mov	BYTE PTR 196[rbx], al
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L413:
	or	eax, 1
	lea	r8, 60[rsp]
	xor	edx, edx
	mov	rcx, rbx
	mov	DWORD PTR 36[rbx], eax
	call	sub_8029A28
	mov	esi, eax
	cmp	DWORD PTR 60[rsp], eax
	je	.L389
.L410:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, Player_Knuckles_FallAfterGlide[rip]
	mov	r11d, 93
	or	BYTE PTR 196[rbx], 2
	mov	WORD PTR 108[rbx], r11w
	mov	QWORD PTR [rax], rsi
	mov	esi, 3590
	mov	WORD PTR 26[rbx], si
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L389:
	test	eax, eax
	je	.L392
	mov	edx, DWORD PTR 12[rbx]
	movsx	ecx, BYTE PTR 26[rbx]
	mov	eax, DWORD PTR 16[rbx]
	movsx	r9d, BYTE PTR 27[rbx]
	sar	edx, 8
	movzx	r8d, BYTE PTR 60[rbx]
	sub	edx, 1
	sar	eax, 8
	sub	edx, ecx
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rcx], -128
	je	.L393
	mov	QWORD PTR 32[rsp], 0
	lea	ecx, -1[rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	sub	ecx, r9d
	mov	r9d, -8
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	js	.L410
.L394:
	mov	eax, esi
	sal	eax, 8
	sub	DWORD PTR 12[rbx], eax
	jmp	.L392
.L393:
	mov	QWORD PTR 32[rsp], 0
	lea	ecx, 1[r9+rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	jns	.L394
	jmp	.L410
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_GlideSoftFall
	.def	Player_Knuckles_GlideSoftFall;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_GlideSoftFall
Player_Knuckles_GlideSoftFall:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_AirInputControls
	mov	rcx, rbx
	call	PlayerFn_Cmd_UpdateAirFallSpeed
	mov	rcx, rbx
	call	sub_8022838
	test	BYTE PTR 196[rbx], 2
	je	.L418
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	movabs	rax, 1010495166391255040
	mov	rcx, rbx
	mov	QWORD PTR 20[rbx], rax
	call	sub_8022318
	movzx	eax, BYTE PTR 40[rbx]
	add	eax, 32
	test	al, -64
	je	.L417
	mov	BYTE PTR 117[rbx], 1
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L417:
	mov	eax, 15
	mov	edx, 94
	mov	WORD PTR 46[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 108[rbx], dx
	lea	rdx, Player_Knuckles_GlideSoftLanding[rip]
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_FallAfterGlide
	.def	Player_Knuckles_FallAfterGlide;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_FallAfterGlide
Player_Knuckles_FallAfterGlide:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80232D0
	mov	rcx, rbx
	call	Player_UpdatePosition
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_GlideSoftFall
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_GlideHardLandingUpdateAnim
	.def	Player_Knuckles_GlideHardLandingUpdateAnim;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_GlideHardLandingUpdateAnim
Player_Knuckles_GlideHardLandingUpdateAnim:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rbx, rcx
	test	BYTE PTR [rax], 3
	jne	.L421
	movsx	eax, BYTE PTR 27[rcx]
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, eax
	neg	edx
	test	BYTE PTR [rcx], -128
	mov	ecx, DWORD PTR 12[rbx]
	cmovne	eax, edx
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	sar	edx, 8
	add	edx, eax
	call	CreateBrakingDustEffect
.L421:
	mov	rcx, rbx
	call	sub_8022838
	lea	rdx, 43[rsp]
	lea	r8, 44[rsp]
	mov	rcx, rbx
	call	sub_8029B88
	cmp	eax, 11
	jg	.L423
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, eax
	neg	edx
	test	BYTE PTR [rcx], -128
	cmovne	eax, edx
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	movzx	eax, BYTE PTR 43[rsp]
	mov	BYTE PTR 40[rbx], al
.L420:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	test	BYTE PTR 36[rbx], 8
	jne	.L420
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rcx, Player_Knuckles_FallAfterGlide[rip]
	mov	edx, 14
	mov	QWORD PTR [rax], rcx
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	or	BYTE PTR 196[rbx], 2
	mov	eax, 3590
	mov	WORD PTR 26[rbx], ax
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80135BC
	.def	sub_80135BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80135BC
sub_80135BC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 100[rcx]
	and	ax, WORD PTR [rdx]
	mov	rbx, rcx
	je	.L431
	movzx	eax, WORD PTR 20[rcx]
	test	ax, ax
	jle	.L439
	sub	eax, 24
	mov	WORD PTR 20[rcx], ax
	test	ax, ax
	jg	.L433
.L431:
	movsx	edx, BYTE PTR 27[rbx]
	xor	eax, eax
	mov	DWORD PTR 20[rbx], 0
	mov	WORD PTR 24[rbx], ax
	mov	eax, 14
	lea	ecx, -14[rdx]
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	cmove	eax, ecx
	mov	rcx, rbx
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	call	sub_8022318
	mov	edx, 15
	mov	BYTE PTR 117[rbx], 1
	mov	WORD PTR 46[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	add	eax, 24
	mov	WORD PTR 20[rcx], ax
	test	ax, ax
	jns	.L431
.L433:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_GlideHardLandingUpdateAnim
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_GlideHardLanding
	.def	Player_Knuckles_GlideHardLanding;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_GlideHardLanding
Player_Knuckles_GlideHardLanding:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_80135BC
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_UpdatePosition
	.seh_endproc
	.p2align 4
	.globl	sub_8013644
	.def	sub_8013644;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013644
sub_8013644:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	movsx	eax, BYTE PTR 26[rcx]
	movzx	r8d, BYTE PTR 60[rcx]
	mov	rbx, rcx
	mov	ecx, DWORD PTR 12[rcx]
	mov	edx, DWORD PTR 16[rbx]
	sar	ecx, 8
	sar	edx, 8
	test	BYTE PTR 36[rbx], 1
	je	.L442
	sub	ecx, 2
	mov	r9d, -8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 63[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	movzx	edx, BYTE PTR 63[rsp]
	mov	ecx, 64
	test	dl, 1
	cmovne	edx, ecx
	mov	BYTE PTR 40[rbx], dl
	add	rsp, 64
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L442:
	lea	ecx, 2[rax+rcx]
	mov	rax, QWORD PTR .refptr.sub_801ED24[rip]
	mov	r9d, 8
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 63[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	movzx	edx, BYTE PTR 63[rsp]
	mov	ecx, -64
	test	dl, 1
	cmovne	edx, ecx
	mov	BYTE PTR 40[rbx], dl
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_Climb_80136E8
	.def	Player_Knuckles_Climb_80136E8;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_Climb_80136E8
Player_Knuckles_Climb_80136E8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	cmp	BYTE PTR 198[rcx], 0
	mov	rbx, rcx
	js	.L448
	test	BYTE PTR 36[rcx], 8
	jne	.L448
	xor	r9d, r9d
	cmp	WORD PTR 108[rcx], 100
	mov	DWORD PTR 20[rcx], 0
	mov	WORD PTR 24[rcx], r9w
	je	.L451
	mov	r8d, 101
	mov	WORD PTR 108[rcx], r8w
.L451:
	movzx	eax, WORD PTR 100[rbx]
	test	al, 64
	je	.L452
	movsx	esi, BYTE PTR 27[rbx]
	mov	rdi, QWORD PTR .refptr.gStageFlags[rip]
	mov	rcx, rbx
	sal	esi, 8
	mov	eax, esi
	neg	eax
	test	BYTE PTR [rdi], -128
	cmovne	esi, eax
	sub	DWORD PTR 16[rbx], esi
	call	sub_8013644
	add	esi, DWORD PTR 16[rbx]
	mov	DWORD PTR 16[rbx], esi
	cmp	eax, 2
	jg	.L498
	test	eax, eax
	jg	.L499
	jne	.L478
	movzx	eax, WORD PTR [rdi]
	lea	rdx, 47[rsp]
	mov	rcx, rbx
	and	ax, 128
	cmp	ax, 1
	sbb	edi, edi
	xor	r8d, r8d
	and	edi, 4608
	sub	edi, 2304
	sub	esi, edi
	mov	DWORD PTR 16[rbx], esi
	call	sub_8029AC0
	add	edi, DWORD PTR 16[rbx]
	mov	edx, 102
	mov	DWORD PTR 16[rbx], edi
	mov	WORD PTR 108[rbx], dx
	test	eax, eax
	js	.L500
	mov	eax, DWORD PTR 36[rbx]
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	eax, -64
	add	eax, -128
	mov	WORD PTR 22[rbx], ax
.L463:
	test	BYTE PTR 100[rbx], -64
	je	.L473
.L477:
	movzx	eax, BYTE PTR 197[rbx]
	mov	edx, 3
	sub	al, 1
	cmove	eax, edx
	mov	BYTE PTR 197[rbx], al
.L478:
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR [rdx]
	je	.L447
	mov	eax, -672
	mov	ecx, 50
	mov	BYTE PTR 117[rbx], 4
	mov	WORD PTR 22[rbx], ax
	mov	eax, DWORD PTR 36[rbx]
	mov	WORD PTR 108[rbx], cx
	xor	eax, 1
	mov	edx, eax
	and	edx, 1
	cmp	edx, 1
	sbb	edx, edx
	or	eax, 262
	and	dx, 1536
	mov	DWORD PTR 36[rbx], eax
	sub	dx, 768
	mov	WORD PTR 20[rbx], dx
	mov	edx, 2310
	mov	WORD PTR 26[rbx], dx
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L465:
	mov	rcx, rbx
	call	sub_8013644
	test	eax, eax
	jle	.L463
	.p2align 4,,10
	.p2align 3
.L448:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdi, Player_Knuckles_FallAfterGlide[rip]
	mov	r10d, 3590
	mov	r11d, 93
	mov	WORD PTR 26[rbx], r10w
	mov	QWORD PTR [rax], rdi
	mov	WORD PTR 108[rbx], r11w
.L447:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L452:
	test	al, -128
	je	.L465
	movsx	esi, BYTE PTR 27[rbx]
	mov	rdi, QWORD PTR .refptr.gStageFlags[rip]
	mov	rcx, rbx
	sal	esi, 8
	mov	eax, esi
	neg	eax
	test	BYTE PTR [rdi], -128
	cmovne	esi, eax
	add	DWORD PTR 16[rbx], esi
	call	sub_8013644
	sub	DWORD PTR 16[rbx], esi
	test	eax, eax
	jg	.L448
	lea	rdx, 47[rsp]
	xor	r8d, r8d
	mov	rcx, rbx
	test	BYTE PTR [rdi], -128
	jne	.L501
	call	sub_8029B0C
.L468:
	test	eax, eax
	js	.L502
	mov	eax, DWORD PTR 36[rbx]
	mov	r10d, 103
	mov	WORD PTR 108[rbx], r10w
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	eax, 64
	sub	ax, -128
	mov	WORD PTR 22[rbx], ax
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L473:
	xor	r8d, r8d
	lea	rdx, 47[rsp]
	mov	rcx, rbx
	call	sub_8029B0C
	test	eax, eax
	js	.L503
	jne	.L477
	jmp	.L478
	.p2align 4,,10
	.p2align 3
.L501:
	call	sub_8029AC0
	jmp	.L468
	.p2align 4,,10
	.p2align 3
.L499:
	mov	BYTE PTR 47[rsp], 0
	mov	BYTE PTR 40[rbx], 0
.L495:
	xor	r11d, r11d
	mov	DWORD PTR 20[rbx], 0
	mov	rcx, rbx
	mov	esi, 93
	mov	WORD PTR 24[rbx], r11w
	call	sub_8022318
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_FallAfterGlide[rip]
	mov	WORD PTR 108[rbx], si
	mov	QWORD PTR [rax], rdx
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L498:
	movsx	eax, BYTE PTR 27[rbx]
	mov	ecx, 104
	mov	BYTE PTR 197[rbx], 0
	mov	WORD PTR 108[rbx], cx
	sal	eax, 8
	lea	edx, [rsi+rax]
	sub	esi, eax
	test	BYTE PTR [rdi], -128
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmovne	esi, edx
	lea	rdx, Player_Knuckles_ClimbPullUpEdge[rip]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR 16[rbx], esi
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L500:
	sal	eax, 8
	sub	edi, eax
	mov	DWORD PTR 16[rbx], edi
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L502:
	mov	edx, DWORD PTR 16[rbx]
	sal	eax, 8
	mov	ecx, edx
	add	edx, eax
	sub	ecx, eax
	test	BYTE PTR [rdi], -128
	movzx	eax, BYTE PTR 47[rsp]
	cmovne	edx, ecx
	mov	BYTE PTR 40[rbx], al
	mov	DWORD PTR 16[rbx], edx
	jmp	.L495
.L503:
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	movzx	eax, BYTE PTR 47[rsp]
	xor	r8d, r8d
	mov	WORD PTR 24[rbx], r8w
	mov	rcx, rbx
	mov	BYTE PTR 40[rbx], al
	mov	DWORD PTR 20[rbx], 0
	call	sub_8022318
	mov	r9d, 93
	mov	WORD PTR 108[rbx], r9w
	jmp	.L447
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_Climb
	.def	Player_Knuckles_Climb;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_Climb
Player_Knuckles_Climb:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_Knuckles_Climb_80136E8
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_UpdatePosition
	.seh_endproc
	.p2align 4
	.globl	sub_801394C
	.def	sub_801394C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801394C
sub_801394C:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rcx]
	and	ax, WORD PTR [rdx]
	je	.L505
	mov	eax, -672
	mov	r8d, 50
	mov	BYTE PTR 117[rcx], 4
	mov	WORD PTR 22[rcx], ax
	mov	eax, DWORD PTR 36[rcx]
	mov	WORD PTR 108[rcx], r8w
	xor	eax, 1
	mov	edx, eax
	and	edx, 1
	cmp	edx, 1
	sbb	edx, edx
	or	eax, 262
	and	dx, 1536
	mov	DWORD PTR 36[rcx], eax
	sub	dx, 768
	mov	WORD PTR 20[rcx], dx
	mov	edx, 2310
	mov	WORD PTR 26[rcx], dx
.L505:
	ret
	.seh_endproc
	.p2align 4
	.globl	Knuckles_Glide_UpdateSpeed
	.def	Knuckles_Glide_UpdateSpeed;	.scl	2;	.type	32;	.endef
	.seh_proc	Knuckles_Glide_UpdateSpeed
Knuckles_Glide_UpdateSpeed:
	.seh_endprologue
	movzx	edx, WORD PTR 24[rcx]
	mov	r8d, edx
	neg	r8w
	mov	rax, rcx
	cmovs	r8d, edx
	mov	r9d, DWORD PTR 36[rax]
	movzx	edx, BYTE PTR 197[rax]
	movzx	ecx, r8w
	and	r9d, 64
	cmp	r8w, 767
	ja	.L513
	add	ecx, 6
.L514:
	test	r9d, r9d
	je	.L517
	cmp	ecx, 768
	jg	.L516
.L517:
	movzx	r8d, WORD PTR 100[rax]
	lea	r10d, 64[rdx]
	mov	r9d, r8d
	and	r9d, 32
	test	r10b, r10b
	jle	.L554
	mov	WORD PTR 24[rax], cx
	test	r9w, r9w
	je	.L523
.L526:
	mov	r8d, edx
	neg	r8d
	test	dl, dl
	cmovs	edx, r8d
	add	edx, 2
	movsx	r8d, dl
	lea	r8d, 256[0+r8*4]
.L528:
	mov	BYTE PTR 197[rax], dl
	movsx	rdx, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	imul	edx, ecx
	movzx	ecx, WORD PTR 22[rax]
	lea	r8d, 24[rcx]
	sar	edx, 8
	cmp	cx, 127
	mov	WORD PTR 20[rax], dx
	lea	edx, -24[rcx]
	cmovle	edx, r8d
	mov	WORD PTR 22[rax], dx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 76[rdx]
	test	eax, eax
	jle	.L534
	sub	eax, 2
	mov	DWORD PTR 76[rdx], eax
.L512:
	ret
	.p2align 4,,10
	.p2align 3
.L513:
	cmp	r8w, 3839
	ja	.L515
	test	dl, 127
	jne	.L514
	add	ecx, 3
	test	r9d, r9d
	je	.L517
.L516:
	sub	ecx, 9
	mov	r8d, 768
	cmp	ecx, r8d
	cmovl	ecx, r8d
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L523:
	and	r8d, 16
	je	.L520
	test	dl, dl
	jne	.L529
	mov	r8d, 256
	jmp	.L528
	.p2align 4,,10
	.p2align 3
.L515:
	test	r9d, r9d
	je	.L517
	sub	ecx, 9
	mov	r8d, 768
	cmp	ecx, r8d
	cmovl	ecx, r8d
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L554:
	mov	r10d, ecx
	neg	r10d
	mov	WORD PTR 24[rax], r10w
	test	r9w, r9w
	jne	.L519
	and	r8d, 16
	jne	.L529
.L520:
	lea	r8d, 2[rdx]
	test	dl, 127
	cmovne	edx, r8d
	movsx	r8d, dl
	lea	r8d, 256[0+r8*4]
	jmp	.L528
	.p2align 4,,10
	.p2align 3
.L534:
	je	.L512
	add	eax, 4
	mov	DWORD PTR 76[rdx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L519:
	mov	r8d, -256
	cmp	dl, -128
	je	.L528
	jmp	.L526
	.p2align 4,,10
	.p2align 3
.L529:
	mov	r8d, edx
	neg	r8d
	test	dl, dl
	cmovg	edx, r8d
	add	edx, 2
	movsx	r8d, dl
	lea	r8d, 256[0+r8*4]
	jmp	.L528
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_Glide
	.def	Player_Knuckles_Glide;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_Glide
Player_Knuckles_Glide:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Knuckles_Glide_UpdateSpeed
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	Player_UpdatePosition
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_Glide_MainUpdate
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_InitGlide
	.def	Player_Knuckles_InitGlide;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_InitGlide
Player_Knuckles_InitGlide:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, DWORD PTR 36[rcx]
	add	WORD PTR 22[rcx], 384
	mov	eax, edx
	and	eax, -5
	mov	DWORD PTR 36[rcx], eax
	mov	eax, 1542
	mov	rbx, rcx
	mov	WORD PTR 26[rcx], ax
	movzx	eax, WORD PTR 22[rcx]
	xor	ecx, ecx
	test	ax, ax
	cmovs	eax, ecx
	mov	WORD PTR 22[rbx], ax
	mov	eax, edx
	and	eax, 64
	cmp	eax, 1
	sbb	eax, eax
	and	ax, 384
	add	ax, 384
	and	edx, 1
	jne	.L558
	mov	WORD PTR 24[rbx], ax
	xor	eax, eax
.L559:
	mov	BYTE PTR 197[rbx], al
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, rbx
	lea	rdx, Player_Knuckles_Glide[rip]
	mov	BYTE PTR 40[rbx], 0
	mov	BYTE PTR 98[rbx], 0
	mov	BYTE PTR 196[rbx], 2
	mov	QWORD PTR [rax], rdx
	call	Knuckles_Glide_UpdateSpeed
	mov	rcx, rbx
	call	sub_80232D0
	mov	rcx, rbx
	call	Player_UpdatePosition
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_Glide_MainUpdate
	.p2align 4,,10
	.p2align 3
.L558:
	neg	eax
	mov	WORD PTR 24[rbx], ax
	mov	eax, -128
	jmp	.L559
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_InitClimbPullUpEdge
	.def	Player_Knuckles_InitClimbPullUpEdge;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_InitClimbPullUpEdge
Player_Knuckles_InitClimbPullUpEdge:
	.seh_endprologue
	mov	eax, 104
	movsx	edx, BYTE PTR 27[rcx]
	sal	edx, 8
	mov	WORD PTR 108[rcx], ax
	mov	eax, DWORD PTR 16[rcx]
	mov	BYTE PTR 197[rcx], 0
	lea	r8d, [rax+rdx]
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	lea	rdx, Player_Knuckles_ClimbPullUpEdge[rip]
	cmovne	eax, r8d
	mov	DWORD PTR 16[rcx], eax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8013CA0
	.def	sub_8013CA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013CA0
sub_8013CA0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_FallAfterGlide[rip]
	mov	QWORD PTR [rax], rdx
	mov	eax, 3590
	mov	edx, 93
	mov	WORD PTR 26[rcx], ax
	mov	WORD PTR 108[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8013CC0
	.def	sub_8013CC0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013CC0
sub_8013CC0:
	.seh_endprologue
	movzx	edx, WORD PTR 24[rcx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 767
	ja	.L565
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 1
	cmp	eax, 1
	sbb	eax, eax
	and	ax, 1536
	sub	ax, 768
	mov	WORD PTR 24[rcx], ax
.L565:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8013CF4
	.def	sub_8013CF4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013CF4
sub_8013CF4:
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	test	eax, eax
	jle	.L569
	mov	edx, 96
	cmp	eax, edx
	cmovl	eax, edx
	sub	eax, 96
	mov	WORD PTR 24[rcx], ax
.L568:
	ret
	.p2align 4,,10
	.p2align 3
.L569:
	je	.L568
	mov	edx, -96
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 96
	mov	WORD PTR 24[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Knuckles_InitDrillClaw
	.def	Player_Knuckles_InitDrillClaw;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Knuckles_InitDrillClaw
Player_Knuckles_InitDrillClaw:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rcx, rbx
	mov	edx, 14
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 106
	or	DWORD PTR 36[rbx], 536871168
	mov	WORD PTR 26[rbx], ax
	mov	rax, QWORD PTR 160[rbx]
	mov	ecx, 226
	and	DWORD PTR 48[rax], -16385
	mov	WORD PTR 108[rbx], dx
	mov	DWORD PTR 20[rbx], 0
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_WindupDrillClaw[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Knuckles_WindupDrillClaw
	.seh_endproc
	.p2align 4
	.globl	sub_8013D7C
	.def	sub_8013D7C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013D7C
sub_8013D7C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Knuckles_FallAfterGlide[rip]
	or	BYTE PTR 196[rcx], 2
	mov	QWORD PTR [rax], rdx
	mov	eax, 93
	mov	edx, 3590
	mov	WORD PTR 108[rcx], ax
	mov	WORD PTR 26[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8013EE0
	.def	sub_8013EE0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8013EE0
sub_8013EE0:
	.seh_endprologue
	movsx	eax, WORD PTR 24[rcx]
	test	eax, eax
	jle	.L577
	mov	edx, 96
	cmp	eax, edx
	cmovl	eax, edx
	sub	eax, 96
	mov	WORD PTR 24[rcx], ax
.L576:
	ret
	.p2align 4,,10
	.p2align 3
.L577:
	je	.L576
	mov	edx, -96
	cmp	eax, edx
	cmovg	eax, edx
	add	eax, 96
	mov	WORD PTR 24[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	Player_Amy_InitHammerAttack
	.def	Player_Amy_InitHammerAttack;	.scl	2;	.type	32;	.endef
	.seh_proc	Player_Amy_InitHammerAttack
Player_Amy_InitHammerAttack:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rax, QWORD PTR 160[rbx]
	mov	rcx, rbx
	mov	edx, 14
	and	DWORD PTR 48[rax], -16385
	mov	eax, 15
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	or	DWORD PTR 36[rbx], 536870912
	xor	ecx, ecx
	mov	WORD PTR 26[rbx], dx
	call	CreateAmyAttackHeartEffect
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Player_Amy_HammerAttack[rip]
	mov	rcx, rbx
	mov	QWORD PTR [rax], rdx
	add	rsp, 32
	pop	rbx
	jmp	Player_Amy_HammerAttack
	.seh_endproc
	.section .rdata,"dr"
	.align 8
sKnucklesAnimData_FX:
	.word	30
	.word	289
	.word	2
	.word	25
	.word	324
	.word	3
sKnucklesTurnFrameToCharstate:
	.ascii "`abc"
	.globl	creamBoostMinFlySpeedTable
	.align 4
creamBoostMinFlySpeedTable:
	.word	512
	.word	1024
	.word	1536
	.word	2048
	.word	2560
	.word	0
	.globl	gUnknown_080D5518
	.align 4
gUnknown_080D5518:
	.word	15
	.word	16
	.word	3
	.word	16
	.word	17
	.word	1
	.word	16
	.word	51
	.word	3
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_HandlePhysicsWithAirInput;	.scl	2;	.type	32;	.endef
	.def	sub_8029C84;	.scl	2;	.type	32;	.endef
	.def	sub_8029FA4;	.scl	2;	.type	32;	.endef
	.def	sub_80283C4;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	GetPreviousPlayerPos;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	sub_8028204;	.scl	2;	.type	32;	.endef
	.def	Player_TouchGround;	.scl	2;	.type	32;	.endef
	.def	sub_80232D0;	.scl	2;	.type	32;	.endef
	.def	Player_UpdatePosition;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	CreateAmyAttackHeartEffect;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	Player_Uncurl;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	sub_80282EC;	.scl	2;	.type	32;	.endef
	.def	sub_8022838;	.scl	2;	.type	32;	.endef
	.def	sub_8022318;	.scl	2;	.type	32;	.endef
	.def	sub_8029A74;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	sub_8029A28;	.scl	2;	.type	32;	.endef
	.def	Player_AirInputControls;	.scl	2;	.type	32;	.endef
	.def	PlayerFn_Cmd_UpdateAirFallSpeed;	.scl	2;	.type	32;	.endef
	.def	CreateBrakingDustEffect;	.scl	2;	.type	32;	.endef
	.def	sub_8029B88;	.scl	2;	.type	32;	.endef
	.def	sub_8029AC0;	.scl	2;	.type	32;	.endef
	.def	sub_8029B0C;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.sub_801ED24, "dr"
	.globl	.refptr.sub_801ED24
	.linkonce	discard
.refptr.sub_801ED24:
	.quad	sub_801ED24
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
	.section	.rdata$.refptr.Player_Uncurl, "dr"
	.globl	.refptr.Player_Uncurl
	.linkonce	discard
.refptr.Player_Uncurl:
	.quad	Player_Uncurl
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.sCharStateAnimInfo, "dr"
	.globl	.refptr.sCharStateAnimInfo
	.linkonce	discard
.refptr.sCharStateAnimInfo:
	.quad	sCharStateAnimInfo
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
