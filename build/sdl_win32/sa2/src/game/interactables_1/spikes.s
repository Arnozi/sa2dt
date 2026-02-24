	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Spikes;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Spikes
TaskDestructor_Spikes:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	HandleSpikeMovementDown.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleSpikeMovementDown.constprop.0.isra.0
HandleSpikeMovementDown.constprop.0.isra.0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, r8w
	movzx	r9d, r9w
	movzx	edx, dl
	mov	rbx, rcx
	sal	eax, 5
	sal	r9d, 5
	mov	r8d, eax
	movzx	eax, BYTE PTR 96[rsp]
	add	r9d, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	add	eax, r8d
	lea	r8d, 0[0+r9*8]
	sal	eax, 3
	mov	esi, r8d
	sub	si, WORD PTR 4[rdx]
	mov	ecx, eax
	sub	cx, WORD PTR [rdx]
	mov	WORD PTR 40[rbx], si
	mov	WORD PTR 38[rbx], cx
	test	BYTE PTR 38[rdi], 64
	je	.L29
.L3:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movsx	esi, r8w
	movsx	edx, ax
	mov	r9, rdi
	mov	rcx, rbx
	mov	r8d, esi
	call	Coll_Player_Platform
	test	eax, eax
	je	.L3
	test	eax, 131072
	je	.L7
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L30
	test	eax, 65536
	jne	.L11
.L9:
	test	eax, 786432
	je	.L3
	xor	al, al
	xor	edx, edx
	or	DWORD PTR 36[rdi], 32
	cwde
	add	DWORD PTR 12[rdi], eax
	xor	eax, eax
	mov	WORD PTR 20[rdi], ax
	mov	WORD PTR 24[rdi], dx
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L7:
	test	eax, 65536
	je	.L9
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L9
	.p2align 4,,10
	.p2align 3
.L11:
	movsx	eax, BYTE PTR 61[rbx]
	movsx	edx, BYTE PTR 27[rdi]
	add	eax, esi
	sub	eax, edx
	sub	eax, 1
.L28:
	sal	eax, 8
	mov	rcx, rdi
	mov	DWORD PTR 22[rdi], 0
	mov	DWORD PTR 16[rdi], eax
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L3
	mov	ecx, 154
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L30:
	movsx	eax, BYTE PTR 63[rbx]
	movsx	edx, BYTE PTR 27[rdi]
	add	eax, esi
	lea	eax, 1[rax+rdx]
	jmp	.L28
	.seh_endproc
	.p2align 4
	.def	Task_SpikesLeftRightMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpikesLeftRightMain
Task_SpikesLeftRightMain:
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
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 8[rbx]
	movzx	edx, BYTE PTR 12[rbx]
	lea	r12, 16[rbx]
	mov	r14, QWORD PTR [rbx]
	movzx	r8d, WORD PTR 10[rbx]
	sal	eax, 5
	add	eax, edx
	movzx	edx, BYTE PTR 1[r14]
	sal	r8d, 5
	sal	eax, 3
	add	r8d, edx
	mov	edx, eax
	sub	dx, WORD PTR [rcx]
	sal	r8d, 3
	mov	WORD PTR 54[rbx], dx
	mov	edi, r8d
	sub	di, WORD PTR 4[rcx]
	cmp	BYTE PTR 0[r13], 5
	mov	WORD PTR 56[rbx], di
	jne	.L32
	mov	rcx, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	ecx, BYTE PTR [rcx]
	or	cl, BYTE PTR 3[r14]
	je	.L33
.L32:
	movsx	edi, ax
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	movsx	r15d, r8w
	mov	rcx, r12
	mov	r8d, r15d
	mov	edx, edi
	call	Coll_Player_Platform
	mov	esi, eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	jne	.L81
	test	esi, 65536
	jne	.L82
.L40:
	test	esi, 131072
	je	.L37
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, esi
	xor	r10d, r10d
	sal	edx, 24
	sar	edx, 16
	add	DWORD PTR 16[rax], edx
	mov	WORD PTR 22[rax], r10w
.L37:
	test	esi, 262144
	je	.L42
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	xor	sil, sil
	xor	r8d, r8d
	xor	r9d, r9d
	movsx	esi, si
	or	DWORD PTR 36[rcx], 32
	add	DWORD PTR 12[rcx], esi
	mov	WORD PTR 20[rcx], r8w
	mov	WORD PTR 24[rcx], r9w
	cmp	BYTE PTR 2[r14], 25
	je	.L44
.L79:
	call	Coll_DamagePlayer
	test	eax, eax
	jne	.L83
.L44:
	movzx	ecx, BYTE PTR 0[r13]
	movzx	edx, WORD PTR 54[rbx]
	cmp	cl, 5
	je	.L84
