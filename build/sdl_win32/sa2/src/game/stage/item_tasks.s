	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_Item_Shield_Normal
	.def	Task_Item_Shield_Normal;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Item_Shield_Normal
Task_Item_Shield_Normal:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, BYTE PTR 59[rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	r8d, edx
	movzx	esi, BYTE PTR 64[rbx]
	and	r8d, 3
	cmp	r8b, 1
	jne	.L15
	and	edx, 2
	je	.L16
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 12[rax]
	and	esi, 1
	sar	edx, 8
	sub	edx, DWORD PTR [rcx]
	add	dx, WORD PTR 132[rax]
	mov	WORD PTR 38[rbx], dx
	mov	edx, DWORD PTR 16[rax]
	mov	rax, QWORD PTR 160[rax]
	sar	edx, 8
	sub	edx, DWORD PTR 4[rcx]
	mov	rcx, rbx
	mov	eax, DWORD PTR 48[rax]
	mov	WORD PTR 40[rbx], dx
	mov	edx, DWORD PTR 32[rbx]
	and	eax, 12288
	and	dh, -49
	or	eax, edx
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	je	.L5
	test	sil, sil
	jne	.L1
.L6:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L5:
	test	sil, sil
	je	.L1
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	Task_Item_Shield_Magnetic
	.def	Task_Item_Shield_Magnetic;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Item_Shield_Magnetic
Task_Item_Shield_Magnetic:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	rbx, QWORD PTR 24[rcx]
	cmp	BYTE PTR [rax], 2
	movzx	esi, BYTE PTR 64[rbx]
	ja	.L18
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, BYTE PTR 59[rax]
	mov	r8d, edx
	and	r8d, 10
	cmp	r8b, 8
	jne	.L31
	and	edx, 2
	jne	.L17
	mov	edx, DWORD PTR 12[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	sub	edx, DWORD PTR [rcx]
	add	dx, WORD PTR 132[rax]
	mov	WORD PTR 38[rbx], dx
	mov	edx, DWORD PTR 16[rax]
	mov	rax, QWORD PTR 160[rax]
	sar	edx, 8
	sub	edx, DWORD PTR 4[rcx]
	mov	eax, DWORD PTR 48[rax]
	mov	WORD PTR 40[rbx], dx
	mov	edx, DWORD PTR 32[rbx]
	and	eax, 12288
	and	dh, -49
	or	eax, edx
	mov	DWORD PTR 32[rbx], eax
.L18:
	mov	rcx, rbx
	and	esi, 1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	je	.L22
	test	sil, sil
	jne	.L17
.L23:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L31:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L22:
	test	sil, sil
	jne	.L23
.L17:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_Item_Invincibility
	.def	Task_Item_Invincibility;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Item_Invincibility
Task_Item_Invincibility:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	rbx, QWORD PTR 24[rcx]
	cmp	BYTE PTR [rax], 2
	movzx	esi, BYTE PTR 64[rbx]
	jbe	.L33
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movsx	rax, sil
	mov	rax, QWORD PTR [rdx+rax*8]
	mov	rax, QWORD PTR 24[rax]
	test	BYTE PTR 103[rax], 2
	je	.L43
	movzx	ecx, WORD PTR 98[rax]
	mov	edx, DWORD PTR 32[rax]
	movzx	eax, WORD PTR 96[rax]
.L35:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	and	edx, 12288
	sub	ax, WORD PTR [r8]
	mov	WORD PTR 38[rbx], ax
	mov	eax, ecx
	sub	ax, WORD PTR 4[r8]
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], ax
	mov	eax, DWORD PTR 32[rbx]
	and	ah, -49
	or	eax, edx
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L44
	and	esi, 1
	jne	.L32
.L38:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L44:
	and	esi, 1
	jne	.L38
.L32:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 59[rdx], 2
	je	.L43
	movzx	eax, WORD PTR 13[rdx]
	movzx	ecx, WORD PTR 17[rdx]
	add	ax, WORD PTR 132[rdx]
	mov	rdx, QWORD PTR 160[rdx]
	mov	edx, DWORD PTR 48[rdx]
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	Task_Item_Confusion
	.def	Task_Item_Confusion;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Item_Confusion
Task_Item_Confusion:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	rbx, QWORD PTR 24[rdx]
	cmp	BYTE PTR [rax], 2
	movzx	esi, BYTE PTR 64[rbx]
	jbe	.L46
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movsx	rax, sil
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	rcx, QWORD PTR 24[rax]
	test	BYTE PTR 103[rcx], 80
	je	.L46
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, DWORD PTR 96[rcx]
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	mov	edx, DWORD PTR 32[rbx]
	movd	xmm1, eax
	and	dh, -49
	psubw	xmm0, xmm1
	mov	DWORD PTR 32[rbx], edx
	mov	eax, DWORD PTR 32[rcx]
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	and	eax, 12288
	movd	DWORD PTR 38[rbx], xmm0
	or	eax, edx
	mov	edx, eax
	and	ah, -9
	or	dh, 8
	test	BYTE PTR [rcx], -128
	mov	rcx, rbx
	cmovne	eax, edx
	and	esi, 1
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	je	.L50
	test	sil, sil
	jne	.L45
.L51:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L46:
	mov	rcx, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L50:
	test	sil, sil
	jne	.L51
.L45:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_ItemTasks
	.def	TaskDestructor_ItemTasks;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_ItemTasks
TaskDestructor_ItemTasks:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateItemTask_Shield_Normal
	.def	CreateItemTask_Shield_Normal;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateItemTask_Shield_Normal
CreateItemTask_Shield_Normal:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_ItemTasks[rip]
	xor	r9d, r9d
	mov	edx, 72
	mov	r8d, 16385
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	lea	rcx, Task_Item_Shield_Normal[rip]
	call	TaskCreate
	mov	ecx, 36
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	BYTE PTR 64[rbx], dil
	call	VramMalloc
	mov	BYTE PTR 50[rbx], 16
	mov	ecx, 151
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	mov	DWORD PTR 16[rbx], 55705600
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	call	m4aSongNumStart
	mov	rax, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateItemTask_Invincibility
	.def	CreateItemTask_Invincibility;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateItemTask_Invincibility
CreateItemTask_Invincibility:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_ItemTasks[rip]
	xor	r9d, r9d
	mov	edx, 72
	mov	r8d, 16385
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	lea	rcx, Task_Item_Invincibility[rip]
	call	TaskCreate
	mov	ecx, 36
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	BYTE PTR 64[rbx], dil
	call	VramMalloc
	mov	DWORD PTR 16[rbx], 55836672
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	mov	rax, rsi
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateItemTask_Shield_Magnetic
	.def	CreateItemTask_Shield_Magnetic;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateItemTask_Shield_Magnetic
CreateItemTask_Shield_Magnetic:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_ItemTasks[rip]
	xor	r9d, r9d
	mov	edx, 72
	mov	r8d, 16385
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	lea	rcx, Task_Item_Shield_Magnetic[rip]
	call	TaskCreate
	mov	ecx, 36
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	BYTE PTR 64[rbx], dil
	call	VramMalloc
	mov	BYTE PTR 50[rbx], 16
	mov	ecx, 151
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	mov	DWORD PTR 16[rbx], 55771136
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	call	m4aSongNumStart
	mov	rax, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateItemTask_Confusion
	.def	CreateItemTask_Confusion;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateItemTask_Confusion
CreateItemTask_Confusion:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_ItemTasks[rip]
	xor	r9d, r9d
	mov	edx, 72
	mov	r8d, 16385
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	lea	rcx, Task_Item_Confusion[rip]
	call	TaskCreate
	mov	ecx, 8
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	BYTE PTR 64[rbx], dil
	call	VramMalloc
	mov	DWORD PTR 16[rbx], 57737216
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	mov	rax, rsi
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_802ABC8
	.def	Task_802ABC8;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_802ABC8
Task_802ABC8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 32[rbx]
	mov	r8d, eax
	and	r8d, 16384
	jne	.L68
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 2
	jbe	.L69
	xor	ecx, ecx
	xor	edx, edx
.L66:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	and	ah, -49
	or	eax, r8d
	sub	dx, WORD PTR [r9]
	mov	DWORD PTR 32[rbx], eax
	mov	WORD PTR 38[rbx], dx
	mov	edx, ecx
	sub	dx, WORD PTR 4[r9]
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR 160[rcx]
	movzx	edx, WORD PTR 13[rcx]
	add	dx, WORD PTR 132[rcx]
	movzx	ecx, WORD PTR 17[rcx]
	mov	r8d, DWORD PTR 48[r8]
	and	r8d, 12288
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L68:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
