	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	CreateKikiProjectile;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateKikiProjectile
CreateKikiProjectile:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_KikiProj[rip]
	xor	r9d, r9d
	mov	r8d, 16424
	mov	QWORD PTR 32[rsp], rax
	mov	esi, ecx
	mov	edi, edx
	lea	rcx, Task_KikiProjMain[rip]
	mov	edx, 80
	call	TaskCreate
	xor	r9d, r9d
	movsx	edx, si
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 12[rax]
	mov	DWORD PTR 64[rbx], -33554432
	mov	WORD PTR 70[rbx], r9w
	sar	eax, 8
	mov	WORD PTR 72[rbx], si
	cmp	eax, edx
	jge	.L2
	sub	edx, eax
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	cmp	ax, -60
	jl	.L3
.L5:
	mov	WORD PTR 68[rbx], dx
.L4:
	mov	WORD PTR 38[rbx], si
	mov	ecx, 4
	mov	WORD PTR 40[rbx], di
	call	VramMalloc
	mov	edx, -256
	mov	rcx, rbx
	mov	DWORD PTR 16[rbx], 31457280
	mov	QWORD PTR 8[rbx], rax
	xor	eax, eax
	mov	WORD PTR 36[rbx], ax
	mov	DWORD PTR 42[rbx], 1088
	mov	WORD PTR 48[rbx], dx
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L2:
	sub	eax, edx
	sar	eax
	mov	edx, eax
	cmp	ax, 60
	jle	.L5
	mov	ecx, 60
	mov	WORD PTR 68[rbx], cx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	mov	r8d, -60
	mov	WORD PTR 68[rbx], r8w
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	CreateKikiProjectilePiece;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateKikiProjectilePiece
CreateKikiProjectilePiece:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_KikiProj[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], rax
	mov	esi, ecx
	mov	edi, edx
	lea	rcx, Task_ProjPieceMain[rip]
	mov	edx, 80
	call	TaskCreate
	movsx	edx, si
	mov	ecx, 16
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 12[rax]
	mov	DWORD PTR 64[rbx], -33554432
	mov	WORD PTR 38[rbx], si
	sar	eax, 8
	mov	WORD PTR 40[rbx], di
	cmp	eax, edx
	setge	al
	movzx	eax, al
	lea	eax, -1[rax+rax]
	mov	WORD PTR 68[rbx], ax
	call	VramMalloc
	mov	edx, -256
	mov	rcx, rbx
	mov	DWORD PTR 16[rbx], 31522816
	mov	QWORD PTR 8[rbx], rax
	xor	eax, eax
	mov	WORD PTR 36[rbx], ax
	mov	DWORD PTR 42[rbx], 1152
	mov	WORD PTR 48[rbx], dx
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.def	Task_KikiMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_KikiMain
Task_KikiMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	ecx, WORD PTR 8[rbx]
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 16[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	movzx	r8d, WORD PTR 10[rbx]
	sal	ecx, 5
	add	ecx, eax
	movzx	eax, BYTE PTR 1[rbp]
	sal	r8d, 5
	sal	ecx, 3
	add	r8d, eax
	movzx	eax, BYTE PTR 80[rbx]
	add	al, BYTE PTR 81[rbx]
	mov	r10d, ecx
	movsx	r9w, al
	mov	BYTE PTR 81[rbx], al
	movsx	eax, al
	lea	r8d, [r9+r8*8]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r11d, r8d
	sub	r10w, WORD PTR [r9]
	sub	r11w, WORD PTR 4[r9]
	movsx	r9d, BYTE PTR 4[rbp]
	mov	WORD PTR 54[rbx], r10w
	mov	WORD PTR 56[rbx], r11w
	lea	r10d, 0[0+r9*8]
	cmp	eax, r10d
	jg	.L11
	movzx	eax, BYTE PTR 82[rbx]
	mov	BYTE PTR 80[rbx], 1
	add	eax, 1
	mov	BYTE PTR 82[rbx], al
	test	al, 1
	je	.L21
.L13:
	movsx	r13d, cx
	movsx	r12d, r8w
	xor	r9d, r9d
	mov	rcx, rdi
	mov	r8d, r12d
	mov	edx, r13d
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L20
	movzx	edx, WORD PTR 54[rbx]
	lea	eax, 128[rdx]
	cmp	ax, 682
	ja	.L16
	movsx	eax, WORD PTR 56[rbx]
	movsx	ecx, BYTE PTR 81[rbx]
	sub	eax, ecx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L17
.L16:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L20:
	mov	rcx, QWORD PTR [rsi]
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
	movzx	edx, BYTE PTR 6[rbp]
	add	edx, r9d
	sal	edx, 3
	cmp	eax, edx
	jl	.L13
	mov	BYTE PTR 80[rbx], -1
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 48[rbx]
	mov	eax, DWORD PTR 12[rax]
	sar	eax, 8
	cmp	r13d, eax
	mov	eax, ecx
	jg	.L22
	add	edx, 8
	or	ah, 4
	mov	WORD PTR 54[rbx], dx
.L19:
	mov	DWORD PTR 48[rbx], eax
	mov	edx, r12d
	mov	ecx, r13d
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
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
.L21:
	lea	rax, sub_8053A38[rip]
	mov	BYTE PTR 83[rbx], 0
	mov	BYTE PTR 64[rbx], 1
	mov	QWORD PTR 40[rdx], rax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L22:
	and	ah, -5
	jmp	.L19
	.seh_endproc
	.p2align 4
	.def	sub_8053A38;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8053A38
sub_8053A38:
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
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	esi, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	movzx	edi, WORD PTR 10[rbx]
	sal	esi, 5
	add	esi, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	edi, 5
	sal	esi, 3
	add	edi, eax
	movsx	ax, BYTE PTR 81[rbx]
	mov	edx, esi
	movsx	r15d, si
	lea	edi, [rax+rdi*8]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, edi
	movsx	r14d, di
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	r8d, r14d
	mov	WORD PTR 54[rbx], dx
	mov	edx, r15d
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L32
	movzx	edx, WORD PTR 54[rbx]
	lea	eax, 128[rdx]
	cmp	ax, 682
	ja	.L25
	movsx	eax, WORD PTR 56[rbx]
	movsx	ecx, BYTE PTR 81[rbx]
	sub	eax, ecx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L26
.L25:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L32:
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
.L26:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 48[rbx]
	mov	eax, DWORD PTR 12[rax]
	sar	eax, 8
	cmp	r15d, eax
	mov	eax, ecx
	jg	.L33
	add	edx, 8
	or	ah, 4
	mov	WORD PTR 54[rbx], dx
.L28:
	add	BYTE PTR 83[rbx], 1
	mov	edx, r14d
	mov	ecx, r15d
	mov	DWORD PTR 48[rbx], eax
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 83[rbx], 18
	je	.L34
.L29:
	mov	rcx, r12
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L31
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, Task_KikiMain[rip]
	mov	QWORD PTR 40[rax], rsi
	mov	BYTE PTR 64[rbx], 0
.L31:
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
.L33:
	and	ah, -5
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L34:
	lea	edx, 2[rdi]
	movsx	edx, dx
	test	BYTE PTR 49[rbx], 4
	je	.L30
	lea	ecx, -4[rsi]
	movsx	ecx, cx
	call	CreateKikiProjectile
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L30:
	lea	ecx, 9[rsi]
	movsx	ecx, cx
	call	CreateKikiProjectile
	jmp	.L29
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_KikiProj;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_KikiProj
TaskDestructor_KikiProj:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_KikiProjMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_KikiProjMain
Task_KikiProjMain:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 66[rbx]
	lea	edx, 40[rax]
	movzx	eax, WORD PTR 68[rbx]
	add	ax, WORD PTR 70[rbx]
	movsx	esi, ax
	mov	WORD PTR 70[rbx], ax
	mov	edi, edx
	sar	ax, 15
	imul	esi, esi, 26215
	sar	di, 8
	add	di, WORD PTR 40[rbx]
	mov	WORD PTR 66[rbx], dx
	mov	WORD PTR 40[rbx], di
	sar	esi, 20
	sub	esi, eax
	add	si, WORD PTR 72[rbx]
	mov	WORD PTR 38[rbx], si
	test	dx, dx
	jg	.L41
.L37:
	movsx	r13d, di
	movsx	r12d, si
	mov	rcx, rbx
	mov	r8d, r13d
	mov	edx, r12d
	call	Coll_Player_Projectile
	test	eax, eax
	jne	.L42
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, DWORD PTR 38[rbx]
	mov	rcx, rbx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	mov	WORD PTR 38[rbx], si
	mov	WORD PTR 40[rbx], di
	add	rsp, 56
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
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	movsx	ecx, di
	movsx	edx, si
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], 0
	mov	r8d, 1
	mov	QWORD PTR 40[rsp], rax
	call	sub_801F07C
	mov	edi, eax
	test	eax, eax
	js	.L38
	movzx	edi, WORD PTR 40[rbx]
	movzx	esi, WORD PTR 38[rbx]
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L42:
	mov	eax, 477
	mov	edx, -256
	mov	ecx, r12d
	mov	WORD PTR 48[rbx], dx
	mov	edx, r13d
	mov	WORD PTR 18[rbx], ax
	call	CreateKikiProjectilePiece
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L38:
	add	di, WORD PTR 40[rbx]
	cmp	WORD PTR 64[rbx], 0
	mov	WORD PTR 40[rbx], di
	jne	.L39
	movzx	eax, WORD PTR 66[rbx]
	mov	ecx, 1
	movzx	esi, WORD PTR 38[rbx]
	mov	WORD PTR 64[rbx], cx
	sar	ax, 2
	neg	eax
	mov	WORD PTR 66[rbx], ax
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, Task_KikiProjSplit[rip]
	movzx	esi, WORD PTR 38[rbx]
	mov	QWORD PTR 40[rax], rcx
	mov	DWORD PTR 64[rbx], 0
	jmp	.L37
	.seh_endproc
	.p2align 4
	.def	Task_KikiProjSplit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_KikiProjSplit
