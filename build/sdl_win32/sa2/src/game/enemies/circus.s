	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_CircusMain
	.def	Task_CircusMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CircusMain
Task_CircusMain:
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
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 160[rbx]
	mov	edi, DWORD PTR 164[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	edx, esi
	mov	ecx, edi
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L6
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L3
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L3:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L6:
	mov	rcx, QWORD PTR 0[rbp]
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
.L4:
	sub	BYTE PTR 168[rbx], 1
	jne	.L5
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, Task_8055AB8[rip]
	mov	DWORD PTR 170[rbx], -83822592
	mov	BYTE PTR 168[rbx], 30
	mov	QWORD PTR 40[rax], rdx
	mov	eax, 495
	mov	edx, -255
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
.L5:
	mov	edx, DWORD PTR 164[rbx]
	mov	ecx, DWORD PTR 160[rbx]
	lea	rbp, 88[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	movzx	eax, WORD PTR 56[rbx]
	movzx	edx, WORD PTR 54[rbx]
	mov	rcx, rbp
	lea	r8d, -32[rdi]
	sub	eax, 32
	sal	eax, 16
	or	eax, edx
	mov	edx, esi
	mov	DWORD PTR 126[rbx], eax
	call	Coll_Player_Projectile
	mov	rcx, rbp
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_8055AB8
	.def	Task_8055AB8;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8055AB8
Task_8055AB8:
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
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 160[rbx]
	mov	edi, DWORD PTR 164[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	edx, esi
	mov	ecx, edi
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L15
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L10
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L11
.L10:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L15:
	mov	rcx, QWORD PTR 0[rbp]
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
.L11:
	mov	edx, DWORD PTR 164[rbx]
	mov	ecx, DWORD PTR 160[rbx]
	lea	r13, 88[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	test	eax, eax
	jne	.L12
	call	DisplaySprite
	mov	rcx, r13
	lea	rsi, Task_8055C0C[rip]
	call	UpdateSpriteAnimation
	mov	rcx, r13
	call	DisplaySprite
	mov	eax, 495
	mov	edx, -254
	mov	BYTE PTR 168[rbx], 50
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rsi
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
.L12:
	call	DisplaySprite
	movzx	eax, WORD PTR 56[rbx]
	movzx	edx, WORD PTR 54[rbx]
	mov	rcx, r13
	lea	r8d, -32[rdi]
	sub	eax, 32
	sal	eax, 16
	or	eax, edx
	mov	edx, esi
	mov	DWORD PTR 126[rbx], eax
	call	Coll_Player_Projectile
	mov	rcx, r13
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_8055C0C
	.def	Task_8055C0C;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8055C0C
Task_8055C0C:
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
	xor	r9d, r9d
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 160[rbx]
	mov	r13d, DWORD PTR 164[rbx]
	lea	rbp, 16[rbx]
	mov	r12, QWORD PTR [rbx]
	sar	esi, 8
	sar	r13d, 8
	mov	ecx, esi
	mov	edx, r13d
	sub	cx, WORD PTR [rax]
	sub	dx, WORD PTR 4[rax]
	movzx	eax, WORD PTR 172[rbx]
	mov	WORD PTR 56[rbx], dx
	mov	r8d, r13d
	mov	WORD PTR 54[rbx], cx
	add	eax, 49
	mov	WORD PTR 126[rbx], cx
	mov	rcx, rbp
	mov	WORD PTR 172[rbx], ax
	add	ax, WORD PTR 170[rbx]
	mov	WORD PTR 170[rbx], ax
	sar	ax, 8
	lea	edx, -32[rdx+rax]
	mov	WORD PTR 128[rbx], dx
	mov	edx, esi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L21
	movsx	eax, BYTE PTR 171[rbx]
	lea	r14, 88[rbx]
	mov	edx, esi
	mov	rcx, r14
	lea	r8d, -32[r13+rax]
	call	Coll_Player_Projectile
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L18
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L19
.L18:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
.L21:
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
.L19:
	mov	edx, DWORD PTR 164[rbx]
	mov	ecx, DWORD PTR 160[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	mov	rcx, r14
	call	UpdateSpriteAnimation
	mov	rcx, r14
	call	DisplaySprite
	sub	BYTE PTR 168[rbx], 1
	jne	.L16
	mov	eax, 495
	mov	edx, -253
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_8055D7C[rip]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rdi
.L16:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_8055D7C
	.def	Task_8055D7C;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8055D7C
Task_8055D7C:
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
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 160[rbx]
	mov	edi, DWORD PTR 164[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	edx, esi
	mov	ecx, edi
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L28
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L24
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L25
.L24:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L28:
	mov	rcx, QWORD PTR 0[rbp]
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
.L25:
	mov	edx, DWORD PTR 164[rbx]
	mov	ecx, DWORD PTR 160[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	test	eax, eax
	je	.L29
	call	DisplaySprite
.L27:
	movzx	eax, WORD PTR 56[rbx]
	movzx	edx, WORD PTR 54[rbx]
	lea	rbp, 88[rbx]
	lea	r8d, -32[rdi]
	mov	rcx, rbp
	sub	eax, 32
	sal	eax, 16
	or	eax, edx
	mov	edx, esi
	mov	DWORD PTR 126[rbx], eax
	call	Coll_Player_Projectile
	mov	rcx, rbp
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
.L29:
	call	DisplaySprite
	mov	eax, 495
	mov	edx, -256
	mov	BYTE PTR 168[rbx], 30
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, Task_CircusMain[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L27
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_Circus
	.def	TaskDestructor_Circus;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Circus
TaskDestructor_Circus:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 96[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Circus
	.def	CreateEntity_Circus;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Circus
CreateEntity_Circus:
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
	lea	rax, TaskDestructor_Circus[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16528
	xor	r9d, r9d
	mov	edx, 176
	lea	rcx, Task_CircusMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, al
	mov	dh, cl
	mov	ecx, 20
	mov	WORD PTR 12[rbx], dx
	cmp	BYTE PTR 4[rdi], 0
	setne	BYTE PTR 169[rbx]
	sal	esi, 5
	add	esi, eax
	sal	ebp, 5
	mov	eax, esi
	movzx	esi, si
	sal	eax, 11
	mov	DWORD PTR 160[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	BYTE PTR 168[rbx], 1
	lea	r8d, [rax+rbp]
	mov	eax, r8d
	sal	r8d, 16
	or	r8d, esi
	sal	eax, 11
	movd	xmm0, r8d
	mov	DWORD PTR 164[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 32440320
	mov	ecx, 16
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	DWORD PTR 126[rbx], 0
	call	VramMalloc
	xor	ecx, ecx
	mov	r8d, -254
	mov	DWORD PTR 104[rbx], 32505856
	mov	WORD PTR 124[rbx], cx
	lea	rcx, 88[rbx]
	mov	QWORD PTR 96[rbx], rax
	mov	DWORD PTR 130[rbx], 1152
	mov	WORD PTR 136[rbx], r8w
	mov	BYTE PTR 138[rbx], 16
	mov	BYTE PTR 141[rbx], 0
	mov	DWORD PTR 144[rbx], -1
	mov	DWORD PTR 120[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
