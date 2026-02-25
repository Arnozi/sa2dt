	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8076928;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8076928
sub_8076928:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 36[rax]
	mov	r10, QWORD PTR 24[rdx]
	test	cl, -128
	jne	.L17
	cmp	WORD PTR 48[rax], 120
	je	.L20
	mov	r8d, DWORD PTR [r10]
	mov	ebx, DWORD PTR 4[r10]
	mov	r9d, DWORD PTR 12[rax]
	lea	ecx, 24[rbx]
	sal	r8d, 8
	sal	ecx, 8
	cmp	r9d, r8d
	je	.L5
	jle	.L6
	add	r9d, -128
	mov	DWORD PTR 12[rax], r9d
	cmp	r9d, r8d
	jge	.L8
.L7:
	mov	ebx, DWORD PTR 16[rax]
	mov	DWORD PTR 12[rax], r8d
	mov	r9d, r8d
	cmp	ecx, ebx
	je	.L14
.L15:
	movzx	r11d, WORD PTR 22[rax]
	add	r11d, 42
	mov	WORD PTR 22[rax], r11w
	movsx	r11d, r11w
	add	r11d, ebx
	cmp	r11d, ecx
	jg	.L11
	mov	DWORD PTR 16[rax], r11d
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L20:
	and	ecx, -4194305
	mov	DWORD PTR 36[rax], ecx
.L17:
	lea	rax, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rdx], rax
.L1:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	sub	r9d, -128
	mov	DWORD PTR 12[rax], r9d
	cmp	r9d, r8d
	jg	.L7
.L8:
	mov	r11d, r9d
	sub	r11d, r8d
	add	r11d, 2048
	cmp	r11d, 4096
	jbe	.L21
.L9:
	cmp	r8d, r9d
	jne	.L1
	cmp	DWORD PTR 16[rax], ecx
	jne	.L1
.L14:
	xor	eax, eax
	mov	WORD PTR 14[r10], ax
	lea	rax, Task_8076DE8[rip]
	mov	QWORD PTR 40[rdx], rax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	ebx, DWORD PTR 16[rax]
	cmp	ecx, ebx
	jne	.L15
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L11:
	mov	DWORD PTR 16[rax], ecx
.L10:
	cmp	r8d, r9d
	je	.L14
	pop	rbx
	ret
.L21:
	mov	ebx, DWORD PTR 16[rax]
	cmp	ebx, ecx
	jne	.L15
	jmp	.L10
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_GermanFlute;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_GermanFlute
TaskDestructor_GermanFlute:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_8076DE8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8076DE8
Task_8076DE8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rsi]
	mov	eax, DWORD PTR 36[rdx]
	mov	rbx, QWORD PTR 24[rcx]
	test	al, -128
	je	.L24
	lea	r10, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rcx], r10
.L24:
	cmp	WORD PTR 48[rdx], 120
	jne	.L25
	and	eax, -4194305
	mov	DWORD PTR 36[rdx], eax
	lea	rax, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rcx], rax
.L25:
	movzx	eax, WORD PTR 14[rbx]
	add	eax, 1
	mov	WORD PTR 14[rbx], ax
	cmp	ax, 31
	je	.L30
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	xor	ecx, ecx
	mov	eax, 58
	xor	r8d, r8d
	mov	r9d, 30
	mov	WORD PTR 20[rdx], cx
	movzx	ecx, WORD PTR 12[rbx]
	mov	WORD PTR 108[rdx], ax
	lea	rax, sFluteUpdraft[rip]
	movzx	eax, WORD PTR [rax+rcx*2]
	mov	ecx, DWORD PTR [rbx]
	neg	eax
	mov	WORD PTR 22[rdx], ax
	mov	eax, DWORD PTR 4[rbx]
	mov	WORD PTR 14[rbx], r8w
	xor	r8d, r8d
	mov	DWORD PTR 48[rsp], 3
	lea	edx, 24[rax]
	mov	DWORD PTR 40[rsp], 192
	mov	DWORD PTR 32[rsp], 0
	call	CreateAngledNoteParticle
	movzx	edx, WORD PTR 12[rbx]
	lea	rax, sFluteSfx[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_80769E0[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80769E0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80769E0
sub_80769E0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	eax, DWORD PTR 36[rbx]
	mov	rdi, QWORD PTR 24[rdx]
	test	al, -128
	je	.L32
	lea	rcx, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rdx], rcx
.L32:
	cmp	WORD PTR 48[rbx], 120
	jne	.L33
	and	eax, -4194305
	mov	DWORD PTR 36[rbx], eax
	lea	rax, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rdx], rax
