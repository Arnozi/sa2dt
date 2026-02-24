	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_AmyAttackHeartEffect
	.def	TaskDestructor_AmyAttackHeartEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_AmyAttackHeartEffect
TaskDestructor_AmyAttackHeartEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	ebx, ebx
	mov	rsi, QWORD PTR 24[rcx]
.L3:
	cmp	BYTE PTR 268[rsi+rbx], 0
	jne	.L6
.L2:
	add	rbx, 16
	cmp	rbx, 64
	jne	.L3
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rcx, QWORD PTR 8[rsi+rbx*4]
	call	VramFree
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	CreateAmyAttackHeartEffect
	.def	CreateAmyAttackHeartEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateAmyAttackHeartEffect
CreateAmyAttackHeartEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	mov	ebx, ecx
	ja	.L7
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	cmp	BYTE PTR 141[rsi], 4
	jne	.L7
	movzx	eax, WORD PTR 108[rsi]
	cmp	ax, 36
	ja	.L7
	movabs	rdx, 68719771648
	bt	rdx, rax
	jc	.L13
.L7:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	lea	rax, TaskDestructor_AmyAttackHeartEffect[rip]
	mov	r8d, 12289
	xor	r9d, r9d
	mov	edx, 336
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_AmyAttackHeartEffect[rip]
	call	TaskCreate
	movsx	r8, WORD PTR 108[rsi]
	mov	rcx, QWORD PTR .refptr.sCharStateAnimInfo[rip]
	mov	rax, QWORD PTR 24[rax]
	movd	xmm0, DWORD PTR [rcx+r8*4]
	movd	DWORD PTR 320[rax], xmm0
	cmp	r8w, 79
	jg	.L9
	movsx	r8, BYTE PTR 141[rsi]
	mov	rcx, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	pextrw	edx, xmm0, 0
	add	dx, WORD PTR [rcx+r8*2]
	mov	WORD PTR 320[rax], dx
.L9:
	xor	edx, edx
	mov	WORD PTR 324[rax], bx
	mov	WORD PTR 326[rax], dx
	mov	DWORD PTR 328[rax], 0
	mov	BYTE PTR 268[rax], 0
	mov	BYTE PTR 284[rax], 0
	mov	BYTE PTR 300[rax], 0
	mov	BYTE PTR 316[rax], 0
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8015E28
	.def	sub_8015E28;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015E28
