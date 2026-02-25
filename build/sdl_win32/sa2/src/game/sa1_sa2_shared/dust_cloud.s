	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_CreateDustCloud;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CreateDustCloud
Task_CreateDustCloud:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	movd	xmm6, DWORD PTR 38[rbx]
	sal	eax, 16
	mov	rcx, rbx
	or	eax, edx
	movd	xmm1, eax
	movdqu	xmm0, xmm6
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	test	eax, eax
	je	.L4
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	call	DisplaySprite
	mov	rcx, QWORD PTR [rsi]
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateDustCloud
	.def	CreateDustCloud;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateDustCloud
CreateDustCloud:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	mov	esi, ecx
	mov	ebx, edx
	lea	rcx, Task_CreateDustCloud[rip]
	mov	edx, 64
	call	TaskCreate
	mov	ecx, -256
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 40[rax], bx
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 38[rax], si
	lea	rdx, 69632[rbx]
	mov	DWORD PTR 16[rax], 31260672
	mov	QWORD PTR 8[rax], rdx
	xor	edx, edx
	mov	WORD PTR 36[rax], dx
	mov	DWORD PTR 42[rax], 960
	mov	WORD PTR 48[rax], cx
	mov	BYTE PTR 50[rax], 16
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