.L47:
	sub	dx, -128
	cmp	dx, 682
	ja	.L49
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L50
.L49:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
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
.L81:
	test	esi, 65536
	je	.L35
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, esi
	sal	edx, 24
	sar	edx, 16
	add	DWORD PTR 16[rax], edx
	xor	edx, edx
	mov	WORD PTR 22[rax], dx
	mov	edx, DWORD PTR 36[rax]
	mov	QWORD PTR 64[rax], 0
	and	edx, -9
	or	edx, 2
	mov	DWORD PTR 36[rax], edx
.L35:
	test	esi, 131072
	je	.L37
	add	BYTE PTR 76[rbx], 1
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, r15d
	mov	edx, edi
	sub	BYTE PTR 78[rbx], 1
	mov	rcx, r12
	call	Coll_Player_Platform
	sub	BYTE PTR 76[rbx], 1
	add	BYTE PTR 78[rbx], 1
	test	eax, 65536
	je	.L37
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, esi
	xor	edi, edi
	sal	edx, 24
	sar	edx, 16
	add	DWORD PTR 16[rax], edx
	mov	edx, DWORD PTR 36[rax]
	mov	WORD PTR 22[rax], di
	and	edx, -3
	mov	QWORD PTR 64[rax], r12
	or	edx, 8
	mov	DWORD PTR 36[rax], edx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L42:
	test	esi, 524288
	je	.L44
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	xor	sil, sil
	xor	eax, eax
	xor	edx, edx
	movsx	esi, si
	or	DWORD PTR 36[rcx], 32
	add	DWORD PTR 12[rcx], esi
	mov	WORD PTR 20[rcx], ax
	mov	WORD PTR 24[rcx], dx
	cmp	BYTE PTR 2[r14], 25
	je	.L79
	movzx	ecx, BYTE PTR 0[r13]
	movzx	edx, WORD PTR 54[rbx]
	cmp	cl, 5
	jne	.L47
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rax, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	eax, BYTE PTR [rax]
	or	al, BYTE PTR 3[r14]
	jne	.L47
	.p2align 4,,10
	.p2align 3
.L33:
	mov	eax, DWORD PTR 80[rbx]
	test	al, 32
	je	.L48
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rcx], -33
.L48:
	mov	ecx, 5
	test	al, 8
	je	.L47
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rax], -9
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L83:
	mov	ecx, 154
	call	m4aSongNumStart
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L50:
	cmp	cl, 5
	jne	.L51
	mov	rdx, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	eax, BYTE PTR 3[r14]
	or	al, BYTE PTR [rdx]
	je	.L31
.L51:
	mov	rcx, r12
	call	UpdateSpriteAnimation
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
.L82:
	add	BYTE PTR 76[rbx], 1
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, r15d
	mov	edx, edi
	sub	BYTE PTR 78[rbx], 1
	mov	rcx, r12
	call	Coll_Player_Platform
	sub	BYTE PTR 76[rbx], 1
	add	BYTE PTR 78[rbx], 1
	test	eax, 65536
	je	.L40
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, esi
	xor	r11d, r11d
	sal	edx, 24
	sar	edx, 16
	mov	WORD PTR 22[rax], r11w
	add	DWORD PTR 16[rax], edx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L31:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.def	HandleSpikeMovementUp.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleSpikeMovementUp.constprop.0.isra.0
HandleSpikeMovementUp.constprop.0.isra.0:
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
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, r8w
	movzx	r9d, r9w
	mov	rdi, rcx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 5
	sal	r9d, 5
	mov	r8d, eax
	movzx	eax, BYTE PTR 128[rsp]
	add	eax, r8d
	movzx	r8d, BYTE PTR 1[rdx]
	sal	eax, 3
	add	r8d, r9d
	mov	r9d, eax
	sub	r9w, WORD PTR [rcx]
	sal	r8d, 3
	mov	WORD PTR 38[rdi], r9w
	mov	ebx, r8d
	sub	bx, WORD PTR 4[rcx]
	movsx	esi, r8w
	mov	WORD PTR 40[rdi], bx
	movsx	ebx, ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	jne	.L86
	cmp	BYTE PTR 3[rdx], 0
	jne	.L86
	mov	rax, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	cmp	BYTE PTR [rax], 30
	je	.L123
.L86:
	mov	r9, rbp
	mov	r8d, esi
	mov	edx, ebx
	mov	rcx, rdi
	mov	r12d, DWORD PTR 36[rbp]
	mov	r13, QWORD PTR 64[rbp]
	call	Coll_Player_Platform
	test	eax, eax
	je	.L85
	test	eax, 196608
	je	.L92
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L93
	test	eax, 131072
	jne	.L124
