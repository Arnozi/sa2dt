	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_SpindashDustEffect
	.def	Task_SpindashDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpindashDustEffect
Task_SpindashDustEffect:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	QWORD PTR 152[rax], 0
	je	.L2
	mov	r9d, DWORD PTR 36[rax]
	mov	edx, r9d
	and	edx, 1152
	cmp	edx, 1024
	jne	.L2
	cmp	WORD PTR 42[rax], 512
	mov	rbx, QWORD PTR 24[rcx]
	jle	.L4
	mov	edx, 847
	mov	r8d, -256
	mov	WORD PTR 18[rbx], dx
	lea	rdx, Task_SpindashDustEffectBig[rip]
	mov	WORD PTR 48[rbx], r8w
	mov	QWORD PTR 40[rcx], rdx
.L4:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	movsx	edx, BYTE PTR 27[rax]
	movzx	ecx, WORD PTR [rcx]
	mov	r10d, edx
	neg	r10d
	and	cx, 128
	mov	r8d, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	cmovne	edx, r10d
	mov	r11d, DWORD PTR [rcx]
	mov	r10d, DWORD PTR 4[rcx]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 2
	jbe	.L6
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	rax, QWORD PTR 24[rax]
	movzx	ecx, WORD PTR 96[rax]
	movzx	eax, WORD PTR 98[rax]
	sub	eax, r10d
	sub	ecx, r11d
	add	edx, eax
.L7:
	mov	eax, DWORD PTR 32[rbx]
	mov	WORD PTR 40[rbx], dx
	mov	WORD PTR 38[rbx], cx
	mov	rcx, rbx
	mov	edx, eax
	and	ah, -5
	or	dh, 4
	and	r9d, 1
	cmove	eax, edx
	mov	edx, eax
	and	ah, -9
	or	dh, 8
	test	r8w, r8w
	cmovne	eax, edx
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L2:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	movzx	ecx, WORD PTR 13[rax]
	movzx	eax, WORD PTR 17[rax]
	sub	eax, r10d
	sub	ecx, r11d
	add	edx, eax
	jmp	.L7
	.seh_endproc
	.p2align 4
	.globl	Task_SpindashDustEffectBig
	.def	Task_SpindashDustEffectBig;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpindashDustEffectBig
Task_SpindashDustEffectBig:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	QWORD PTR 152[rax], 0
	je	.L16
	mov	r9d, DWORD PTR 36[rax]
	mov	edx, r9d
	and	edx, 1152
	cmp	edx, 1024
	jne	.L16
	cmp	WORD PTR 42[rax], 512
	mov	rbx, QWORD PTR 24[rcx]
	jg	.L18
	mov	edx, 846
	mov	r8d, -256
	mov	WORD PTR 18[rbx], dx
	lea	rdx, Task_SpindashDustEffect[rip]
	mov	WORD PTR 48[rbx], r8w
	mov	QWORD PTR 40[rcx], rdx
.L18:
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	movsx	edx, BYTE PTR 27[rax]
	movzx	ecx, WORD PTR [rcx]
	mov	r10d, edx
	neg	r10d
	and	cx, 128
	mov	r8d, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	cmovne	edx, r10d
	mov	r11d, DWORD PTR [rcx]
	mov	r10d, DWORD PTR 4[rcx]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 2
	jbe	.L20
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	rax, QWORD PTR 24[rax]
	movzx	ecx, WORD PTR 96[rax]
	movzx	eax, WORD PTR 98[rax]
	sub	eax, r10d
	sub	ecx, r11d
	add	edx, eax
.L21:
	mov	eax, DWORD PTR 32[rbx]
	mov	WORD PTR 40[rbx], dx
	mov	WORD PTR 38[rbx], cx
	mov	rcx, rbx
	mov	edx, eax
	and	ah, -5
	or	dh, 4
	and	r9d, 1
	cmove	eax, edx
	mov	edx, eax
	and	ah, -9
	or	dh, 8
	test	r8w, r8w
	cmovne	eax, edx
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L16:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	ecx, WORD PTR 13[rax]
	movzx	eax, WORD PTR 17[rax]
	sub	eax, r10d
	sub	ecx, r11d
	add	edx, eax
	jmp	.L21
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_SpindashDustEffect
	.def	TaskDestructor_SpindashDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_SpindashDustEffect
TaskDestructor_SpindashDustEffect:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateSpindashDustEffect
	.def	CreateSpindashDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpindashDustEffect
CreateSpindashDustEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_SpindashDustEffect[rip]
	xor	r9d, r9d
	mov	edx, 64
	mov	r8d, 16385
	lea	rcx, Task_SpindashDustEffect[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, 20
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	call	VramMalloc
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	mov	rax, rsi
	mov	DWORD PTR 16[rbx], 55443456
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
