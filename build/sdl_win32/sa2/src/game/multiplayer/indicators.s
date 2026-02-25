	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_8019CC8;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_8019CC8
TaskDestructor_8019CC8:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_SelfPositionIndicator;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SelfPositionIndicator
Task_SelfPositionIndicator:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.def	Task_8019898;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8019898
Task_8019898:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rax]
	mov	ecx, DWORD PTR [r8]
	mov	r8d, DWORD PTR 4[r8]
	mov	r12, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	edx, BYTE PTR [r12]
	lea	rbx, 16[r12]
	lea	rsi, 2[r12]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR 24[rax]
	movsx	eax, WORD PTR 96[rdx]
	movsx	edx, WORD PTR 98[rdx]
	mov	r9d, eax
	mov	edi, eax
	mov	ebp, edx
	sub	r9d, ecx
	cmp	r9d, 426
	ja	.L5
	mov	r9d, edx
	sub	r9d, r8d
	cmp	r9d, 240
	jbe	.L4
.L5:
	sub	edi, ecx
	sub	ebp, r8d
	sub	di, 213
	sub	ebp, 120
	cmp	ecx, 960
	jg	.L67
	add	ecx, 1440
	add	r8d, 864
.L8:
	mov	r9d, eax
	sub	r9d, ecx
	cmp	r9d, 426
	ja	.L9
	mov	r9d, edx
	sub	r9d, r8d
	cmp	r9d, 240
	jbe	.L4
.L9:
	sub	edx, 120
	sub	eax, 213
	sub	edx, r8d
	mov	r8d, edi
	sub	eax, ecx
	mov	ecx, ebp
	neg	r8w
	mov	r9d, edx
	mov	r10d, eax
	cmovs	r8d, edi
	neg	cx
	cmovs	ecx, ebp
	cmp	cx, r8w
	cmovb	ecx, r8d
	neg	r9d
	cmovs	r9d, edx
	neg	r10d
	cmovs	r10d, eax
	movzx	ecx, cx
	cmp	r9d, r10d
	cmovl	r9d, r10d
	cmp	ecx, r9d
	jle	.L10
	mov	r8d, eax
	mov	edi, eax
	mov	ebp, edx
	neg	r8w
	cmovs	r8d, eax
.L10:
	test	di, di
	je	.L50
	movsx	ecx, bp
	movsx	edx, di
	test	bp, bp
	jne	.L11
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, edx
	shr	ax, 15
	add	eax, edx
	sar	ax
	movsx	edx, ax
	mov	eax, ecx
	shr	ax, 15
	add	eax, ecx
	sar	ax
	movsx	ecx, ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 1
	jbe	.L14
	mov	eax, ecx
	neg	ax
	cmovs	eax, ecx
	cmp	ax, 1
	jbe	.L15
.L11:
	mov	r8d, edx
	mov	eax, ecx
	neg	r8w
	cmovs	r8d, edx
	neg	ax
	cmovs	eax, ecx
	or	eax, r8d
	cmp	ax, 127
	ja	.L16
	cmp	r8w, 1
	jbe	.L14
	.p2align 4,,10
	.p2align 3
.L15:
	mov	eax, ecx
	neg	ax
	cmovs	eax, ecx
	cmp	ax, 1
	ja	.L19
	xor	ecx, ecx
	test	dx, dx
	setle	cl
	sal	ecx, 9
	lea	r8d, 256[rcx]
.L20:
	movsx	eax, di
	movsx	edx, bp
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jg	.L31
	mov	r9d, 24
	mov	edx, 480
.L21:
	mov	WORD PTR 2[r12], r8w
	mov	r8d, 426
	mov	BYTE PTR 66[r12], r9b
	mov	r9d, 120
	mov	WORD PTR 4[r12], dx
	mov	WORD PTR 6[r12], dx
	test	cx, cx
	jne	.L68
.L22:
	mov	rcx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edx, DWORD PTR 48[r12]
	mov	WORD PTR 8[r12], r8w
	mov	WORD PTR 10[r12], r9w
	movzx	eax, BYTE PTR [rcx]
	and	edx, -32
	lea	r8d, 1[rax]
	or	eax, edx
	mov	DWORD PTR 48[r12], eax
	mov	BYTE PTR [rcx], r8b
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	mov	rdx, rsi
	call	TransformSprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L67:
	sub	ecx, 1440
	sub	r8d, 864
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L50:
	movsx	ecx, bp
	movsx	edx, di
	cmp	r8w, 1
	ja	.L15