.L33:
	movsx	ecx, WORD PTR 22[rbx]
	mov	edx, DWORD PTR 12[rbx]
	mov	r9d, -8
	movzx	r8d, BYTE PTR 60[rbx]
	mov	eax, ecx
	add	ecx, DWORD PTR 16[rbx]
	sar	edx, 8
	add	eax, 42
	mov	DWORD PTR 16[rbx], ecx
	sar	ecx, 8
	mov	WORD PTR 22[rbx], ax
	movsx	eax, BYTE PTR 27[rbx]
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L34
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
.L34:
	cmp	WORD PTR 22[rbx], 0
	js	.L31
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 10[rdi], ax
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 14[rdi], dx
	lea	rdi, Task_8076A6C[rip]
	mov	QWORD PTR 40[rax], rdi
.L31:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_GermanFlute;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GermanFlute
Task_GermanFlute:
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
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	edx, DWORD PTR 0[rbp]
	mov	r13d, DWORD PTR 4[rbp]
	mov	rsi, QWORD PTR 24[rax]
	mov	r10d, edx
	mov	r9d, r13d
	mov	ecx, DWORD PTR [rsi]
	mov	r11d, DWORD PTR 4[rsi]
	mov	eax, ecx
	mov	r8d, r11d
	test	BYTE PTR 36[rbx], -128
	jne	.L40
	lea	r12d, 20[rdx]
	sub	ecx, r12d
	movzx	r12d, WORD PTR 13[rbx]
	sub	r12d, edx
	cmp	cx, r12w
	jle	.L49
	.p2align 4,,10
	.p2align 3
.L40:
	add	ax, 132
	sub	eax, r10d
	cmp	ax, 690
	ja	.L41
	lea	eax, 128[r8]
	sub	eax, r9d
	cmp	ax, 496
	ja	.L41
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	mov	rax, QWORD PTR 16[rsi]
	movzx	edx, BYTE PTR 24[rsi]
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
.L49:
	lea	edx, 16[r13]
	movsx	ecx, cx
	movsx	r12d, r12w
	sub	r11d, edx
	movzx	edx, WORD PTR 17[rbx]
	add	ecx, 39
	sub	edx, r13d
	cmp	ecx, r12d
	jl	.L40
	cmp	r11w, dx
	jg	.L40
	movsx	r11d, r11w
	movsx	edx, dx
	add	r11d, 31
	cmp	r11d, edx
	jl	.L40
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	rcx, rbx
	mov	edx, 14
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 4
	mov	ecx, 109
	mov	WORD PTR 26[rbx], ax
	or	DWORD PTR 36[rbx], 4194304
	mov	WORD PTR 108[rbx], dx
	call	m4aSongNumStart
	mov	eax, DWORD PTR 4[rsi]
	xor	ecx, ecx
	movzx	r9d, WORD PTR 4[rbp]
	mov	WORD PTR 24[rbx], cx
	movzx	r10d, WORD PTR 0[rbp]
	sub	eax, 8
	mov	DWORD PTR 20[rbx], 0
	sal	eax, 8
	mov	DWORD PTR 16[rbx], eax
	mov	rax, QWORD PTR [rdi]
	lea	rbx, sub_8076928[rip]
	movzx	r8d, WORD PTR 4[rsi]
	mov	QWORD PTR 40[rax], rbx
	movzx	eax, WORD PTR [rsi]
	jmp	.L40
	.seh_endproc
	.p2align 4
	.def	Task_8076A6C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8076A6C
Task_8076A6C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	eax, DWORD PTR 36[rbx]
	mov	rdi, QWORD PTR 24[rdx]
	test	al, -128
	je	.L51
	lea	rcx, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rdx], rcx
.L51:
	cmp	WORD PTR 48[rbx], 120
	jne	.L52
	and	eax, -4194305
	mov	DWORD PTR 36[rbx], eax
	lea	rax, Task_GermanFlute[rip]
	mov	QWORD PTR 40[rdx], rax
