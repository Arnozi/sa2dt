	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_BossParticleWithExplosionUpdate
	.def	Task_BossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BossParticleWithExplosionUpdate
Task_BossParticleWithExplosionUpdate:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[r9]
	cmp	WORD PTR 18[rbx], 619
	movzx	r8d, WORD PTR 72[rbx]
	jne	.L2
	sub	r8w, 256
	mov	WORD PTR 72[rbx], r8w
.L2:
	movzx	ecx, WORD PTR 76[rbx]
	add	cx, WORD PTR 74[rbx]
	movsx	eax, r8w
	movsx	edx, cx
	add	eax, DWORD PTR 64[rbx]
	add	edx, DWORD PTR 68[rbx]
	mov	WORD PTR 74[rbx], cx
	mov	DWORD PTR 64[rbx], eax
	sar	eax, 8
	mov	DWORD PTR 68[rbx], edx
	sar	edx, 8
	mov	WORD PTR 38[rbx], ax
	mov	WORD PTR 40[rbx], dx
	cmp	ax, -32
	jge	.L3
	test	r8w, r8w
	js	.L4
.L5:
	cmp	dx, -32
	jl	.L20
.L7:
	test	cx, cx
	jle	.L8
	cmp	dx, 272
	jle	.L8
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.Task_DestroyBossParts[rip]
	mov	QWORD PTR 40[r9], rax
.L8:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L9
	mov	rax, QWORD PTR [rsi]
	mov	rdx, QWORD PTR .refptr.Task_DestroyBossParts[rip]
	mov	QWORD PTR 40[rax], rdx
.L9:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L3:
	test	r8w, r8w
	jle	.L5
	cmp	ax, 458
	jg	.L4
	cmp	dx, -32
	jge	.L7
.L20:
	test	cx, cx
	jns	.L8
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	Task_BossParticleStatic
	.def	Task_BossParticleStatic;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BossParticleStatic
Task_BossParticleStatic:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r10, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[r10]
	movsx	eax, WORD PTR 72[rbx]
	movzx	ecx, WORD PTR 76[rbx]
	add	cx, WORD PTR 74[rbx]
	mov	r8d, eax
	movsx	edx, cx
	add	eax, DWORD PTR 64[rbx]
	add	edx, DWORD PTR 68[rbx]
	mov	DWORD PTR 64[rbx], eax
	sar	eax, 8
	sub	ax, WORD PTR [r9]
	mov	DWORD PTR 68[rbx], edx
	sar	edx, 8
	sub	dx, WORD PTR 4[r9]
	mov	WORD PTR 74[rbx], cx
	mov	WORD PTR 38[rbx], ax
	mov	WORD PTR 40[rbx], dx
	cmp	ax, -32
	jge	.L22
	test	r8w, r8w
	js	.L23
.L24:
	cmp	dx, -32
	jl	.L38
.L26:
	test	cx, cx
	jle	.L27
	cmp	dx, 272
	jle	.L27
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rax, QWORD PTR .refptr.Task_DestroyBossParts[rip]
	mov	QWORD PTR 40[r10], rax
.L27:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L28
	mov	rax, QWORD PTR [rsi]
	mov	rdx, QWORD PTR .refptr.Task_DestroyBossParts[rip]
	mov	QWORD PTR 40[rax], rdx
.L28:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L22:
	test	r8w, r8w
	jle	.L24
	cmp	ax, 458
	jg	.L23
	cmp	dx, -32
	jge	.L26
.L38:
	test	cx, cx
	jns	.L27
	jmp	.L23
	.seh_endproc
	.p2align 4
	.globl	CreateBossParticleWithExplosionUpdate
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBossParticleWithExplosionUpdate
CreateBossParticleWithExplosionUpdate:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rbx, rcx
	mov	rsi, rdx
	test	BYTE PTR 8[rcx], 1
	je	.L40
	cmp	BYTE PTR [rdx], 15
	ja	.L39
