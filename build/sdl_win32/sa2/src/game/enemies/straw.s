	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_80567F8
	.def	sub_80567F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80567F8
sub_80567F8:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 88[rbx]
	add	esi, DWORD PTR 80[rbx]
	lea	r13, 16[rbx]
	mov	edi, DWORD PTR 92[rbx]
	mov	edx, esi
	add	edi, DWORD PTR 84[rbx]
	mov	rcx, r13
	sar	edx, 8
	mov	r8d, edi
	mov	r14, QWORD PTR [rbx]
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 0[rbp]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L9
.L3:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L5
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L5:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
.L7:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L9:
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[rbp]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L3
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	sub	BYTE PTR 104[rbx], 1
	jne	.L6
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	BYTE PTR 104[rbx], 100
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 1023
	lea	edx, 256[rax]
	movzx	eax, WORD PTR [rcx+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	ax, 5
	lea	rcx, Task_StrawMain[rip]
	cwde
	mov	DWORD PTR 100[rbx], eax
	sar	dx, 5
	mov	rax, QWORD PTR [r12]
	movsx	edx, dx
	mov	DWORD PTR 96[rbx], edx
	mov	QWORD PTR 40[rax], rcx
.L6:
	xor	dil, dil
	xor	sil, sil
	mov	edx, edi
	mov	ecx, esi
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
	mov	rcx, r13
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_StrawMain
	.def	Task_StrawMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_StrawMain
Task_StrawMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r9d, DWORD PTR 96[rbx]
	mov	edx, DWORD PTR 88[rbx]
	lea	rbp, 16[rbx]
	mov	eax, DWORD PTR 92[rbx]
	mov	ecx, DWORD PTR 100[rbx]
	add	edx, r9d
	mov	r12, QWORD PTR [rbx]
	add	eax, ecx
	mov	DWORD PTR 88[rbx], edx
	add	edx, DWORD PTR 80[rbx]
	mov	r15d, edx
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	mov	esi, edx
	sar	r15d, 8
	mov	r8d, eax
	lea	edx, 11[r9]
	xor	sil, sil
	sar	r8d, 8
	mov	r10d, r15d
	sub	r10w, WORD PTR 0[r13]
	mov	WORD PTR 54[rbx], r10w
	mov	r10d, r8d
	sub	r10w, WORD PTR 4[r13]
	mov	WORD PTR 56[rbx], r10w
	cmp	DWORD PTR 12[r11], esi
	jge	.L12
	lea	edx, -16[r9]
.L12:
	mov	DWORD PTR 96[rbx], edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	xor	al, al
	mov	r14d, eax
	lea	eax, 11[rcx]
	cmp	DWORD PTR 16[rdx], r14d
	jge	.L14
	lea	eax, -16[rcx]
.L14:
	mov	DWORD PTR 100[rbx], eax
	xor	r9d, r9d
	mov	edx, r15d
	mov	rcx, rbp
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 0[r13]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L25
.L16:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L18
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L17
.L18:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
.L24:
	mov	rcx, QWORD PTR [rdi]
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
.L25:
	add	edx, -128
	cmp	eax, edx
	jl	.L16
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r13]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L16
	add	edx, -128
	cmp	eax, edx
	jl	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	sub	BYTE PTR 104[rbx], 1
	jne	.L19
	movzx	eax, BYTE PTR 105[rbx]
	lea	rcx, sub_80567F8[rip]
	mov	rdx, QWORD PTR [rdi]
	sub	eax, 1
	mov	BYTE PTR 105[rbx], al
	test	al, al
	lea	rax, sub_8056AF4[rip]
	cmovne	rax, rcx
	mov	QWORD PTR 40[rdx], rax
	mov	BYTE PTR 104[rbx], 30
.L19:
	mov	edx, r14d
	mov	ecx, esi
	sal	r15d, 8
	call	Player_UpdateHomingPosition
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	DWORD PTR 12[rax], r15d
	mov	eax, DWORD PTR 48[rbx]
	jl	.L26
	or	ah, 4
.L22:
	mov	DWORD PTR 48[rbx], eax
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
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
.L26:
	and	ah, -5
	jmp	.L22
	.seh_endproc
	.p2align 4
	.globl	sub_8056AF4
	.def	sub_8056AF4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8056AF4
sub_8056AF4:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR 96[rbx]
	mov	esi, DWORD PTR 84[rbx]
	lea	rbp, 16[rbx]
	add	ecx, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR 100[rbx]
	add	edx, DWORD PTR 92[rbx]
	mov	r12, QWORD PTR [rbx]
	mov	DWORD PTR 88[rbx], ecx
	add	ecx, DWORD PTR 80[rbx]
	add	esi, edx
	mov	DWORD PTR 92[rbx], edx
	mov	eax, ecx
	mov	r8d, esi
	mov	r13d, ecx
	mov	rcx, rbp
	sar	eax, 8
	sar	r8d, 8
	mov	edx, eax
	sub	dx, WORD PTR [r14]
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L32
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L33
.L29:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L31
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L30
.L31:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
.L32:
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	add	edx, -128
	cmp	eax, edx
	jl	.L29
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L29
	add	edx, -128
	cmp	eax, edx
	jl	.L29
.L30:
	xor	sil, sil
	mov	ecx, r13d
	mov	edx, esi
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Straw
	.def	CreateEntity_Straw;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Straw
CreateEntity_Straw:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	mov	rbp, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	r12d, r9d
	je	.L35
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L34
.L35:
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	xor	r9d, r9d
	mov	r8d, 16448
	mov	edx, 112
	lea	rcx, Task_StrawMain[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], di
	movzx	edi, di
	mov	WORD PTR 10[rbx], si
	sal	edi, 5
	movzx	esi, si
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	esi, 5
	add	edi, eax
	movzx	edx, al
	mov	eax, edi
	mov	dh, cl
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	edi, di
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR 80[rbx], eax
	movzx	r8d, BYTE PTR 1[rbp]
	mov	QWORD PTR 88[rbx], 0
	add	r8d, esi
	mov	eax, r8d
	sal	r8d, 16
	sal	eax, 11
	or	r8d, edi
	mov	DWORD PTR 84[rbx], eax
	imul	eax, DWORD PTR [rdx], 1663525
	movd	xmm0, r8d
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 1023
	lea	edx, 256[rax]
	movzx	eax, WORD PTR [rcx+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	ax, 5
	mov	ecx, 12
	cwde
	sar	dx, 5
	mov	DWORD PTR 100[rbx], eax
	mov	eax, 1380
	movsx	edx, dx
	mov	WORD PTR 104[rbx], ax
	mov	DWORD PTR 96[rbx], edx
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	xor	edx, edx
	mov	ecx, -256
	mov	BYTE PTR 66[rbx], 16
	mov	QWORD PTR 24[rbx], rax
	mov	DWORD PTR 32[rbx], 33030144
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], cx
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 4096
.L34:
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
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
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
