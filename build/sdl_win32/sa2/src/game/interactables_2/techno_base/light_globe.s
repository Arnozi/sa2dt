	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable080;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable080
TaskDestructor_Interactable080:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Interactable080;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable080
Task_Interactable080:
	push	r13
	.seh_pushreg	r13
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	r9d, DWORD PTR 4[rsi]
	mov	r10d, DWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r11d, DWORD PTR 84[rbx]
	mov	r8d, DWORD PTR 80[rbx]
	movsx	edx, BYTE PTR 91[rbx]
	mov	eax, r11d
	mov	ecx, r8d
	sub	eax, r9d
	sub	ecx, r10d
	add	edx, eax
	movsx	eax, BYTE PTR 89[rbx]
	add	eax, ecx
	mov	ecx, eax
	test	BYTE PTR 36[rbp], -128
	jne	.L4
	mov	r13d, DWORD PTR 12[rbp]
	mov	r12d, DWORD PTR 16[rbp]
	sar	r13d, 8
	sar	r12d, 8
	sub	r13d, r10d
	sub	eax, r13d
	mov	r13d, r12d
	mov	r12d, edx
	sub	r13d, r9d
	cwde
	sub	r12d, r13d
	imul	eax, eax
	movsx	r12d, r12w
	imul	r12d, r12d
	add	eax, r12d
	cmp	eax, 576
	jle	.L7
.L4:
	sub	cx, -128
	cmp	cx, 682
	ja	.L5
	sub	dx, -128
	cmp	dx, 624
	ja	.L5
	xor	eax, eax
	movzx	ecx, WORD PTR 92[rbx]
	sub	r8d, r10d
	lea	rsi, 16[rbx]
	mov	WORD PTR 88[rbx], ax
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	mov	rdx, rcx
	mov	WORD PTR 54[rbx], r8w
	movzx	eax, WORD PTR [rax+rcx*2]
	add	edx, 16
	and	dx, 1023
	mov	ecx, eax
	sar	ax, 14
	mov	WORD PTR 92[rbx], dx
	add	eax, r11d
	sar	cx, 6
	sub	eax, r9d
	mov	WORD PTR 90[rbx], cx
	mov	rcx, rsi
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	mov	edx, 14
	mov	ecx, 600
	mov	WORD PTR 117[rbp], dx
	mov	WORD PTR 34[rbx], cx
	mov	ecx, 297
	mov	BYTE PTR 64[rbx], 1
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	r11d, DWORD PTR 84[rbx]
	lea	rdx, sub_807B3B0[rip]
	mov	r9d, DWORD PTR 4[rsi]
	mov	r8d, DWORD PTR 80[rbx]
	mov	r10d, DWORD PTR [rsi]
	movsx	ecx, BYTE PTR 89[rbx]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, r11d
	movsx	edx, BYTE PTR 91[rbx]
	sub	eax, r9d
	add	edx, eax
	mov	eax, r8d
	sub	eax, r10d
	add	ecx, eax
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	sub_807B3B0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807B3B0
sub_807B3B0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	test	BYTE PTR 49[rax], 64
	je	.L9
	mov	rdx, QWORD PTR [rax]
	movzx	eax, BYTE PTR 12[rax]
	mov	BYTE PTR [rdx], al
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L9:
	movzx	edx, WORD PTR 84[rax]
	movzx	ecx, WORD PTR 80[rax]
	lea	rbx, 16[rax]
	movd	xmm1, DWORD PTR 88[rax]
	sal	edx, 16
	or	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	psraw	xmm1, 8
	movd	xmm0, edx
	movzx	edx, WORD PTR 4[rcx]
	movzx	ecx, WORD PTR [rcx]
	sal	edx, 16
	or	edx, ecx
	mov	rcx, rbx
	movd	xmm2, edx
	psubw	xmm0, xmm2
	paddw	xmm0, xmm1
	movd	DWORD PTR 54[rax], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_LightGlobe
	.def	CreateEntity_LightGlobe;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_LightGlobe
CreateEntity_LightGlobe:
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
	lea	rax, TaskDestructor_Interactable080[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r12d, edx
	mov	ebp, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_Interactable080[rip]
	call	TaskCreate
	mov	r8d, 4351
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 92[rbx], ax
	movzx	eax, r12w
	mov	DWORD PTR 88[rbx], 0
	movzx	edx, BYTE PTR [rsi]
	sal	eax, 5
	add	eax, edx
	mov	ecx, edx
	movzx	edx, bp
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 80[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	WORD PTR 8[rbx], r12w
	add	eax, edx
	mov	edx, edi
	mov	WORD PTR 10[rbx], bp
	sal	eax, 3
	mov	QWORD PTR [rbx], rsi
	mov	DWORD PTR 84[rbx], eax
	movzx	eax, cl
	xor	ecx, ecx
	mov	ah, dl
	xor	edx, edx
	mov	WORD PTR 52[rbx], cx
	mov	ecx, 9
	mov	WORD PTR 12[rbx], ax
	mov	WORD PTR 32[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 65[rbx], r8w
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r9d, 600
	mov	BYTE PTR 64[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r9w
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
