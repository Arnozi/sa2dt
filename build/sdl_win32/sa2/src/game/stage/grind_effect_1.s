	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_GrindEffect
	.def	Task_GrindEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_GrindEffect
Task_GrindEffect:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	QWORD PTR 152[rax], 0
	je	.L2
	mov	edx, DWORD PTR 36[rax]
	test	edx, 16777216
	je	.L2
	cmp	DWORD PTR 112[rax], 55
	je	.L8
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rcx, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rcx]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	ecx, WORD PTR 13[rax]
	sub	cx, WORD PTR [r8]
	mov	WORD PTR 38[rbx], cx
	movzx	ecx, WORD PTR 17[rax]
	movsx	ax, BYTE PTR 27[rax]
	sub	cx, WORD PTR 4[r8]
	add	eax, ecx
	mov	WORD PTR 40[rbx], ax
	mov	eax, DWORD PTR 32[rbx]
	mov	ecx, eax
	and	ah, -5
	or	ch, 4
	and	edx, 1
	cmove	eax, ecx
	mov	rcx, rbx
	mov	DWORD PTR 32[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_GrindEffect
	.def	TaskDestructor_GrindEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_GrindEffect
TaskDestructor_GrindEffect:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateGrindEffect
	.def	CreateGrindEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateGrindEffect
CreateGrindEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_GrindEffect[rip]
	xor	r9d, r9d
	mov	edx, 64
	mov	r8d, 8193
	lea	rcx, Task_GrindEffect[rip]
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
	mov	DWORD PTR 16[rbx], 55640064
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