.L85:
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
.L92:
	test	eax, 786432
	je	.L85
	xor	al, al
	or	DWORD PTR 36[rbp], 32
	xor	edx, edx
	cwde
	add	DWORD PTR 12[rbp], eax
	xor	eax, eax
	mov	WORD PTR 20[rbp], ax
	mov	WORD PTR 24[rbp], dx
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
.L93:
	test	eax, 65536
	je	.L85
	add	BYTE PTR 60[rdi], 1
	mov	r9, rbp
	mov	r8d, esi
	mov	edx, ebx
	sub	BYTE PTR 62[rdi], 1
	mov	rcx, rdi
	call	Coll_Player_Platform
	sub	BYTE PTR 60[rdi], 1
	add	BYTE PTR 62[rdi], 1
	test	eax, 65536
	jne	.L125
	mov	eax, DWORD PTR 36[rbp]
	mov	QWORD PTR 64[rbp], r13
	mov	edx, eax
	and	eax, -9
	or	edx, 8
	test	r12b, 8
	cmovne	eax, edx
	mov	edx, eax
	and	eax, -3
	or	edx, 2
	and	r12d, 2
	cmovne	eax, edx
	mov	DWORD PTR 36[rbp], eax
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L123:
	mov	r9, rbp
	mov	r8d, esi
	mov	edx, ebx
	mov	rcx, rdi
	call	Coll_Player_Platform
	test	eax, eax
	je	.L86
	movzx	edx, BYTE PTR 27[rbp]
	sub	edx, 1
	test	eax, 786432
	je	.L87
	or	DWORD PTR 36[rbp], 32
.L87:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movsx	edx, dl
	test	BYTE PTR [rax], -128
	jne	.L88
	movsx	eax, BYTE PTR 61[rdi]
	add	eax, esi
	sub	eax, edx
	sal	eax, 8
.L89:
	mov	rcx, rbp
	mov	DWORD PTR 16[rbp], eax
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L86
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L124:
	movsx	eax, BYTE PTR 63[rdi]
	movsx	edx, BYTE PTR 27[rbp]
	xor	r8d, r8d
	mov	rcx, rbp
	mov	WORD PTR 22[rbp], r8w
	add	eax, esi
	mov	QWORD PTR 64[rbp], rdi
	add	eax, edx
	sal	eax, 8
	mov	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR 36[rbp]
	and	eax, -3
	or	eax, 8
	mov	DWORD PTR 36[rbp], eax
	movzx	eax, WORD PTR 20[rbp]
	mov	WORD PTR 24[rbp], ax
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L85
.L95:
	mov	ecx, 154
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L125:
	xor	ecx, ecx
	sal	eax, 8
	mov	WORD PTR 22[rbp], cx
	mov	rcx, rbp
	cwde
	add	DWORD PTR 16[rbp], eax
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L85
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L88:
	movsx	eax, BYTE PTR 63[rdi]
	add	eax, esi
	add	eax, edx
	sal	eax, 8
	jmp	.L89
	.seh_endproc
	.p2align 4
	.def	Task_SpikesUpMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpikesUpMain
Task_SpikesUpMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rbp, QWORD PTR [rbx]
	movzx	edx, WORD PTR 10[rbx]
	lea	rdi, 16[rbx]
	movzx	r8d, WORD PTR 8[rbx]
	movzx	r10d, BYTE PTR 12[rbx]
	movzx	eax, BYTE PTR 1[rbp]
	mov	r9d, edx
	sal	edx, 5
	mov	ecx, r10d
	add	eax, edx
	lea	edx, 0[0+rax*8]
	movzx	eax, r8w
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r10]
	mov	WORD PTR 54[rbx], ax
	mov	eax, edx
	sub	ax, WORD PTR 4[r10]
	mov	WORD PTR 56[rbx], ax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	jne	.L127
	mov	BYTE PTR 32[rsp], cl
	mov	rdx, rbp
	mov	rcx, rdi
	call	HandleSpikeMovementUp.constprop.0.isra.0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 5
	je	.L145
.L130:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L133
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L134
.L133:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L127:
	movzx	edx, BYTE PTR 1[rbp]
	mov	BYTE PTR 32[rsp], cl
	mov	rcx, rdi
	call	HandleSpikeMovementDown.constprop.0.isra.0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 5
	jne	.L130
.L145:
	mov	rax, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	eax, BYTE PTR [rax]
	or	al, BYTE PTR 3[rbp]
	jne	.L130
	mov	eax, DWORD PTR 80[rbx]
	test	eax, 786432
	je	.L132
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rcx], -33
.L132:
	test	eax, 65536
	je	.L130
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rax], -9
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L134:
	cmp	dl, 5
	je	.L135
	mov	rcx, rdi
	call	UpdateSpriteAnimation