sub_8015E28:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	xor	eax, eax
.L15:
	mov	rdx, rax
	sal	rdx, 4
	cmp	BYTE PTR 268[rsi+rdx], 0
	je	.L26
	add	rax, 1
	cmp	rax, 4
	jne	.L15
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	movsx	rbx, eax
	movzx	ecx, cx
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8, rbx
	lea	r10, [rcx+rcx*2]
	sal	r8, 4
	mov	edx, DWORD PTR 12[rbp]
	mov	eax, DWORD PTR 16[rbp]
	add	r8, rsi
	mov	BYTE PTR 268[r8], -1
	movzx	r9d, WORD PTR 324[rsi]
	lea	rcx, [r9+r9*2]
	sal	rcx, 4
	lea	r9, [rcx+r10*2]
	lea	rcx, sHeartOffsets[rip]
	mov	r10d, edx
	add	rcx, r9
	movsx	r9d, WORD PTR 2[rcx]
	sal	r9d, 8
	sub	r10d, r9d
	add	edx, r9d
	test	BYTE PTR 36[rbp], 1
	cmovne	edx, r10d
	mov	DWORD PTR 256[r8], edx
	movsx	edx, WORD PTR 4[rcx]
	mov	ecx, eax
	sal	edx, 8
	sub	ecx, edx
	add	eax, edx
	test	BYTE PTR [rdi], -128
	cmovne	eax, ecx
	mov	ecx, 4
	mov	DWORD PTR 260[r8], eax
	mov	rax, rbx
	sal	rax, 4
	mov	DWORD PTR 264[rax+rsi], 0
	call	VramMalloc
	xor	r8d, r8d
	xor	r9d, r9d
	mov	r10d, -256
	mov	rcx, rax
	mov	rax, rbx
	sal	rax, 6
	lea	rdx, [rsi+rax]
	mov	QWORD PTR 8[rdx], rcx
	mov	ecx, 1024
	mov	WORD PTR 42[rdx], cx
	mov	DWORD PTR 16[rsi+rax], 56229888
	mov	WORD PTR 36[rdx], r8w
	mov	WORD PTR 44[rdx], r9w
	mov	WORD PTR 48[rsi+rax], r10w
	mov	rax, QWORD PTR 160[rbp]
	movzx	eax, BYTE PTR 66[rax]
	mov	BYTE PTR 53[rdx], 0
	mov	BYTE PTR 50[rdx], al
	movzx	eax, WORD PTR [rdi]
	and	ax, 128
	cmp	ax, 1
	sbb	eax, eax
	and	eax, -2048
	add	eax, 10240
	mov	DWORD PTR 32[rdx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_AmyAttackHeartEffect
	.def	Task_AmyAttackHeartEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_AmyAttackHeartEffect
Task_AmyAttackHeartEffect:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	test	BYTE PTR 36[rdi], -128
	jne	.L28
	mov	eax, DWORD PTR 112[rdi]
	cmp	DWORD PTR 320[rbx], eax
	je	.L35
	cmp	eax, 65951
	jne	.L28
.L35:
	xor	esi, esi
.L29:
	cmp	BYTE PTR 268[rbx+rsi], 0
	je	.L30
	test	BYTE PTR 33[rbx+rsi*4], 64
	jne	.L47
.L30:
	add	rsi, 16
	cmp	rsi, 64
	jne	.L29
	movzx	eax, WORD PTR 324[rbx]
	movzx	edx, WORD PTR 328[rbx]
	movzx	ecx, WORD PTR 326[rbx]
	lea	rax, [rax+rax*2]
	mov	r8, rdx
	lea	rdx, [rdx+rdx*2]
	sal	rax, 4
	lea	rax, [rax+rdx*2]
	lea	rdx, sHeartOffsets[rip]
	movzx	eax, WORD PTR [rdx+rax]
	mov	rdx, QWORD PTR 160[rdi]
	movzx	edx, BYTE PTR 66[rdx]
	sal	eax, 4
	add	edx, ecx
	mov	WORD PTR 326[rbx], dx
	cmp	cx, ax
	jnb	.L48
.L32:
	lea	rsi, 256[rbx]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, rsi
.L34:
	cmp	BYTE PTR 12[rsi], 0
	jne	.L49
.L33:
	add	rbx, 64
	add	rsi, 16
	cmp	rbp, rbx
	jne	.L34
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L49:
	mov	eax, DWORD PTR 4[rsi]
	movsx	edx, WORD PTR 1[rsi]
	mov	rcx, rbx
	sub	dx, WORD PTR [rdi]
	sal	eax, 8
	mov	WORD PTR 38[rbx], dx
	sar	eax, 16
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L47:
	mov	BYTE PTR 268[rbx+rsi], 0
	mov	rcx, QWORD PTR 8[rbx+rsi*4]
	call	VramFree
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, r8d
	call	sub_8015E28
	movzx	eax, WORD PTR 328[rbx]
	add	eax, 1
	and	eax, 7
	mov	WORD PTR 328[rbx], ax
	test	ax, ax
	jne	.L32
	xor	eax, eax
	mov	WORD PTR 326[rbx], ax
	jmp	.L32
	.seh_endproc
	.globl	sHeartOffsets
	.section .rdata,"dr"
	.align 4
sHeartOffsets:
	.word	10
	.word	0
	.word	-27
	.word	12
	.word	13
	.word	-22
	.word	14
	.word	23
	.word	-13
	.word	16
	.word	26
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	7
	.word	-27
	.word	12
	.word	20
	.word	-22
	.word	14
	.word	30
	.word	-13
	.word	16
	.word	33
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-10
	.word	-26
	.word	4
	.word	8
	.word	-27
	.word	8
	.word	22
	.word	-17
	.word	12
	.word	28
	.word	-1
	.word	16
	.word	23
	.word	16
	.word	20
	.word	10
	.word	26
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	4
	.word	6
	.word	19
	.word	6
	.word	10
	.word	28
	.word	2
	.word	14
	.word	19
	.word	4
	.word	18
	.word	0
	.word	6
	.word	22
	.word	-19
	.word	2
	.word	26
	.word	-28
	.word	4
	.word	30
	.word	-19
	.word	6
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.sCharStateAnimInfo, "dr"
	.globl	.refptr.sCharStateAnimInfo
	.linkonce	discard
.refptr.sCharStateAnimInfo:
	.quad	sCharStateAnimInfo
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
