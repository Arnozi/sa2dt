	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_BulletBuzzerMain
	.def	Task_BulletBuzzerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BulletBuzzerMain
Task_BulletBuzzerMain:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 104[rbx]
	mov	r14d, DWORD PTR 96[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	lea	edx, 1[rax]
	mov	eax, edx
	and	edx, 1023
	and	ax, 1023
	mov	DWORD PTR 104[rbx], edx
	lea	edx, [rax+rax*4]
	lea	eax, [rax+rax*2]
	and	edx, 1023
	and	eax, 1023
	movsx	esi, WORD PTR 512[rcx+rdx*2]
	movzx	edx, BYTE PTR 110[rbx]
	movsx	edi, WORD PTR [rcx+rax*2]
	movzx	eax, BYTE PTR 111[rbx]
	mov	rcx, r12
	imul	esi, edx
	imul	edi, eax
	sar	esi, 6
	sar	edi, 6
	mov	DWORD PTR 96[rbx], esi
	add	esi, DWORD PTR 88[rbx]
	sar	esi, 8
	mov	DWORD PTR 100[rbx], edi
	add	edi, DWORD PTR 92[rbx]
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR [r15]
	mov	edx, esi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[r15]
	mov	r8d, edi
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L19
	cmp	BYTE PTR 112[rbx], 0
	mov	eax, DWORD PTR 96[rbx]
	je	.L3
	cmp	eax, r14d
	jg	.L18
.L4:
	cmp	eax, r14d
	movzx	eax, BYTE PTR 114[rbx]
	setle	BYTE PTR 112[rbx]
	test	al, al
	je	.L5
	sub	eax, 1
	mov	BYTE PTR 114[rbx], al
.L5:
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r15]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L6
	add	edx, -128
	cmp	eax, edx
	jge	.L21
.L6:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L8
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L7
.L8:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L19:
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L3:
	cmp	eax, r14d
	jge	.L4
.L18:
	mov	r9d, 505
	mov	r10d, -255
	mov	WORD PTR 34[rbx], r9w
	mov	WORD PTR 64[rbx], r10w
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L21:
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r15]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L6
	add	edx, -128
	cmp	eax, edx
	jl	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, WORD PTR 13[rax]
	movzx	ecx, WORD PTR 17[rax]
	sub	edx, esi
	sub	ecx, edi
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	cmp	BYTE PTR 114[rbx], 0
	jne	.L9
	lea	edx, -86[rax]
	cmp	dx, 83
	ja	.L10
	test	BYTE PTR 49[rbx], 4
	je	.L9
.L11:
	mov	WORD PTR 108[rbx], ax
	mov	ecx, 505
	mov	rax, QWORD PTR 0[rbp]
	mov	r8d, -254
	mov	WORD PTR 34[rbx], cx
	lea	rcx, sub_8059B04[rip]
	mov	BYTE PTR 113[rbx], 0
	mov	WORD PTR 64[rbx], r8w
	mov	QWORD PTR 40[rax], rcx
.L9:
	sal	edi, 8
	mov	ecx, esi
	sal	ecx, 8
	mov	edx, edi
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L12
	mov	edx, DWORD PTR 48[rbx]
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 505
	mov	WORD PTR 34[rbx], ax
.L12:
	mov	rcx, r12
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L10:
	lea	edx, -342[rax]
	cmp	dx, 83
	ja	.L9
	test	BYTE PTR 49[rbx], 4
	jne	.L9
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	sub_8059B04
	.def	sub_8059B04;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8059B04
sub_8059B04:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 96[rbx]
	add	esi, DWORD PTR 88[rbx]
	lea	r13, 16[rbx]
	mov	rax, QWORD PTR [rbx]
	mov	edi, DWORD PTR 100[rbx]
	mov	r14d, esi
	mov	rcx, r13
	add	edi, DWORD PTR 92[rbx]
	sar	r14d, 8
	mov	r15d, edi
	mov	QWORD PTR 40[rsp], rax
	mov	eax, r14d
	sub	ax, WORD PTR 0[rbp]
	sar	r15d, 8
	mov	WORD PTR 54[rbx], ax
	mov	edx, r14d
	mov	eax, r15d
	sub	ax, WORD PTR 4[rbp]
	mov	r8d, r15d
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L32
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR 0[rbp]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L33
.L24:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L26
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L25
.L26:
	movzx	eax, BYTE PTR 12[rbx]
	mov	rsi, QWORD PTR 40[rsp]
	mov	BYTE PTR [rsi], al
.L32:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	add	edx, -128
	cmp	eax, edx
	jl	.L24
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[rbp]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L24
	add	edx, -128
	cmp	eax, edx
	jl	.L24
	.p2align 4,,10
	.p2align 3
.L25:
	movzx	eax, BYTE PTR 113[rbx]
	add	eax, 1
	mov	BYTE PTR 113[rbx], al
	cmp	al, 34
	je	.L34
.L27:
	xor	dil, dil
	xor	sil, sil
	mov	edx, edi
	mov	ecx, esi
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
	mov	rcx, r13
	test	eax, eax
	je	.L35
	call	DisplaySprite
	nop
.L22:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	call	DisplaySprite
	mov	eax, 505
	mov	edx, -256
	lea	rdi, Task_BulletBuzzerMain[rip]
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	BYTE PTR 114[rbx], 60
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rdi
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L34:
	mov	DWORD PTR 48[rsp], 33161220
	mov	BYTE PTR 52[rsp], 0
	test	BYTE PTR 49[rbx], 4
	je	.L28
	lea	r10d, 10[r14]
	sal	r10d, 8
.L29:
	movzx	eax, WORD PTR 108[rbx]
	add	r15d, 14
	mov	ecx, 512
	mov	r8d, 16
	mov	WORD PTR 56[rsp], cx
	sal	r15d, 8
	lea	rcx, 48[rsp]
	mov	edx, 3
	sub	eax, 16
	mov	DWORD PTR 60[rsp], r10d
	mov	DWORD PTR 64[rsp], r15d
	mov	WORD PTR 54[rsp], ax
	call	CreateSeveralProjectiles
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L28:
	lea	r10d, -10[r14]
	sal	r10d, 8
	jmp	.L29
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_BulletBuzzer
	.def	CreateEntity_BulletBuzzer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_BulletBuzzer
CreateEntity_BulletBuzzer:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 120
	lea	rcx, Task_BulletBuzzerMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	sal	ebp, 5
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 24
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	QWORD PTR 96[rbx], 0
	lea	r8d, [rax+rbp]
	mov	DWORD PTR 104[rbx], 0
	mov	eax, r8d
	sal	r8d, 16
	sal	eax, 11
	or	r8d, esi
	mov	DWORD PTR 92[rbx], eax
	movzx	eax, BYTE PTR 5[rdi]
	movd	xmm0, r8d
	psllw	xmm0, 3
	sal	eax, 2
	mov	BYTE PTR 110[rbx], al
	movzx	eax, BYTE PTR 6[rdi]
	mov	BYTE PTR 112[rbx], 0
	sal	eax, 2
	mov	BYTE PTR 114[rbx], 0
	mov	BYTE PTR 111[rbx], al
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 33095680
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 9216
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateSeveralProjectiles;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