.L135:
	mov	rcx, rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_SpikesDownMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpikesDownMain
Task_SpikesDownMain:
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
	mov	r12, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rsi]
	movzx	eax, WORD PTR 10[rsi]
	lea	rbx, 16[rsi]
	movzx	r8d, WORD PTR 8[rsi]
	movzx	r10d, BYTE PTR 12[rsi]
	movzx	edx, BYTE PTR 1[rdi]
	mov	r9d, eax
	sal	eax, 5
	mov	ecx, r10d
	add	edx, eax
	movzx	eax, r8w
	sal	eax, 5
	sal	edx, 3
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	dx, WORD PTR 4[r10]
	sub	ax, WORD PTR [r10]
	cmp	BYTE PTR [r12], 5
	mov	WORD PTR 54[rsi], ax
	mov	WORD PTR 56[rsi], dx
	je	.L166
.L147:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L167
	mov	BYTE PTR 32[rsp], cl
	mov	rdx, rdi
	mov	rcx, rbx
	call	HandleSpikeMovementUp.constprop.0.isra.0
	movzx	edx, BYTE PTR [r12]
	movzx	eax, WORD PTR 54[rsi]
	cmp	dl, 5
	je	.L168
.L151:
	sub	ax, -128
	cmp	ax, 682
	ja	.L153
	movzx	eax, WORD PTR 56[rsi]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L154
.L153:
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L167:
	movzx	edx, BYTE PTR 1[rdi]
	mov	BYTE PTR 32[rsp], cl
	mov	rcx, rbx
	call	HandleSpikeMovementDown.constprop.0.isra.0
	movzx	edx, BYTE PTR [r12]
	movzx	eax, WORD PTR 54[rsi]
	cmp	dl, 5
	jne	.L151
.L168:
	mov	rcx, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	ecx, BYTE PTR [rcx]
	or	cl, BYTE PTR 3[rdi]
	jne	.L151
	mov	ecx, DWORD PTR 80[rsi]
	test	cl, 32
	je	.L152
	.p2align 4,,10
	.p2align 3
.L169:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rdx], -33
.L152:
	and	ecx, 8
	mov	edx, 5
	je	.L151
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rcx], -9
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L166:
	mov	rdx, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	edx, BYTE PTR [rdx]
	or	dl, BYTE PTR 3[rdi]
	jne	.L147
	mov	ecx, DWORD PTR 80[rsi]
	test	cl, 32
	je	.L152
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L154:
	cmp	dl, 5
	jne	.L155
	mov	rax, QWORD PTR .refptr.gSpikesUnknownTimer[rip]
	movzx	eax, BYTE PTR [rax]
	or	al, BYTE PTR 3[rdi]
	je	.L146
