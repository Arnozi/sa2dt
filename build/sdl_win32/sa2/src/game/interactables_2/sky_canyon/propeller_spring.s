	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable085;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable085
TaskDestructor_Interactable085:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_807C558.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807C558.isra.0
sub_807C558.isra.0:
	.seh_endprologue
	sar	r8w, 8
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCurTask[rip]
	sar	r9w, 8
	add	r8d, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	add	r9d, edx
	mov	rcx, QWORD PTR [rcx]
	sub	r8w, WORD PTR [rax]
	sub	r9w, WORD PTR 4[rax]
	mov	rcx, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rcx]
	mov	rcx, QWORD PTR 24[rcx]
	mov	WORD PTR 38[rcx], r8w
	mov	WORD PTR 40[rcx], r9w
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Interactable085;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable085
Task_Interactable085:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rsi]
	mov	ebp, DWORD PTR 4[rdi]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	edx, BYTE PTR 93[rbx]
	mov	r10d, DWORD PTR 80[rbx]
	mov	r11d, DWORD PTR 84[rbx]
	lea	rax, 0[0+rdx*4]
	add	edx, 2
	and	eax, 1020
	mov	BYTE PTR 93[rbx], dl
	mov	edx, DWORD PTR [rdi]
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 6
	add	eax, eax
	mov	WORD PTR 90[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L5
	cmp	WORD PTR 22[rax], 0
	jle	.L5
	movzx	r8d, WORD PTR 13[rax]
	mov	r9d, r10d
	sub	r9d, edx
	movsx	r9d, r9w
	sub	r8d, edx
	movsx	r8d, r8w
	lea	r12d, -20[r9]
	cmp	r12d, r8d
	jg	.L5
	add	r9d, 20
	cmp	r8d, r9d
	jg	.L5
	movzx	r8d, WORD PTR 17[rax]
	mov	r9d, r11d
	sub	r9d, ebp
	movsx	r9d, r9w
	sub	r8d, ebp
	movsx	r8d, r8w
	lea	r12d, -12[r9]
	cmp	r12d, r8d
	jg	.L5
	add	r9d, 12
	cmp	r8d, r9d
	jle	.L8
	.p2align 4,,10
	.p2align 3
.L5:
	mov	eax, r10d
	sub	eax, edx
	sub	ax, -128
	cmp	ax, 682
	ja	.L6
	mov	eax, r11d
	sub	eax, ebp
	sub	ax, -128
	cmp	ax, 496
	ja	.L6
	mov	rax, QWORD PTR [rcx]
	mov	edx, r11d
	mov	ecx, r10d
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 40[rax]
	mov	rax, QWORD PTR 24[rax]
	add	WORD PTR 128[rax], 1
	movzx	r9d, WORD PTR 90[rbx]
	movzx	r8d, WORD PTR 88[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_807C558.isra.0
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L8:
	xor	ecx, ecx
	mov	BYTE PTR 117[rax], 26
	mov	edx, -1408
	mov	WORD PTR 92[rbx], cx
	mov	ecx, 284
	mov	WORD PTR 22[rax], dx
	call	m4aSongNumStart
	mov	rcx, QWORD PTR [rsi]
	lea	rax, sub_807C2E0[rip]
	mov	r10d, DWORD PTR 80[rbx]
	mov	r11d, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR [rdi]
	mov	QWORD PTR 40[rcx], rax
	mov	ebp, DWORD PTR 4[rdi]
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	sub_807C360;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807C360
sub_807C360:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	movzx	ecx, BYTE PTR 93[rax]
	lea	edx, 8[rcx]
	mov	BYTE PTR 93[rax], dl
	cmp	dl, -128
	je	.L13
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	rcx, 0[0+rdx*4]
	and	ecx, 1020
	movzx	ecx, WORD PTR [r9+rcx*2]
	sar	cx, 6
	lea	ecx, [rcx+rcx*2]
	cmp	dl, -128
	ja	.L14
	mov	WORD PTR 90[rax], cx
.L11:
	mov	rdx, QWORD PTR [r8]
	mov	ecx, DWORD PTR 80[rax]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR 40[rdx]
	mov	rdx, QWORD PTR 24[rdx]
	add	WORD PTR 128[rdx], 1
	mov	edx, DWORD PTR 84[rax]
	movzx	r9d, WORD PTR 90[rax]
	movzx	r8d, WORD PTR 88[rax]
	jmp	sub_807C558.isra.0
	.p2align 4,,10
	.p2align 3
.L14:
	add	ecx, ecx
	mov	WORD PTR 90[rax], cx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	lea	rcx, Task_Interactable085[rip]
	mov	DWORD PTR 88[rax], 0
	mov	BYTE PTR 93[rax], 0
	mov	QWORD PTR 40[r8], rcx
	jmp	.L11
	.seh_endproc
	.p2align 4
	.def	sub_807C6E4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807C6E4
sub_807C6E4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rcx, QWORD PTR [rax]
	movzx	edx, WORD PTR 102[rdx]
	and	dx, WORD PTR [r8]
	mov	rax, QWORD PTR 24[rcx]
	je	.L16
	movzx	edx, BYTE PTR 92[rax]
	test	dl, 2
	je	.L23
.L16:
	cmp	BYTE PTR 93[rax], -1
	jne	.L18
	mov	BYTE PTR 93[rax], 0
.L19:
	mov	rdx, QWORD PTR [rcx]
	mov	ecx, DWORD PTR 80[rax]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR 40[rdx]
	mov	rdx, QWORD PTR 24[rdx]
	add	WORD PTR 128[rdx], 1
	mov	edx, DWORD PTR 84[rax]
	movzx	r9d, WORD PTR 90[rax]
	movzx	r8d, WORD PTR 88[rax]
	jmp	sub_807C558.isra.0
	.p2align 4,,10
	.p2align 3
.L18:
	lea	rdx, sub_807C744[rip]
	mov	BYTE PTR 93[rax], 64
	mov	QWORD PTR 40[rcx], rdx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L23:
	mov	r9d, edx
	mov	r8d, edx
	and	r9d, -2
	or	r8d, 1
	or	r9d, 2
	and	edx, 1
	mov	edx, r9d
	cmove	edx, r8d
	mov	BYTE PTR 92[rax], dl
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	sub_807C2E0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807C2E0
sub_807C2E0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r9]
	movzx	r8d, BYTE PTR 93[rax]
	lea	ecx, 0[0+r8*4]
	mov	edx, r8d
	movsx	rcx, ecx
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	r10, QWORD PTR .refptr.gPlayerControls[rip]
	sar	cx, 6
	sal	ecx, 4
	mov	WORD PTR 90[rax], cx
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	movzx	ecx, WORD PTR 102[rcx]
	and	cx, WORD PTR [r10]
	je	.L25
	or	BYTE PTR 92[rax], 2
.L25:
	mov	ecx, 64
	sub	ecx, r8d
	mov	r8d, ecx
	sar	r8d, 2
	cmp	ecx, 15
	jle	.L26
	lea	ecx, [rdx+r8]
	add	edx, 6
	cmp	r8d, 6
	cmovle	edx, ecx
	mov	BYTE PTR 93[rax], dl
.L28:
	mov	rdx, QWORD PTR [r9]
	mov	ecx, DWORD PTR 80[rax]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR 40[rdx]
	mov	rdx, QWORD PTR 24[rdx]
	add	WORD PTR 128[rdx], 1
	mov	edx, DWORD PTR 84[rax]
	movzx	r9d, WORD PTR 90[rax]
	movzx	r8d, WORD PTR 88[rax]
	jmp	sub_807C558.isra.0
	.p2align 4,,10
	.p2align 3
.L26:
	add	edx, 4
	cmp	dl, 63
	jbe	.L33
	lea	rdx, sub_807C6E4[rip]
	mov	BYTE PTR 93[rax], 0
	mov	QWORD PTR 40[r9], rdx
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L33:
	mov	BYTE PTR 93[rax], dl
	jmp	.L28
	.seh_endproc
	.p2align 4
	.def	sub_807C744;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807C744
sub_807C744:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	movzx	ecx, BYTE PTR 93[rax]
	lea	rdx, 0[0+rcx*4]
	and	edx, 1020
	movzx	edx, WORD PTR [r9+rdx*2]
	mov	r9, QWORD PTR .refptr.gPlayerControls[rip]
	sar	dx, 6
	sal	edx, 4
	mov	WORD PTR 90[rax], dx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, WORD PTR 102[rdx]
	and	dx, WORD PTR [r9]
	je	.L35
	movzx	edx, BYTE PTR 92[rax]
	test	dl, 2
	je	.L42
.L35:
	add	cl, 8
	js	.L37
.L43:
	mov	BYTE PTR 93[rax], cl
.L38:
	mov	rdx, QWORD PTR [r8]
	mov	ecx, DWORD PTR 80[rax]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR 40[rdx]
	mov	rdx, QWORD PTR 24[rdx]
	add	WORD PTR 128[rdx], 1
	mov	edx, DWORD PTR 84[rax]
	movzx	r9d, WORD PTR 90[rax]
	movzx	r8d, WORD PTR 88[rax]
	jmp	sub_807C558.isra.0
	.p2align 4,,10
	.p2align 3
.L42:
	mov	r10d, edx
	mov	r9d, edx
	and	r10d, -2
	or	r9d, 1
	or	r10d, 2
	and	edx, 1
	mov	edx, r10d
	cmove	edx, r9d
	mov	BYTE PTR 92[rax], dl
	add	cl, 8
	jns	.L43
.L37:
	lea	rcx, sub_807C360[rip]
	mov	BYTE PTR 93[rax], -128
	mov	QWORD PTR 40[r8], rcx
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_PropellerSpring
	.def	CreateEntity_PropellerSpring;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_PropellerSpring
CreateEntity_PropellerSpring:
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
	lea	rax, TaskDestructor_Interactable085[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	esi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_Interactable085[rip]
	call	TaskCreate
	movzx	ecx, BYTE PTR [rbx]
	movzx	edx, bp
	sal	edx, 5
	mov	rax, QWORD PTR 24[rax]
	add	edx, ecx
	mov	r8d, ecx
	movzx	ecx, di
	sal	edx, 3
	sal	ecx, 5
	mov	DWORD PTR 80[rax], edx
	movzx	edx, BYTE PTR 1[rbx]
	mov	DWORD PTR 88[rax], 0
	add	edx, ecx
	mov	ecx, esi
	mov	BYTE PTR 93[rax], 0
	sal	edx, 3
	mov	WORD PTR 8[rax], bp
	mov	DWORD PTR 84[rax], edx
	movzx	edx, r8b
	mov	dh, cl
	mov	WORD PTR 10[rax], di
	mov	QWORD PTR [rax], rbx
	mov	WORD PTR 12[rax], dx
	mov	BYTE PTR [rbx], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
