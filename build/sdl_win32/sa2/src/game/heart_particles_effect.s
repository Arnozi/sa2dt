	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8086CBC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8086CBC
sub_8086CBC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	lea	rbx, 8[rsi]
	add	rsi, 264
.L2:
	mov	rcx, QWORD PTR [rbx]
	add	rbx, 64
	call	VramFree
	cmp	rbx, rsi
	jne	.L2
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8086BE8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8086BE8
sub_8086BE8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, cl
	mov	r8d, DWORD PTR 12[rax]
	mov	eax, DWORD PTR 16[rax]
	movzx	esi, cl
	lea	r9, [rbx+rdx*4]
	mov	DWORD PTR 260[r9], r8d
	mov	DWORD PTR 276[r9], eax
	cmp	cl, 1
	je	.L10
	cmp	cl, 3
	jne	.L7
	sub	DWORD PTR 288[rbx], 2048
	mov	eax, DWORD PTR 276[r9]
.L7:
	sal	rdx, 6
	movsx	rcx, esi
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	lea	r9, [rbx+rdx]
	mov	rdx, rcx
	sar	r8d, 8
	sal	rdx, 6
	sub	ax, WORD PTR 4[r10]
	sub	r8w, WORD PTR [r10]
	add	rdx, rbx
	mov	WORD PTR 40[rdx], ax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 49[rdx], -1
	test	BYTE PTR [rax], -128
	mov	eax, DWORD PTR 32[rdx]
	mov	WORD PTR 38[rdx], r8w
	je	.L8
	or	ah, 8
.L9:
	sal	rcx, 6
	mov	DWORD PTR 32[rbx+rcx], eax
	mov	rcx, r9
	call	UpdateSpriteAnimation
	mov	ecx, esi
	mov	eax, 1
	sal	eax, cl
	or	BYTE PTR 256[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	and	ah, -9
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L10:
	add	DWORD PTR 280[rbx], 2048
	mov	eax, DWORD PTR 276[r9]
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	sub_8086A88;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8086A88
sub_8086A88:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 160[r12]
	mov	rbx, QWORD PTR 24[rcx]
	lea	rax, 38[rbx]
	mov	rdi, rbx
	lea	r8, 294[rbx]
.L12:
	movzx	r9d, WORD PTR 54[rdx]
	add	rax, 64
	mov	WORD PTR -64[rax], r9w
	movzx	r9d, WORD PTR 56[rdx]
	mov	WORD PTR -62[rax], r9w
	cmp	r8, rax
	jne	.L12
	cmp	BYTE PTR 292[rbx], 0
	movzx	eax, BYTE PTR 256[rbx]
	je	.L25
	test	al, al
	je	.L14
.L25:
	mov	ebp, 1
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	xor	esi, esi
	test	al, bpl
	jne	.L30
.L16:
	add	rsi, 1
	add	ebp, ebp
	add	rdi, 64
	cmp	rsi, 4
	je	.L18
.L31:
	movzx	eax, BYTE PTR 256[rbx]
	test	al, bpl
	je	.L16
.L30:
	movzx	eax, WORD PTR 261[rbx+rsi*4]
	sub	ax, WORD PTR 0[r13]
	mov	rcx, rdi
	mov	WORD PTR 38[rdi], ax
	movzx	eax, WORD PTR 277[rbx+rsi*4]
	sub	ax, WORD PTR 4[r13]
	mov	WORD PTR 40[rdi], ax
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L17
	movzx	eax, BYTE PTR 256[rbx]
	add	ebp, ebp
	add	rdi, 64
	btr	eax, esi
	add	rsi, 1
	mov	BYTE PTR 256[rbx], al
	cmp	rsi, 4
	jne	.L31
.L18:
	cmp	BYTE PTR 292[rbx], 0
	movzx	eax, WORD PTR 258[rbx]
	jne	.L19
	test	ax, ax
	je	.L32
.L20:
	cmp	ax, 3
	je	.L33
.L21:
	cmp	ax, 7
	je	.L34
.L22:
	cmp	ax, 11
	je	.L35
.L19:
	cmp	ax, 14
	lea	edx, 1[rax]
	mov	eax, 0
	cmove	edx, eax
	cmp	WORD PTR 108[r12], 34
	mov	WORD PTR 258[rbx], dx
	je	.L11
	mov	BYTE PTR 292[rbx], 1
.L11:
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
.L17:
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L14:
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
.L35:
	mov	ecx, 3
	call	sub_8086BE8
	movzx	eax, WORD PTR 258[rbx]
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L32:
	xor	ecx, ecx
	call	sub_8086BE8
	movzx	eax, WORD PTR 258[rbx]
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L34:
	mov	ecx, 2
	call	sub_8086BE8
	movzx	eax, WORD PTR 258[rbx]
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L33:
	mov	ecx, 1
	call	sub_8086BE8
	movzx	eax, WORD PTR 258[rbx]
	jmp	.L21
	.seh_endproc
	.p2align 4
	.globl	CreateHeartParticles
	.def	CreateHeartParticles;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateHeartParticles
CreateHeartParticles:
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
	lea	rax, sub_8086CBC[rip]
	xor	r9d, r9d
	mov	edx, 296
	mov	r8d, 16384
	lea	rcx, sub_8086A88[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r8d, r8d
	pxor	xmm0, xmm0
	movzx	r12d, WORD PTR .LC0[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	ebp, DWORD PTR .LC1[rip]
	mov	edi, DWORD PTR .LC2[rip]
	mov	WORD PTR 258[rax], r8w
	lea	rbx, 8[rax]
	lea	rsi, 264[rax]
	mov	BYTE PTR 292[rax], 0
	mov	BYTE PTR 256[rax], 0
	movups	XMMWORD PTR 260[rax], xmm0
	movups	XMMWORD PTR 276[rax], xmm0
.L37:
	mov	ecx, 10
	add	rbx, 64
	call	VramMalloc
	xor	edx, edx
	xor	ecx, ecx
	mov	WORD PTR -24[rbx], r12w
	mov	QWORD PTR -64[rbx], rax
	mov	eax, 384
	mov	DWORD PTR -34[rbx], ebp
	mov	WORD PTR -30[rbx], ax
	mov	DWORD PTR -56[rbx], edi
	mov	WORD PTR -36[rbx], dx
	mov	WORD PTR -28[rbx], cx
	mov	BYTE PTR -22[rbx], 16
	mov	BYTE PTR -19[rbx], 0
	mov	DWORD PTR -40[rbx], 8192
	cmp	rbx, rsi
	jne	.L37
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
.LC0:
	.byte	0
	.byte	-1
	.align 4
.LC1:
	.word	-20
	.word	0
	.align 4
.LC2:
	.word	0
	.word	858
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