.L155:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L146:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	HandleSpikeMovementHidingDown.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleSpikeMovementHidingDown.constprop.0.isra.0
HandleSpikeMovementHidingDown.constprop.0.isra.0:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	ebx, DWORD PTR [rax]
	movsx	edi, BYTE PTR 104[rbp]
	mov	rsi, r8
	movzx	r10d, dl
	mov	r8d, ebx
	movzx	edx, WORD PTR 8[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	and	r8d, 127
	sal	edx, 5
	add	edx, eax
	movzx	eax, WORD PTR 10[rsi]
	sal	edx, 3
	sal	eax, 5
	mov	r12d, edx
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	r12w, WORD PTR [r10]
	mov	WORD PTR 38[rcx], r12w
	mov	r12d, eax
	sub	r12w, WORD PTR 4[r10]
	mov	WORD PTR 40[rcx], r12w
	cmp	r8d, 59
	jbe	.L248
	cmp	r8d, 61
	ja	.L175
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L193
.L247:
	cmp	rcx, QWORD PTR 64[rbp]
	jne	.L193
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	.p2align 4,,10
	.p2align 3
.L193:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	jne	.L249
.L194:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[rcx], 1
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[rcx], ax
	call	UpdateSpriteAnimation
.L178:
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L175:
	and	ebx, 64
	jne	.L179
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L180
.L245:
	cmp	rcx, QWORD PTR 64[rbp]
	je	.L250
.L180:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	je	.L181
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
.L181:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[rcx], 2
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[rcx], ax
	call	UpdateSpriteAnimation
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L248:
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L172
	cmp	rcx, QWORD PTR 64[rbp]
	jne	.L172
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	.p2align 4,,10
	.p2align 3
.L172:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	je	.L173
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
.L173:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L249:
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L179:
	cmp	r8d, 123
	ja	.L182
	cmp	BYTE PTR 48[rcx], 0
	movsx	ebx, ax
	movsx	r12d, dx
	jne	.L251
	mov	r9, rbp
	mov	r8d, ebx
	mov	edx, r12d
	movsx	rdi, edi
	call	Coll_Player_Platform
	mov	DWORD PTR 80[rsi+rdi*4], eax
	test	eax, 131072
	je	.L178
.L237:
	mov	rcx, rbp
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L178
	mov	ecx, 154
	call	m4aSongNumStart
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L251:
	test	dil, dil
	jne	.L184
	mov	DWORD PTR [r9], 1
.L184:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[rcx], 0
	mov	QWORD PTR 80[rsp], rcx
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[rcx], ax
	call	UpdateSpriteAnimation
	mov	rcx, QWORD PTR 80[rsp]
	mov	r8d, ebx
	mov	edx, r12d
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	call	Coll_Player_Entity_Intersection
	mov	rcx, QWORD PTR 80[rsp]
	cmp	eax, 524288
	jne	.L178
	add	BYTE PTR 60[rcx], 1
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, ebx
	mov	edx, r12d
	sub	BYTE PTR 62[rcx], 1
	call	Coll_Player_Platform
	mov	rcx, QWORD PTR 80[rsp]
	sub	BYTE PTR 60[rcx], 1
	add	BYTE PTR 62[rcx], 1
	test	eax, 851968
	je	.L178
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, 1
	sub	dl, BYTE PTR 27[rbp]
	movsx	edx, dl
	test	BYTE PTR [rax], -128
	jne	.L187
	movsx	eax, BYTE PTR 63[rcx]
	add	eax, ebx
	sub	eax, edx
	sal	eax, 8
.L188:
	mov	DWORD PTR 16[rbp], eax
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L182:
	mov	eax, DWORD PTR 36[rbp]
	mov	edx, eax
	and	edx, 8
	cmp	r8d, 125
	ja	.L190
	test	edx, edx
	je	.L180
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L190:
	test	edx, edx
	je	.L193
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L250:
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	jmp	.L180
.L187:
	movsx	eax, BYTE PTR 61[rcx]
	add	eax, ebx
	add	eax, edx
	sal	eax, 8
	jmp	.L188
	.seh_endproc
	.p2align 4
	.def	HandleSpikeMovementHidingUp.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleSpikeMovementHidingUp.constprop.0.isra.0
HandleSpikeMovementHidingUp.constprop.0.isra.0:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r11d, DWORD PTR [rax]
	movsx	edi, BYTE PTR 104[rbp]
	mov	rsi, r8
	mov	r12, rcx
	movzx	ecx, dl
	mov	r8d, r11d
	movzx	edx, WORD PTR 8[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	and	r8d, 127
	sal	edx, 5
	add	edx, eax
	movzx	eax, WORD PTR 10[rsi]
	sal	edx, 3
	sal	eax, 5
	mov	ebx, edx
	add	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	bx, WORD PTR [rcx]
	mov	WORD PTR 38[r12], bx
	mov	ebx, eax
	sub	bx, WORD PTR 4[rcx]
	mov	WORD PTR 40[r12], bx
	cmp	r8d, 59
	jbe	.L353
	cmp	r8d, 61
	ja	.L257
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L283
.L352:
	cmp	r12, QWORD PTR 64[rbp]
	jne	.L283
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	.p2align 4,,10
	.p2align 3
.L283:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	jne	.L354
.L284:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[r12], 1
	mov	rcx, r12
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[r12], ax
	call	UpdateSpriteAnimation
.L260:
	mov	eax, 1
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
.L257:
	and	r11d, 64
	jne	.L261
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L262
.L350:
	cmp	r12, QWORD PTR 64[rbp]
	je	.L355
.L262:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	je	.L263
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
.L263:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[r12], 2
	mov	rcx, r12
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[r12], ax
	call	UpdateSpriteAnimation
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L353:
	mov	eax, DWORD PTR 36[rbp]
	test	al, 8
	je	.L254
	cmp	r12, QWORD PTR 64[rbp]
	jne	.L254
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	.p2align 4,,10
	.p2align 3
.L254:
	movsx	rdi, edi
	lea	rax, 20[rdi]
	test	BYTE PTR 80[rsi+rdi*4], 32
	je	.L255
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
.L255:
	xor	eax, eax
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
.L354:
	and	DWORD PTR 36[rbp], -33
	mov	DWORD PTR [rsi+rax*4], 0
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L261:
	cmp	r8d, 123
	ja	.L264
	cmp	BYTE PTR 48[r12], 0
	movsx	ebx, ax
	movsx	r13d, dx
	jne	.L356
	mov	r9, rbp
	mov	r8d, ebx
	mov	edx, r13d
	mov	rcx, r12
	call	Coll_Player_Platform
	test	eax, eax
	je	.L340
	test	eax, 65536
	je	.L276
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L357
	test	eax, 131072
	jne	.L285
.L279:
	mov	edx, DWORD PTR 36[rbp]
	test	eax, 786432
	je	.L275
	xor	al, al
	or	edx, 32
	xor	ecx, ecx
	cwde
	add	DWORD PTR 12[rbp], eax
	xor	eax, eax
	mov	DWORD PTR 36[rbp], edx
	mov	WORD PTR 20[rbp], ax
	mov	WORD PTR 24[rbp], cx
	.p2align 4,,10
	.p2align 3
.L275:
	movsx	rdi, edi
	mov	DWORD PTR 80[rsi+rdi*4], edx
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L356:
	test	dil, dil
	jne	.L266
	mov	DWORD PTR [r9], 1
.L266:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sSpikesOfZone[rip]
	mov	BYTE PTR 48[r12], 0
	mov	rcx, r12
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 18[r12], ax
	call	UpdateSpriteAnimation
	mov	r8d, ebx
	mov	edx, r13d
	mov	rcx, r12
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	call	Coll_Player_Entity_Intersection
	cmp	eax, 524288
	je	.L358
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, ebx
	mov	edx, r13d
	mov	rcx, r12
	call	Coll_Player_Platform
	test	eax, eax
	je	.L260
	test	eax, 65536
	jne	.L359
	test	eax, 786432
	je	.L260
	xor	al, al
	xor	r8d, r8d
	xor	r9d, r9d
	or	DWORD PTR 36[rbp], 32
	cwde
	mov	WORD PTR 20[rbp], r8w
	add	DWORD PTR 12[rbp], eax
	mov	WORD PTR 24[rbp], r9w
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L264:
	mov	eax, DWORD PTR 36[rbp]
	mov	edx, eax
	and	edx, 8
	cmp	r8d, 125
	ja	.L280
	test	edx, edx
	je	.L262
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L280:
	test	edx, edx
	je	.L283
	jmp	.L352
	.p2align 4,,10
	.p2align 3
.L358:
	add	BYTE PTR 60[r12], 1
	mov	r8d, ebx
	mov	edx, r13d
	mov	rcx, r12
	sub	BYTE PTR 62[r12], 1
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	call	Coll_Player_Platform
	sub	BYTE PTR 60[r12], 1
	add	BYTE PTR 62[r12], 1
	test	eax, 851968
	je	.L260
	movzx	eax, BYTE PTR 27[rbp]
	sub	eax, 1
	movsx	edx, al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	jne	.L269
	movsx	eax, BYTE PTR 61[r12]
	add	eax, ebx
	sub	eax, edx
	sal	eax, 8
.L270:
	mov	DWORD PTR 16[rbp], eax
.L338:
	mov	rcx, rbp
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L260
.L273:
	mov	ecx, 154
	call	m4aSongNumStart
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L355:
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
	jmp	.L262
.L276:
	test	eax, 131072
	je	.L279
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L279
.L285:
	movsx	eax, BYTE PTR 63[r12]
	movsx	edx, BYTE PTR 27[rbp]
	mov	QWORD PTR 64[rbp], r12
	add	eax, ebx
	add	eax, edx
	sal	eax, 8
	mov	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR 36[rbp]
	and	eax, -3
	or	eax, 8
	mov	DWORD PTR 36[rbp], eax
	movzx	eax, WORD PTR 20[rbp]
	mov	WORD PTR 24[rbp], ax
.L343:
	mov	rcx, rbp
	call	Coll_DamagePlayer
	test	eax, eax
	jne	.L273
	.p2align 4,,10
	.p2align 3
.L340:
	mov	edx, DWORD PTR 36[rbp]
	jmp	.L275
.L359:
	add	BYTE PTR 60[r12], 1
	mov	r8d, ebx
	mov	edx, r13d
	mov	rcx, r12
	sub	BYTE PTR 62[r12], 1
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	call	Coll_Player_Platform
	sub	BYTE PTR 60[r12], 1
	add	BYTE PTR 62[r12], 1
	test	eax, 65536
	je	.L260
	jmp	.L338
.L269:
	movsx	eax, BYTE PTR 63[r12]
	add	eax, ebx
	add	eax, edx
	sal	eax, 8
	jmp	.L270
.L357:
	add	BYTE PTR 60[r12], 1
	mov	r9, rbp
	mov	r8d, ebx
	mov	edx, r13d
	sub	BYTE PTR 62[r12], 1
	mov	rcx, r12
	call	Coll_Player_Platform
	sub	BYTE PTR 60[r12], 1
	add	BYTE PTR 62[r12], 1
	test	eax, 65536
	je	.L340
	jmp	.L343
	.seh_endproc
	.p2align 4
	.def	Task_SpikesHidingUpMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpikesHidingUpMain
Task_SpikesHidingUpMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[r9]
	mov	rcx, QWORD PTR [r8]
	movzx	edx, WORD PTR 10[r8]
	mov	DWORD PTR 44[rsp], 0
	movzx	r11d, BYTE PTR 12[r8]
	movzx	eax, BYTE PTR 1[rcx]
	sal	edx, 5
	mov	r10d, r11d
	add	edx, eax
	movzx	eax, WORD PTR 8[r8]
	sal	edx, 3
	sal	eax, 5
	add	eax, r11d
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r11]
	sub	dx, WORD PTR 4[r11]
	mov	WORD PTR 54[r8], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[r8], dx
	seta	al
	cmp	dx, -128
	setl	r11b
	or	al, r11b
	jne	.L366
	cmp	dx, 368
	jle	.L361
.L366:
	mov	BYTE PTR [rcx], r10b
	mov	rcx, r9
	add	rsp, 48
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L361:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	lea	rbx, 16[r8]
	movzx	edx, BYTE PTR 1[rcx]
	lea	r9, 44[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rax], -128
	jne	.L363
	call	HandleSpikeMovementHidingUp.constprop.0.isra.0
.L364:
	test	eax, eax
	jne	.L367
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L363:
	call	HandleSpikeMovementHidingDown.constprop.0.isra.0
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L367:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_SpikesHidingDownMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpikesHidingDownMain
Task_SpikesHidingDownMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[r9]
	mov	rcx, QWORD PTR [r8]
	movzx	edx, WORD PTR 10[r8]
	mov	DWORD PTR 44[rsp], 0
	movzx	r11d, BYTE PTR 12[r8]
	movzx	eax, BYTE PTR 1[rcx]
	sal	edx, 5
	mov	r10d, r11d
	add	edx, eax
	movzx	eax, WORD PTR 8[r8]
	sal	edx, 3
	sal	eax, 5
	add	eax, r11d
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r11]
	sub	dx, WORD PTR 4[r11]
	mov	WORD PTR 54[r8], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[r8], dx
	seta	al
	cmp	dx, -128
	setl	r11b
	or	al, r11b
	jne	.L374
	cmp	dx, 368
	jle	.L369