.L40:
	xor	r9d, r9d
	mov	r8d, 21554
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, Task_BossParticleWithExplosionUpdate[rip]
	call	TaskCreate
	mov	edx, DWORD PTR 24[rbx]
	movzx	r8d, WORD PTR 18[rbx]
	mov	r10d, 4351
	mov	rax, QWORD PTR 24[rax]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 8
	mov	DWORD PTR 64[rax], edx
	mov	edx, DWORD PTR 28[rbx]
	sal	edx, 8
	mov	DWORD PTR 68[rax], edx
	movzx	edx, WORD PTR 16[rbx]
	and	edx, 1023
	lea	ecx, 256[rdx]
	movsx	edx, WORD PTR [r9+rdx*2]
	movsx	rcx, ecx
	imul	edx, r8d
	movsx	ecx, WORD PTR [r9+rcx*2]
	xor	r9d, r9d
	imul	ecx, r8d
	xor	r8d, r8d
	sar	edx, 14
	mov	WORD PTR 74[rax], dx
	movzx	edx, WORD PTR 32[rbx]
	sar	ecx, 14
	mov	QWORD PTR 80[rax], rsi
	mov	WORD PTR 72[rax], cx
	xor	ecx, ecx
	mov	WORD PTR 76[rax], dx
	add	BYTE PTR [rsi], 1
	mov	rdx, QWORD PTR [rbx]
	mov	DWORD PTR 38[rax], 0
	mov	QWORD PTR 8[rax], rdx
	mov	edx, 256
	mov	WORD PTR 42[rax], dx
	movzx	edx, WORD PTR 12[rbx]
	mov	WORD PTR 16[rax], cx
	mov	WORD PTR 18[rax], dx
	movzx	edx, WORD PTR 14[rbx]
	mov	WORD PTR 36[rax], r8w
	mov	BYTE PTR 48[rax], dl
	mov	WORD PTR 44[rax], r9w
	mov	WORD PTR 49[rax], r10w
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 56[rax], -1
	mov	DWORD PTR 32[rax], 4096
.L39:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateBossParticleStatic
	.def	CreateBossParticleStatic;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBossParticleStatic
CreateBossParticleStatic:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rbx, rcx
	mov	rsi, rdx
	test	BYTE PTR 8[rcx], 1
	je	.L46
	cmp	BYTE PTR [rdx], 15
	ja	.L45
.L46:
	xor	r9d, r9d
	mov	r8d, 21554
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, Task_BossParticleStatic[rip]
	call	TaskCreate
	mov	edx, DWORD PTR 24[rbx]
	movzx	r8d, WORD PTR 18[rbx]
	mov	r10d, 4351
	mov	rax, QWORD PTR 24[rax]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 8
	mov	DWORD PTR 64[rax], edx
	mov	edx, DWORD PTR 28[rbx]
	sal	edx, 8
	mov	DWORD PTR 68[rax], edx
	movzx	edx, WORD PTR 16[rbx]
	and	edx, 1023
	lea	ecx, 256[rdx]
	movsx	edx, WORD PTR [r9+rdx*2]
	movsx	rcx, ecx
	imul	edx, r8d
	movsx	ecx, WORD PTR [r9+rcx*2]
	xor	r9d, r9d
	imul	ecx, r8d
	xor	r8d, r8d
	sar	edx, 14
	mov	WORD PTR 74[rax], dx
	movzx	edx, WORD PTR 32[rbx]
	sar	ecx, 14
	mov	QWORD PTR 80[rax], rsi
	mov	WORD PTR 72[rax], cx
	xor	ecx, ecx
	mov	WORD PTR 76[rax], dx
	add	BYTE PTR [rsi], 1
	mov	rdx, QWORD PTR [rbx]
	mov	DWORD PTR 38[rax], 0
	mov	QWORD PTR 8[rax], rdx
	mov	edx, 256
	mov	WORD PTR 42[rax], dx
	movzx	edx, WORD PTR 12[rbx]
	mov	WORD PTR 16[rax], cx
	mov	WORD PTR 18[rax], dx
	movzx	edx, WORD PTR 14[rbx]
	mov	WORD PTR 36[rax], r8w
	mov	BYTE PTR 48[rax], dl
	mov	WORD PTR 44[rax], r9w
	mov	WORD PTR 49[rax], r10w
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 56[rax], -1
	mov	DWORD PTR 32[rax], 4096
.L45:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.Task_DestroyBossParts, "dr"
	.globl	.refptr.Task_DestroyBossParts
	.linkonce	discard
.refptr.Task_DestroyBossParts:
	.quad	Task_DestroyBossParts
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
