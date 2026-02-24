	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_BouncyBarIdle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BouncyBarIdle
Task_BouncyBarIdle:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	r14, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	esi, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	r13, 16[rbx]
	mov	r12, QWORD PTR [rbx]
	movzx	edi, WORD PTR 10[rbx]
	sal	esi, 5
	add	esi, eax
	movzx	eax, BYTE PTR 1[r12]
	sal	edi, 5
	sal	esi, 3
	add	edi, eax
	mov	eax, esi
	sub	ax, WORD PTR [rdx]
	sal	edi, 3
	mov	WORD PTR 54[rbx], ax
	mov	ecx, edi
	sub	cx, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], cx
	test	BYTE PTR 36[r14], -128
	je	.L12
.L2:
	sub	ax, -128
	cmp	ax, 682
	ja	.L8
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L7
.L8:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 48
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
.L3:
	movzx	edx, WORD PTR 22[r14]
	test	dx, dx
	jle	.L10
	mov	eax, DWORD PTR 16[r14]
	sar	eax, 8
	add	eax, 4
	cmp	eax, edi
	jge	.L10
	mov	ecx, 50
	mov	eax, edx
	mov	BYTE PTR 117[r14], 5
	mov	WORD PTR 108[r14], cx
	sar	ax, 10
	cmp	dx, 3071
	jg	.L9
	lea	rdx, sSpringStiffness[rip]
	movsx	r8, ax
	lea	r9d, 10[rax+rax*4]
	mov	ecx, eax
	movzx	r8d, WORD PTR [rdx+r8*2]
	mov	edx, 3
	sub	edx, eax
.L6:
	mov	eax, DWORD PTR 12[r14]
	lea	rdi, Task_BouncyBarLaunch[rip]
	mov	BYTE PTR 81[rbx], r9b
	mov	WORD PTR 82[rbx], r8w
	sar	eax, 8
	sub	esi, eax
	mov	eax, esi
	neg	eax
	cmovs	eax, esi
	or	DWORD PTR 36[r14], 4194304
	mov	WORD PTR 84[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
	mov	eax, 538
	mov	BYTE PTR 80[rbx], cl
	mov	ecx, 279
	mov	WORD PTR 34[rbx], ax
	mov	BYTE PTR 64[rbx], dl
	mov	BYTE PTR 65[rbx], -1
	call	m4aSongNumStart
.L7:
	mov	rcx, r13
	call	UpdateSpriteAnimation
	mov	rcx, r13
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L12:
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	QWORD PTR 32[rsp], r14
	mov	rcx, r13
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L3
.L10:
	movzx	eax, WORD PTR 54[rbx]
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edx, 1
	mov	r8d, 9
	mov	r9d, 20
	mov	ecx, 2
	jmp	.L6
	.seh_endproc
	.p2align 4
	.def	Task_BouncyBarLaunch;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BouncyBarLaunch
Task_BouncyBarLaunch:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rcx]
	mov	r8, QWORD PTR [rsi]
	movzx	edx, WORD PTR 10[rsi]
	movzx	r10d, BYTE PTR 12[rsi]
	movzx	eax, BYTE PTR 1[r8]
	sal	edx, 5
	mov	r9d, r10d
	add	edx, eax
	movzx	eax, WORD PTR 8[rsi]
	sal	edx, 3
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	dx, WORD PTR 4[r10]
	sub	ax, WORD PTR [r10]
	movzx	r10d, BYTE PTR 81[rsi]
	mov	WORD PTR 54[rsi], ax
	mov	WORD PTR 56[rsi], dx
	test	r10b, r10b
	je	.L15
	movsx	r12d, WORD PTR 84[rsi]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	sub	r10d, 1
	movsx	ebp, WORD PTR 82[rsi]
	mov	BYTE PTR 81[rsi], r10b
	mov	edi, r12d
	imul	r12d, ebp
	add	DWORD PTR 16[r11], r12d
	xor	r12d, r12d
	mov	WORD PTR 22[r11], r12w
	test	r10b, r10b
	je	.L21
.L15:
	sub	ax, -128
	cmp	ax, 682
	seta	al
	cmp	dx, -128
	setl	r10b
	or	al, r10b
	jne	.L20
	cmp	dx, 368
	jle	.L17
.L20:
	mov	BYTE PTR [r8], r9b
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L17:
	lea	rdi, 16[rsi]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L19
	mov	eax, 538
	mov	edx, -256
	mov	WORD PTR 34[rsi], ax
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_BouncyBarIdle[rip]
	mov	WORD PTR 64[rsi], dx
	mov	QWORD PTR 40[rax], rbx
.L19:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L21:
	mov	r10d, edi
	sar	di, 2
	sar	r10w
	add	r10d, edi
	mov	edi, 24
	cmp	r10b, dil
	cmovg	r10d, edi
	movzx	edi, BYTE PTR 80[rsi]
	and	DWORD PTR 36[r11], -4194561
	movsx	r10d, r10b
	imul	r10d, ebp
	lea	rbp, sLaunchBonusSpeed[rip]
	movsx	ebp, BYTE PTR 0[rbp+rdi]
	imul	r10d, ebp
	lea	rbp, sBaseLaunchSpeed[rip]
	sar	r10d
	add	r10w, WORD PTR 0[rbp+rdi*2]
	mov	WORD PTR 22[r11], r10w
	jmp	.L15
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_BouncyBar
	.def	CreateEntity_BouncyBar;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_BouncyBar
CreateEntity_BouncyBar:
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
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_BouncyBarIdle[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	mov	DWORD PTR 82[rbx], 0
	movzx	edx, al
	add	esi, eax
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 24
	mov	WORD PTR 12[rbx], dx
	xor	edx, edx
	mov	WORD PTR 80[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	r8d, -256
	xor	ecx, ecx
	mov	BYTE PTR 66[rbx], 16
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], r8w
	mov	BYTE PTR 69[rbx], 0
	cmp	BYTE PTR 3[rbp], 1
	mov	QWORD PTR 24[rbx], rax
	sbb	eax, eax
	and	eax, -1024
	mov	DWORD PTR 32[rbx], 35258368
	add	eax, 9216
	mov	WORD PTR 52[rbx], cx
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
sBaseLaunchSpeed:
	.word	-384
	.word	-384
	.word	-384
sLaunchBonusSpeed:
	.ascii "\360\356\354"
	.align 2
sSpringStiffness:
	.word	9
	.word	9
	.word	9
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