.L374:
	mov	BYTE PTR [rcx], r10b
	mov	rcx, r9
	add	rsp, 48
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L369:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	lea	rbx, 16[r8]
	movzx	edx, BYTE PTR 1[rcx]
	lea	r9, 44[rsp]
	mov	rcx, rbx
	test	BYTE PTR [rax], -128
	jne	.L371
	call	HandleSpikeMovementHidingDown.constprop.0.isra.0
.L372:
	test	eax, eax
	jne	.L375
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	call	HandleSpikeMovementHidingUp.constprop.0.isra.0
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L375:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spikes_Up
	.def	CreateEntity_Spikes_Up;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spikes_Up
CreateEntity_Spikes_Up:
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
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	ebp, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, Task_SpikesUpMain[rip]
	call	TaskCreate
	mov	edx, ebp
	mov	r9d, 1088
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], bx
	movzx	ebx, bx
	lea	r11, 16[rax]
	mov	WORD PTR 10[rax], si
	sal	ebx, 5
	movzx	esi, si
	mov	QWORD PTR [rax], rdi
	sal	esi, 5
	mov	QWORD PTR 80[rax], 0
	movzx	r10d, BYTE PTR [rdi]
	movzx	r8d, r10b
	mov	ecx, r8d
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	mov	ch, dl
	movzx	edx, r10b
	xor	r10d, r10d
	add	ebx, edx
	mov	WORD PTR 12[rax], cx
	sal	ebx, 3
	mov	WORD PTR 54[rax], bx
	movzx	edx, BYTE PTR 1[rdi]
	add	edx, esi
	sal	edx, 3
	mov	WORD PTR 56[rax], dx
	mov	BYTE PTR [rdi], -2
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	cmp	BYTE PTR [r8], 5
	mov	WORD PTR 58[rax], r9w
	lea	rdx, 72064[rdi]
	mov	WORD PTR 32[rax], r10w
	mov	QWORD PTR 24[rax], rdx
	mov	edx, 542
	je	.L377
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	r8, sSpikesOfZone[rip]
	movzx	edx, BYTE PTR [rdx]
	sar	dl, 2
	movsx	rdx, dl
	movzx	edx, WORD PTR [r8+rdx*2]
