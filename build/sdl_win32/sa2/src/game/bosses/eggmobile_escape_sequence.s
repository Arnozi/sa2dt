	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_EggmobileEscape;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggmobileEscape
TaskDestructor_EggmobileEscape:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_EggmobileSwitchMovement;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggmobileSwitchMovement
Task_EggmobileSwitchMovement:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	sub	WORD PTR 128[rbx], 1
	jne	.L4
	cmp	BYTE PTR 130[rbx], 0
	je	.L6
.L5:
	lea	rax, Task_EggmobileMoveRight[rip]
	mov	QWORD PTR 40[rdx], rax
.L4:
	lea	rsi, 64[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L6:
	or	DWORD PTR 32[rbx], 1024
	or	DWORD PTR 96[rbx], 1024
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	Task_EggmobileMoveUp;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggmobileMoveUp
Task_EggmobileMoveUp:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	sub	WORD PTR 104[rbx], 2
	lea	rsi, 64[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	sub	WORD PTR 40[rbx], 2
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	cmp	WORD PTR 40[rbx], 50
	jg	.L7
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_EggmobileSwitchMovement[rip]
	mov	QWORD PTR 40[rax], rdx
.L7:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_EggmobileMoveRight;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggmobileMoveRight
Task_EggmobileMoveRight:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 102[rbx]
	cmp	ax, 456
	jle	.L10
	mov	ecx, 237
	call	m4aSongNumStop
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L10:
	add	eax, 2
	lea	rsi, 64[rbx]
	mov	WORD PTR 102[rbx], ax
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	add	WORD PTR 38[rbx], 2
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEggmobileEscapeSequence
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggmobileEscapeSequence
CreateEggmobileEscapeSequence:
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
	lea	rax, TaskDestructor_EggmobileEscape[rip]
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], rax
	mov	ebp, ecx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 136
	mov	r8d, 14336
	lea	rcx, Task_EggmobileMoveUp[rip]
	call	TaskCreate
	mov	ecx, 237
	mov	rbx, QWORD PTR 24[rax]
	call	m4aSongNumStart
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	edx, 9
	call	m4aMPlayFadeOutTemporarily
	mov	eax, 60
	mov	WORD PTR 102[rbx], bp
	mov	ecx, 8
	mov	WORD PTR 128[rbx], ax
	mov	WORD PTR 104[rbx], di
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 96[rbx], esi
	lea	rcx, 64[rbx]
	movzx	r12d, WORD PTR .LC1[rip]
	mov	WORD PTR 100[rbx], dx
	mov	QWORD PTR 72[rbx], rax
	mov	DWORD PTR 80[rbx], 41746432
	mov	DWORD PTR 106[rbx], 1600
	mov	WORD PTR 112[rbx], r12w
	mov	BYTE PTR 114[rbx], 16
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 120[rbx], -1
	call	UpdateSpriteAnimation
	mov	WORD PTR 38[rbx], bp
	mov	ecx, 36
	mov	WORD PTR 40[rbx], di
	call	VramMalloc
	xor	ecx, ecx
	mov	DWORD PTR 32[rbx], esi
	shr	esi, 10
	mov	WORD PTR 36[rbx], cx
	mov	rcx, rbx
	and	esi, 1
	mov	QWORD PTR 8[rbx], rax
	mov	DWORD PTR 16[rbx], 41680896
	mov	DWORD PTR 42[rbx], 1536
	mov	WORD PTR 48[rbx], r12w
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	call	UpdateSpriteAnimation
	mov	BYTE PTR 130[rbx], sil
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