Task_KikiProjSplit:
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
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movd	xmm6, DWORD PTR 38[rbx]
	movzx	eax, WORD PTR 64[rbx]
	pextrw	edi, xmm6, 1
	lea	edx, 1[rax]
	pextrw	esi, xmm6, 0
	mov	WORD PTR 64[rbx], dx
	movsx	edi, di
	movsx	esi, si
	cmp	ax, 95
	ja	.L46
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, rbx
	call	Coll_Player_Projectile
	test	eax, eax
	jne	.L46
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, DWORD PTR 38[rbx]
	mov	rcx, rbx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	mov	ecx, esi
	mov	edx, edi
	call	CreateKikiProjectilePiece
	mov	rcx, QWORD PTR 0[rbp]
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_ProjPieceMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ProjPieceMain
Task_ProjPieceMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movd	xmm6, DWORD PTR 38[rbx]
	cmp	DWORD PTR 56[rbx], -1
	movdqu	xmm0, xmm6
	je	.L48
	mov	rax, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	cmp	DWORD PTR 72[rax], -1
	je	.L48
	movsx	ecx, BYTE PTR 60[rbx]
	movsx	edx, BYTE PTR 76[rax]
	pextrw	r8d, xmm6, 0
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	movsx	r8d, r8w
	add	ecx, r8d
	mov	r9d, DWORD PTR 12[r10]
	sar	r9d, 8
	add	edx, r9d
	cmp	ecx, edx
	jle	.L60