.L377:
	xor	ecx, ecx
	mov	WORD PTR 34[rax], dx
	mov	r8d, -256
	xor	edx, edx
	mov	WORD PTR 60[rax], cx
	mov	rcx, r11
	mov	WORD PTR 52[rax], dx
	mov	WORD PTR 64[rax], r8w
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 69[rax], 0
	mov	DWORD PTR 72[rax], -1
	mov	DWORD PTR 48[rax], 8704
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spikes_Down
	.def	CreateEntity_Spikes_Down;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spikes_Down
CreateEntity_Spikes_Down:
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
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	ebp, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, Task_SpikesDownMain[rip]
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	mov	eax, ebp
	mov	WORD PTR 8[rcx], bx
	movzx	ebx, bx
	add	rcx, 16
	mov	WORD PTR -6[rcx], si
	sal	ebx, 5
	movzx	esi, si
	mov	QWORD PTR 64[rcx], 0
	sal	esi, 5
	mov	QWORD PTR -16[rcx], rdi
	movzx	r10d, BYTE PTR [rdi]
	movzx	edx, r10b
	mov	dh, al
	movzx	eax, r10b
	add	ebx, eax
	mov	WORD PTR -4[rcx], dx
	lea	rdx, sSpikesOfZone[rip]
	sal	ebx, 3
	mov	WORD PTR 38[rcx], bx
	movzx	eax, BYTE PTR 1[rdi]
	add	eax, esi
	sal	eax, 3
	mov	WORD PTR 40[rcx], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR [rdi], -2
	add	rax, 72064
	mov	DWORD PTR 42[rcx], 1088
	mov	QWORD PTR 8[rcx], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 50[rcx], 16
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 53[rcx], 0
	mov	DWORD PTR 56[rcx], -1
	sar	al, 2
	mov	DWORD PTR 32[rcx], 10752
	movsx	rax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	edx, -256
	mov	WORD PTR 48[rcx], dx
	mov	WORD PTR 18[rcx], ax
	xor	eax, eax
	mov	WORD PTR 36[rcx], ax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spikes_LeftRight
	.def	CreateEntity_Spikes_LeftRight;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spikes_LeftRight