.L14:
	test	cx, cx
	jle	.L69
	movsx	eax, di
	movsx	edx, bp
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jle	.L32
	mov	r8d, 512
	mov	ecx, 256
.L31:
	mov	r9d, 16
	mov	edx, 64
	cmp	eax, 100663296
	jg	.L21
	mov	edx, 100663296
	sub	edx, eax
	mov	eax, edx
	sar	eax, 16
	imul	edx, eax, 416
	mov	rax, rdx
	imul	rdx, rdx, 1435386465
	shr	rdx, 32
	sub	eax, edx
	shr	eax
	add	edx, eax
	shr	edx, 10
	add	edx, 64
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L68:
	cmp	cx, 256
	je	.L62
	cmp	cx, 512
	je	.L46
	cmp	cx, 768
	je	.L63
	movsx	ecx, cx
	test	di, di
	jle	.L23
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rcx]
	cdqe
	movzx	eax, WORD PTR [r10+rax*2]
	sar	ax, 6
	mov	edx, eax
	je	.L22
	movsx	rax, ecx
	movsx	r9d, dx
	movzx	eax, WORD PTR [r10+rax*2]
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r9d
	cwde
	mov	r9d, eax
	sal	r9d, 4
	sub	r9d, eax
	sar	r9d, 5
	add	r9d, 120
	test	bp, bp
	jle	.L24
	cmp	r9w, 239
	jle	.L22
	mov	eax, 256
	mov	r8d, 213
	sub	eax, ecx
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	je	.L28
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	ecx, dx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	ecx
	cwde
	lea	r8d, [rax+rax*4]
	sar	r8d, 4
	add	r8w, 213
.L28:
	mov	r9d, 240
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L69:
	movsx	edx, di
	movsx	eax, bp
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jle	.L30
	xor	r8d, r8d
	mov	ecx, 768
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L4:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	xor	r8d, r8d
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L19:
	call	sub_8004418
	mov	ecx, eax
	lea	r8d, 256[rcx]
	and	r8w, 1023
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L32:
	mov	eax, 480
	mov	BYTE PTR 66[r12], 24
	mov	DWORD PTR 2[r12], 31457792
	mov	WORD PTR 6[r12], ax
.L62:
	mov	r9d, 240
	mov	r8d, 213
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L30:
	mov	edx, 480
	mov	BYTE PTR 66[r12], 24
	mov	DWORD PTR 2[r12], 31457280
	mov	WORD PTR 6[r12], dx
.L63:
	xor	r9d, r9d
	mov	r8d, 213
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	lea	eax, -512[rcx]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	r8d, WORD PTR [r10+rdx*2]
	sar	r8w, 6
	je	.L22
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	r8d, r8w
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r8d
	cwde
	mov	edx, eax
	sal	edx, 4
	sub	edx, eax
	mov	eax, edx
	sar	eax, 5
	sub	r9d, eax
	test	bp, bp
	jle	.L27
	cmp	r9w, 239
	jle	.L46
	mov	eax, 768
	mov	r8d, 213
	sub	eax, ecx
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	je	.L28
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	edi, dx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	edi
	cwde
	lea	r8d, [rax+rax*4]
	sar	r8d, 4
	add	r8w, 213
	jmp	.L28
.L24:
	mov	eax, 256
	test	r9w, r9w
	jns	.L22
.L66:
	sub	eax, ecx
	mov	r8d, 213
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	je	.L29
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	ecx, dx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	ecx
	cwde
	lea	eax, [rax+rax*4]
	sar	eax, 4
	sub	r8d, eax
.L29:
	xor	r9d, r9d
	jmp	.L22
.L27:
	xor	r8d, r8d
	test	r9w, r9w
	jns	.L22
	mov	eax, 768
	jmp	.L66
	.seh_endproc
	.p2align 4
	.def	Task_801951C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_801951C
