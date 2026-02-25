	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_BrakingDustEffectRelated
	.def	TaskDestructor_BrakingDustEffectRelated;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_BrakingDustEffectRelated
TaskDestructor_BrakingDustEffectRelated:
	.seh_endprologue
	mov	QWORD PTR gDustEffectBrakingTask[rip+8], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_BrakingDustEffectRelated
	.def	Task_BrakingDustEffectRelated;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BrakingDustEffectRelated
Task_BrakingDustEffectRelated:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_BrakingDustEffect
	.def	Task_BrakingDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BrakingDustEffect
Task_BrakingDustEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	cmp	QWORD PTR gDustEffectBrakingTask[rip+8], 0
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	je	.L5
	test	BYTE PTR 41[rbx], 64
	je	.L6
.L5:
	add	BYTE PTR gDustEffectBrakingTask[rip], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, DWORD PTR [rbx]
	lea	rsi, 8[rbx]
	mov	rcx, rsi
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm2, eax
	psubw	xmm0, xmm2
	movd	DWORD PTR 46[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movd	xmm0, DWORD PTR [rbx]
	movd	xmm1, DWORD PTR 4[rbx]
	paddw	xmm0, xmm1
	movd	DWORD PTR [rbx], xmm0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_BrakingDustEffect
	.def	TaskDestructor_BrakingDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_BrakingDustEffect
TaskDestructor_BrakingDustEffect:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	cmp	WORD PTR 26[rax], 872
	je	.L9
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rcx, QWORD PTR 16[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateBrakingDustEffect
	.def	CreateBrakingDustEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBrakingDustEffect
CreateBrakingDustEffect:
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
	mov	rsi, QWORD PTR gDustEffectBrakingTask[rip+8]
	mov	ebp, ecx
	mov	edi, edx
	test	rsi, rsi
	je	.L10
	movzx	eax, BYTE PTR gDustEffectBrakingTask[rip]
	xor	esi, esi
	test	al, al
	je	.L10
	sub	eax, 1
	xor	r9d, r9d
	mov	r8d, 16385
	mov	edx, 72
	mov	BYTE PTR gDustEffectBrakingTask[rip], al
	lea	rax, TaskDestructor_BrakingDustEffect[rip]
	lea	rcx, Task_BrakingDustEffect[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR [rbx], bp
	mov	WORD PTR 2[rbx], di
	mov	DWORD PTR 4[rbx], 0
	test	BYTE PTR 39[rax], 8
	jne	.L19
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	ecx, 848
	mov	BYTE PTR 56[rbx], 0
	mov	WORD PTR 26[rbx], cx
	add	rax, 74496
	mov	QWORD PTR 16[rbx], rax
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 3072
	or	ah, 32
.L13:
	mov	DWORD PTR 40[rbx], eax
	mov	edx, 4351
	xor	eax, eax
	mov	WORD PTR 24[rbx], ax
	mov	DWORD PTR 50[rbx], 512
	mov	WORD PTR 57[rbx], dx
	mov	BYTE PTR 61[rbx], 0
.L10:
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	ecx, 15
	call	VramMalloc
	mov	r8d, 872
	mov	BYTE PTR 56[rbx], 0
	mov	QWORD PTR 16[rbx], rax
	mov	eax, 9216
	mov	WORD PTR 26[rbx], r8w
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	CreateBrakingDustEffectRelatedTask
	.def	CreateBrakingDustEffectRelatedTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBrakingDustEffectRelatedTask
CreateBrakingDustEffectRelatedTask:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	cmp	QWORD PTR gDustEffectBrakingTask[rip+8], 0
	je	.L22
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	lea	rax, TaskDestructor_BrakingDustEffectRelated[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	xor	edx, edx
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_BrakingDustEffectRelated[rip]
	call	TaskCreate
	mov	BYTE PTR gDustEffectBrakingTask[rip], 20
	mov	QWORD PTR gDustEffectBrakingTask[rip+8], rax
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	DestroyBrakingDustEffectRelatedTask
	.def	DestroyBrakingDustEffectRelatedTask;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyBrakingDustEffectRelatedTask
DestroyBrakingDustEffectRelatedTask:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR gDustEffectBrakingTask[rip+8]
	test	rcx, rcx
	je	.L23
	call	TaskDestroy
	mov	QWORD PTR gDustEffectBrakingTask[rip+8], 0
.L23:
	add	rsp, 40
	ret
	.seh_endproc
	.globl	gDustEffectBrakingTask
	.bss
	.align 8
gDustEffectBrakingTask:
	.space 16
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
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