CreateEntity_Spikes_LeftRight:
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
	lea	rax, TaskDestructor_Spikes[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r13d, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_SpikesLeftRightMain[rip]
	call	TaskCreate
	mov	ecx, r13d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	rbp, 16[rbx]
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR 80[rbx], 0
	sal	edi, 5
	mov	QWORD PTR [rbx], r12
	movzx	eax, BYTE PTR [r12]
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 16
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[r12]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [r12], -2
	call	VramMalloc
	lea	rdx, sSpikesOfZone[rip]
	mov	ecx, -253
	mov	DWORD PTR 58[rbx], 1088
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 64[rbx], cx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	sar	al, 2
	mov	DWORD PTR 72[rbx], -1
	movsx	rax, al
	mov	DWORD PTR 48[rbx], 8704
	movzx	eax, WORD PTR [rdx+rax*2]
	xor	edx, edx
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 34[rbx], ax
	cmp	BYTE PTR 2[r12], 25
	jne	.L382
	mov	DWORD PTR 48[rbx], 9728
.L382:
	mov	rcx, rbp
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spikes_HidingUp
	.def	CreateEntity_Spikes_HidingUp;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spikes_HidingUp
CreateEntity_Spikes_HidingUp:
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
	lea	rax, TaskDestructor_Spikes[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_SpikesHidingUpMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR 80[rbx], 0
	sal	edi, 5
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 16
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	edx, -1
	mov	DWORD PTR 32[rbx], -65536
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1088
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8704
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spikes_HidingDown
	.def	CreateEntity_Spikes_HidingDown;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spikes_HidingDown
CreateEntity_Spikes_HidingDown:
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
	lea	rax, TaskDestructor_Spikes[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_SpikesHidingDownMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR 80[rbx], 0
	sal	edi, 5
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 16
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	edx, -1
	mov	DWORD PTR 32[rbx], -65536
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1088
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 10752
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.globl	sSpikesOfZone
	.section .rdata,"dr"
	.align 16
sSpikesOfZone:
	.word	542
	.word	542
	.word	580
	.word	542
	.word	542
	.word	607
	.word	542
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSpikesUnknownTimer, "dr"
	.globl	.refptr.gSpikesUnknownTimer
	.linkonce	discard
.refptr.gSpikesUnknownTimer:
	.quad	gSpikesUnknownTimer
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