.L49:
	movsx	edx, BYTE PTR 78[rax]
	movdqu	xmm0, xmm6
	add	edx, r9d
	cmp	edx, ecx
	jl	.L48
.L50:
	mov	r9d, DWORD PTR 16[r10]
	movsx	ecx, BYTE PTR 61[rbx]
	pextrw	r8d, xmm6, 1
	movsx	edx, BYTE PTR 77[rax]
	movsx	r8d, r8w
	sar	r9d, 8
	add	ecx, r8d
	add	edx, r9d
	cmp	ecx, edx
	jle	.L61
.L51:
	movsx	eax, BYTE PTR 79[rax]
	movdqu	xmm0, xmm6
	add	eax, r9d
	cmp	eax, ecx
	jge	.L52
	.p2align 4,,10
	.p2align 3
.L48:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, rbx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	test	eax, eax
	je	.L62
	mov	rcx, rbx
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	mov	rcx, QWORD PTR [rsi]
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L60:
	movsx	r11d, BYTE PTR 62[rbx]
	add	r8d, r11d
	cmp	r8d, edx
	jge	.L50
	cmp	ecx, edx
	jne	.L48
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L61:
	movsx	r11d, BYTE PTR 63[rbx]
	add	r8d, r11d
	cmp	r8d, edx
	jl	.L63
.L52:
	mov	rcx, r10
	call	Coll_DamagePlayer
	movd	xmm0, DWORD PTR 38[rbx]
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L63:
	movdqu	xmm0, xmm6
	cmp	ecx, edx
	jne	.L48
	jmp	.L51
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Kiki
	.def	CreateEntity_Kiki;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Kiki
CreateEntity_Kiki:
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
	mov	r8d, 16416
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_KikiMain[rip]
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
	mov	DWORD PTR 80[rbx], 1
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 20
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	edx, -256
	lea	rcx, 16[rbx]
	mov	DWORD PTR 32[rbx], 31391744
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
