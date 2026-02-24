	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_MapEntity_Toggle_PlayerLayer;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MapEntity_Toggle_PlayerLayer
Task_MapEntity_Toggle_PlayerLayer:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	r9, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[rdx]
	movzx	ecx, BYTE PTR 12[rdx]
	mov	r8, QWORD PTR [rdx]
	movzx	edx, WORD PTR 10[rdx]
	sal	eax, 8
	mov	r10d, ecx
	lea	eax, [rax+rcx*8]
	movzx	ecx, BYTE PTR 1[r8]
	sal	edx, 8
	lea	edx, [rdx+rcx*8]
	mov	ecx, DWORD PTR 12[r11]
	sar	ecx, 8
	cmp	ecx, eax
	jl	.L2
	movzx	ebx, BYTE PTR 5[r8]
	lea	ebx, [rax+rbx*8]
	cmp	ecx, ebx
	jle	.L8
.L2:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [rcx]
	mov	r11d, DWORD PTR 4[rcx]
	sub	eax, -128
	cmp	eax, 682
	ja	.L5
	sub	edx, r11d
	sub	edx, -128
	cmp	edx, 496
	jbe	.L1
.L5:
	mov	rcx, r9
	mov	BYTE PTR [r8], r10b
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L1:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	mov	ecx, DWORD PTR 16[r11]
	sar	ecx, 8
	cmp	ecx, edx
	jl	.L2
	movzx	ebx, BYTE PTR 6[r8]
	lea	ebx, [rdx+rbx*8]
	cmp	ecx, ebx
	jg	.L2
	movzx	ebx, BYTE PTR 60[r11]
	mov	ecx, ebx
	or	ecx, 1
	cmp	BYTE PTR 2[r8], 0
	jne	.L4
	and	ebx, -2
	mov	ecx, ebx
.L4:
	and	DWORD PTR 36[r11], -16777217
	mov	BYTE PTR 60[r11], cl
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_PlayerLayer
	.def	CreateEntity_Toggle_PlayerLayer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_PlayerLayer
CreateEntity_Toggle_PlayerLayer:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8192
	lea	rcx, Task_MapEntity_Toggle_PlayerLayer[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