Task_801951C:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	edx, BYTE PTR [rdi]
	lea	rbx, 16[rdi]
	lea	rsi, 2[rdi]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movzx	ebp, WORD PTR 96[rdx]
	mov	ecx, DWORD PTR [rax]
	movzx	r12d, WORD PTR 98[rdx]
	mov	edx, DWORD PTR 4[rax]
	movsx	eax, bp
	sub	eax, ecx
	cmp	eax, 426
	ja	.L71
	movsx	eax, r12w
	sub	eax, edx
	cmp	eax, 240
	jbe	.L70
.L71:
	sub	r12d, edx
	sub	ebp, ecx
	sub	r12d, 120
	sub	bp, 213
	je	.L112
	movsx	ecx, r12w
	movsx	edx, bp
	test	r12w, r12w
	jne	.L73
.L112:
	mov	r8d, ebp
	movsx	ecx, r12w
	movsx	edx, bp
	neg	r8w
	cmovs	r8d, ebp
.L75:
	cmp	r8w, 1
	jbe	.L76
.L77:
	mov	eax, ecx
	neg	ax
	cmovs	eax, ecx
	cmp	ax, 1
	ja	.L81
	xor	ecx, ecx
	test	dx, dx
	setle	cl
	sal	ecx, 9
	lea	r8d, 256[rcx]
.L82:
	movsx	eax, bp
	movsx	edx, r12w
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jg	.L93
	mov	r9d, 24
	mov	edx, 480
.L83:
	mov	WORD PTR 2[rdi], r8w
	mov	r8d, 426
	mov	BYTE PTR 66[rdi], r9b
	mov	r9d, 120
	mov	WORD PTR 4[rdi], dx
	mov	WORD PTR 6[rdi], dx
	test	cx, cx
	jne	.L132
.L84:
	mov	rcx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edx, DWORD PTR 48[rdi]
	mov	WORD PTR 8[rdi], r8w
	mov	WORD PTR 10[rdi], r9w
	movzx	eax, BYTE PTR [rcx]
	and	edx, -32
	lea	r8d, 1[rax]
	or	eax, edx
	mov	DWORD PTR 48[rdi], eax
	mov	BYTE PTR [rcx], r8b
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	mov	rdx, rsi
	call	TransformSprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L78:
	mov	eax, edx
	shr	ax, 15
	add	eax, edx
	sar	ax
	movsx	edx, ax
	mov	eax, ecx
	shr	ax, 15
	add	eax, ecx
	sar	ax
	movsx	ecx, ax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 1
	jbe	.L76
	mov	eax, ecx
	neg	ax
	cmovs	eax, ecx
	cmp	ax, 1
	jbe	.L77
.L73:
	mov	r8d, edx
	mov	eax, ecx
	neg	r8w
	cmovs	r8d, edx
	neg	ax
	cmovs	eax, ecx
	or	eax, r8d
	cmp	ax, 127
	ja	.L78
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L81:
	call	sub_8004418
	mov	ecx, eax
	lea	r8d, 256[rcx]
	and	r8w, 1023
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L76:
	test	cx, cx
	jle	.L133
	movsx	eax, bp
	movsx	edx, r12w
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jg	.L134
	mov	eax, 480
	mov	BYTE PTR 66[rdi], 24
	mov	DWORD PTR 2[rdi], 31457792
	mov	WORD PTR 6[rdi], ax
.L124:
	mov	r9d, 240
	mov	r8d, 213
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L134:
	mov	r8d, 512
	mov	ecx, 256
.L93:
	mov	r9d, 16
	mov	edx, 64
	cmp	eax, 100663296
	jg	.L83
	mov	edx, 100663296
	sub	edx, eax
	mov	eax, edx
	sar	eax, 16
	imul	edx, eax, 416
	mov	rax, rdx
	imul	rdx, rdx, 1435386465
	shr	rdx, 32
	sub	eax, edx
	shr	eax
	add	edx, eax
	shr	edx, 10
	add	edx, 64
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L132:
	cmp	cx, 256
	je	.L124
	cmp	cx, 512
	je	.L108
	cmp	cx, 768
	je	.L125
	movsx	ecx, cx
	test	bp, bp
	jle	.L85
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rcx]
	cdqe
	movzx	eax, WORD PTR [r10+rax*2]
	sar	ax, 6
	mov	edx, eax
	je	.L84
	movsx	rax, ecx
	movsx	r9d, dx
	movzx	eax, WORD PTR [r10+rax*2]
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r9d
	cwde
	mov	r9d, eax
	sal	r9d, 4
	sub	r9d, eax
	sar	r9d, 5
	add	r9d, 120
	test	r12w, r12w
	jle	.L86
	cmp	r9w, 239
	jle	.L84
	mov	eax, 256