.L52:
	movsx	eax, WORD PTR 8[rdi]
	mov	edx, DWORD PTR 12[rbx]
	xor	ecx, ecx
	mov	r9d, -8
	mov	r8d, DWORD PTR 16[rbx]
	sub	edx, eax
	movsx	eax, WORD PTR 10[rdi]
	mov	DWORD PTR 12[rbx], edx
	sar	edx, 8
	sub	r8d, eax
	movzx	eax, BYTE PTR 14[rdi]
	mov	WORD PTR 8[rdi], cx
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	eax, 2
	cdqe
	movzx	ecx, WORD PTR [rcx+rax*2]
	sar	cx, 6
	sal	ecx, 3
	mov	WORD PTR 10[rdi], cx
	movsx	ecx, cx
	movsx	eax, BYTE PTR 27[rbx]
	add	ecx, r8d
	movzx	r8d, BYTE PTR 60[rbx]
	mov	DWORD PTR 16[rbx], ecx
	sar	ecx, 8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L53
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
.L53:
	movzx	ecx, WORD PTR 14[rdi]
	movzx	eax, WORD PTR 100[rbx]
	mov	edx, DWORD PTR 12[rbx]
	lea	r8d, 1[rcx]
	mov	WORD PTR 14[rdi], r8w
	test	al, 16
	je	.L54
	sub	edx, -128
	and	DWORD PTR 36[rbx], -2
	mov	DWORD PTR 12[rbx], edx
.L54:
	test	al, 32
	je	.L55
	add	edx, -128
	or	DWORD PTR 36[rbx], 1
	mov	DWORD PTR 12[rbx], edx
.L55:
	mov	eax, DWORD PTR [rdi]
	sub	eax, 16
	sal	eax, 8
	cmp	eax, edx
	jg	.L56
	add	eax, 8192
	cmp	eax, edx
	jl	.L56
.L57:
	add	ecx, 2
	mov	WORD PTR 14[rdi], cx
	cmp	r8w, 179
	jbe	.L50
	mov	rax, QWORD PTR [rsi]
	and	DWORD PTR 36[rbx], -4194305
	lea	rsi, Task_GermanFlute[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	DWORD PTR 20[rbx], 0
	mov	QWORD PTR 40[rax], rsi
.L50:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	mov	eax, 14
	lea	rdx, Task_GermanFlute[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], ax
	mov	rax, QWORD PTR [rsi]
	and	DWORD PTR 36[rbx], -4194305
	mov	DWORD PTR 20[rbx], 0
	mov	QWORD PTR 40[rax], rdx
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GermanFlute
	.def	CreateEntity_GermanFlute;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GermanFlute
CreateEntity_GermanFlute:
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
	lea	rax, TaskDestructor_GermanFlute[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebp, r9d
	mov	ebx, edx
	mov	edi, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	movzx	ebx, bx
	mov	edx, 32
	lea	rcx, Task_GermanFlute[rip]
	sal	ebx, 5
	movzx	edi, di
	call	TaskCreate
	movzx	edx, BYTE PTR [rsi]
	sal	edi, 5
	mov	rax, QWORD PTR 24[rax]
	add	ebx, edx
	mov	ecx, edx
	lea	edx, 4[0+rbx*8]
	mov	ebx, ebp
	mov	DWORD PTR [rax], edx
	movzx	edx, BYTE PTR 1[rsi]
	mov	DWORD PTR 8[rax], 0
	add	edi, edx
	movsx	dx, BYTE PTR 3[rsi]
	mov	QWORD PTR 16[rax], rsi
	sal	edi, 3
	mov	WORD PTR 12[rax], dx
	movzx	edx, cl
	mov	dh, bl
	mov	DWORD PTR 4[rax], edi
	mov	WORD PTR 24[rax], dx
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
sFluteSfx:
	.word	326
	.word	327
	.word	328
	.word	329
	.align 8
sFluteUpdraft:
	.word	1792
	.word	2048
	.word	2304
	.word	2560
	.ident	"GCC: (GNU) 13-win32"
	.def	CreateAngledNoteParticle;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
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
