	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_StagePaletteLoader;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StagePaletteLoader
Task_StagePaletteLoader:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	call	UpdateSpriteAnimation_BG
	test	eax, eax
	je	.L4
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreatePaletteLoaderTask
	.def	CreatePaletteLoaderTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreatePaletteLoaderTask
CreatePaletteLoaderTask:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 32[rsp], r9
	mov	esi, edx
	mov	ebx, r8d
	xor	r9d, r9d
	movzx	r8d, cx
	mov	edx, 64
	lea	rcx, Task_StagePaletteLoader[rip]
	call	TaskCreate
	xor	edx, edx
	mov	r8d, 4351
	xor	r9d, r9d
	mov	rcx, QWORD PTR 24[rax]
	mov	QWORD PTR 8[rcx], 0
	mov	WORD PTR 16[rcx], dx
	mov	WORD PTR 18[rcx], si
	mov	BYTE PTR 48[rcx], bl
	mov	WORD PTR 49[rcx], r8w
	mov	BYTE PTR 53[rcx], 0
	mov	DWORD PTR 56[rcx], -1
	mov	QWORD PTR 32[rcx], 0
	mov	DWORD PTR 40[rcx], 0
	mov	WORD PTR 44[rcx], r9w
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation_BG;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