.L129:
	sub	eax, ecx
	mov	r8d, 213
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	je	.L90
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	ecx, dx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	ecx
	cwde
	lea	r8d, [rax+rax*4]
	sar	r8d, 4
	add	r8w, 213
.L90:
	mov	r9d, 240
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L108:
	xor	r8d, r8d
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L70:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L133:
	movsx	edx, bp
	movsx	eax, r12w
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 65535
	jle	.L92
	xor	r8d, r8d
	mov	ecx, 768
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L92:
	mov	edx, 480
	mov	BYTE PTR 66[rdi], 24
	mov	DWORD PTR 2[rdi], 31457280
	mov	WORD PTR 6[rdi], dx
.L125:
	xor	r9d, r9d
	mov	r8d, 213
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L85:
	lea	eax, -512[rcx]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	r8d, WORD PTR [r10+rdx*2]
	sar	r8w, 6
	je	.L84
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	r8d, r8w
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r8d
	cwde
	mov	edx, eax
	sal	edx, 4
	sub	edx, eax
	mov	eax, edx
	sar	eax, 5
	sub	r9d, eax
	test	r12w, r12w
	jle	.L89
	cmp	r9w, 239
	jle	.L108
	mov	eax, 768
	jmp	.L129
.L86:
	mov	eax, 256
	test	r9w, r9w
	jns	.L84
.L131:
	sub	eax, ecx
	mov	r8d, 213
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 6
	je	.L91
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	ecx, dx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	ecx
	cwde
	lea	eax, [rax+rax*4]
	sar	eax, 4
	sub	r8d, eax
.L91:
	xor	r9d, r9d
	jmp	.L84
.L89:
	xor	r8d, r8d
	test	r9w, r9w
	jns	.L84
	mov	eax, 768
	jmp	.L131
	.seh_endproc
	.p2align 4
	.globl	CreateOpponentPositionIndicator
	.def	CreateOpponentPositionIndicator;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateOpponentPositionIndicator
CreateOpponentPositionIndicator:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r9d, 0
	mov	edx, 80
	mov	r8d, 8193
	cmp	BYTE PTR [rax], 5
	lea	rax, TaskDestructor_8019CC8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	ebx, ecx
	je	.L136
	lea	rcx, Task_801951C[rip]
	call	TaskCreate
.L137:
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	ecx, -256
	xor	r8d, r8d
	add	rdx, 75520
	mov	BYTE PTR [rax], bl
	mov	QWORD PTR 24[rax], rdx
	xor	edx, edx
	mov	WORD PTR 52[rax], dx
	mov	DWORD PTR 58[rax], 64
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 69[rax], bl
	mov	DWORD PTR 72[rax], -1
	mov	DWORD PTR 48[rax], 786528
	mov	DWORD PTR 32[rax], 56557568
	mov	WORD PTR 64[rax], cx
	mov	DWORD PTR 4[rax], 16777472
	mov	WORD PTR 2[rax], r8w
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	lea	rcx, Task_8019898[rip]
	call	TaskCreate
	jmp	.L137
	.seh_endproc
	.p2align 4
	.globl	CreateSelfPositionIndicator
	.def	CreateSelfPositionIndicator;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSelfPositionIndicator
CreateSelfPositionIndicator:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 64
	lea	rcx, Task_SelfPositionIndicator[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	edx, -256
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 75520
	mov	DWORD PTR 42[rcx], 64
	mov	QWORD PTR 8[rcx], rax
	xor	eax, eax
	mov	WORD PTR 36[rcx], ax
	mov	BYTE PTR 50[rcx], 16
	mov	BYTE PTR 53[rcx], 0
	mov	DWORD PTR 56[rcx], -1
	mov	DWORD PTR 32[rcx], 262144
	mov	DWORD PTR 16[rcx], 56557568
	mov	WORD PTR 48[rcx], dx
	add	rsp, 56
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
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
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
