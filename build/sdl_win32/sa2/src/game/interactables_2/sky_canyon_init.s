	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_80808DC;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_80808DC
Task_80808DC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	cmp	WORD PTR 128[rbx], 0
	jne	.L5
.L2:
	xor	edx, edx
	cmp	WORD PTR 130[rbx], 0
	mov	WORD PTR 128[rbx], dx
	jne	.L6
	xor	eax, eax
	mov	WORD PTR 130[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L6:
	lea	rcx, 64[rbx]
	call	UpdateSpriteAnimation
	xor	eax, eax
	mov	WORD PTR 130[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80807CC
	.def	sub_80807CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80807CC
sub_80807CC:
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
	xor	r9d, r9d
	mov	r8d, 8193
	mov	edx, 136
	lea	rcx, Task_80808DC[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	movzx	ebp, WORD PTR .LC1[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	xor	eax, eax
	mov	WORD PTR 36[rbx], ax
	lea	rax, 77888[rdi]
	mov	rcx, rbx
	add	rdi, 76160
	mov	DWORD PTR 128[rbx], 0
	mov	DWORD PTR 42[rbx], 1152
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 8192
	mov	QWORD PTR 8[rbx], rax
	mov	DWORD PTR 16[rbx], 38666240
	mov	WORD PTR 48[rbx], bp
	call	UpdateSpriteAnimation
	xor	edx, edx
	mov	BYTE PTR 114[rbx], 16
	lea	rcx, 64[rbx]
	mov	WORD PTR 100[rbx], dx
	mov	DWORD PTR 106[rbx], 1152
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 120[rbx], -1
	mov	DWORD PTR 96[rbx], 8192
	mov	QWORD PTR 72[rbx], rdi
	mov	DWORD PTR 80[rbx], 38600704
	mov	WORD PTR 112[rbx], bp
	call	UpdateSpriteAnimation
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
