	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_DestroyProjectileTask
	.def	Task_DestroyProjectileTask;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DestroyProjectileTask
Task_DestroyProjectileTask:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	Task_805102C
	.def	Task_805102C;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_805102C
Task_805102C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r9]
	movsx	edx, WORD PTR 72[rbx]
	add	edx, DWORD PTR 64[rbx]
	mov	DWORD PTR 64[rbx], edx
	sar	edx, 8
	movsx	r8d, WORD PTR 74[rbx]
	mov	eax, edx
	add	r8d, DWORD PTR 68[rbx]
	sub	ax, WORD PTR [rcx]
	mov	DWORD PTR 68[rbx], r8d
	sar	r8d, 8
	mov	WORD PTR 38[rbx], ax
	sub	ax, -128
	mov	r11d, r8d
	sub	r11w, WORD PTR 4[rcx]
	cmp	ax, 682
	mov	WORD PTR 40[rbx], r11w
	seta	al
	cmp	r11w, -128
	setl	r10b
	or	al, r10b
	jne	.L6
	cmp	r11w, 368
	jle	.L4
.L6:
	mov	rcx, r9
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, rbx
	call	Coll_Player_Projectile
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_80510B0
	.def	Task_80510B0;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_80510B0
Task_80510B0:
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
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 112[rbx], 0
	je	.L8
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	esi, esi
	xor	edi, edi
	.p2align 4,,10
	.p2align 3
.L12:
	cmp	BYTE PTR 113[rbx+rsi], 0
	je	.L9
	movsx	edx, WORD PTR 96[rbx+rsi*4]
	add	edx, DWORD PTR 64[rbx+rsi*8]
	add	edi, 1
	mov	DWORD PTR 64[rbx+rsi*8], edx
	movsx	r8d, WORD PTR 98[rbx+rsi*4]
	sar	edx, 8
	add	r8d, DWORD PTR 68[rbx+rsi*8]
	mov	eax, edx
	mov	DWORD PTR 68[rbx+rsi*8], r8d
	sub	ax, WORD PTR 0[rbp]
	sar	r8d, 8
	mov	WORD PTR 38[rbx], ax
	sub	ax, -128
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rbp]
	cmp	ax, 682
	mov	WORD PTR 40[rbx], cx
	seta	al
	cmp	cx, -128
	setl	r9b
	or	al, r9b
	jne	.L15
	cmp	cx, 368
	jle	.L10
.L15:
	mov	BYTE PTR 113[rbx+rsi], 0
.L10:
	mov	rcx, rbx
	call	Coll_Player_Projectile
	mov	rcx, rbx
	call	DisplaySprite
.L9:
	add	rsi, 1
	cmp	sil, BYTE PTR 112[rbx]
	jb	.L12
	test	dil, dil
	je	.L8
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rax, QWORD PTR [r12]
	lea	rdi, Task_DestroyProjectileTask[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_80511EC
	.def	TaskDestructor_80511EC;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_80511EC
TaskDestructor_80511EC:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_8051200
	.def	TaskDestructor_8051200;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_8051200
TaskDestructor_8051200:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateProjectile
	.def	CreateProjectile;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateProjectile
CreateProjectile:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_80511EC[rip]
	xor	r9d, r9d
	mov	edx, 80
	mov	r8d, 16384
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	lea	rcx, Task_805102C[rip]
	call	TaskCreate
	movzx	edx, WORD PTR 6[rsi]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 12[rsi]
	movsx	ecx, WORD PTR 8[rsi]
	mov	QWORD PTR 64[rbx], rax
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [r8+rax*2]
	imul	eax, ecx
	sar	eax, 14
	mov	WORD PTR 72[rbx], ax
	movsx	eax, WORD PTR [r8+rdx*2]
	imul	eax, ecx
	movzx	ecx, WORD PTR [rsi]
	sar	eax, 14
	mov	WORD PTR 74[rbx], ax
	call	VramMalloc
	mov	edx, 4351
	xor	ecx, ecx
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 2[rsi]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 4[rsi]
	mov	WORD PTR 49[rbx], dx
	mov	BYTE PTR 48[rbx], al
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	QWORD PTR 32[rbx], 4096
	mov	DWORD PTR 40[rbx], 33554432
	mov	WORD PTR 44[rbx], cx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSeveralProjectiles
	.def	CreateSeveralProjectiles;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSeveralProjectiles
CreateSeveralProjectiles:
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
	lea	rax, TaskDestructor_8051200[rip]
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], rax
	mov	edi, edx
	mov	rsi, rcx
	mov	ebp, r8d
	mov	edx, 120
	mov	r8d, 16384
	lea	rcx, Task_80510B0[rip]
	call	TaskCreate
	mov	r10d, 4
	cmp	dil, r10b
	mov	rbx, QWORD PTR 24[rax]
	cmovbe	r10d, edi
	mov	BYTE PTR 112[rbx], r10b
	test	dil, dil
	je	.L32
	movzx	r9d, WORD PTR 6[rsi]
	movsx	edi, WORD PTR 8[rsi]
	movsx	r8w, bpl
	xor	eax, eax
	movq	xmm0, QWORD PTR 12[rsi]
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
.L29:
	mov	ecx, r9d
	movq	QWORD PTR 64[rbx+rax*8], xmm0
	add	r9d, r8d
	and	ecx, 1023
	lea	edx, 256[rcx]
	movsx	rdx, edx
	movsx	edx, WORD PTR [r11+rdx*2]
	imul	edx, edi
	sar	edx, 14
	mov	WORD PTR 96[rbx+rax*4], dx
	movsx	edx, WORD PTR [r11+rcx*2]
	imul	edx, edi
	sar	edx, 14
	mov	WORD PTR 98[rbx+rax*4], dx
	add	rax, 1
	cmp	al, r10b
	jb	.L29
	movzx	r10d, r10b
	lea	rcx, 113[rbx]
	mov	r8d, r10d
	test	r10d, r10d
	je	.L32
	xor	eax, eax
.L30:
	mov	edx, eax
	add	eax, 1
	mov	BYTE PTR [rcx+rdx], 1
	cmp	eax, r8d
	jb	.L30
.L32:
	movzx	ecx, WORD PTR [rsi]
	call	VramMalloc
	mov	edx, 4351
	xor	ecx, ecx
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 2[rsi]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 4[rsi]
	mov	WORD PTR 49[rbx], dx
	mov	BYTE PTR 48[rbx], al
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	QWORD PTR 32[rbx], 4096
	mov	DWORD PTR 40[rbx], 33554432
	mov	WORD PTR 44[rbx], cx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
