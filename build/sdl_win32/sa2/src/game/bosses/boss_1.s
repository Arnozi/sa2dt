	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	StateHandler_HammerReset;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerReset
StateHandler_HammerReset:
	.seh_endprologue
	mov	edx, 768
	lea	r10, gUnknown_080D7A78[rip+18]
	mov	eax, DWORD PTR 148[rcx]
	sub	eax, 8
	cmp	eax, edx
	cmovl	eax, edx
	xor	edx, edx
	mov	DWORD PTR 148[rcx], eax
	mov	DWORD PTR 116[rcx], eax
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r8d, DWORD PTR 120[rcx+rdx*2]
	movsx	r9d, WORD PTR [r10+rdx]
	sub	eax, r8d
	imul	eax, r9d
	sar	eax, 8
	add	eax, r8d
	mov	DWORD PTR 120[rcx+rdx*2], eax
	add	rdx, 2
	cmp	rdx, 14
	jne	.L2
	mov	eax, DWORD PTR 172[rcx]
	sub	eax, 1
	je	.L3
	mov	DWORD PTR 172[rcx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movabs	rax, 13194139533312
	movabs	rdx, 39582418606080
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	mov	DWORD PTR 172[rcx], 10
	mov	QWORD PTR 84[rcx], rax
	movabs	rax, 65970697678848
	mov	QWORD PTR 100[rcx], rax
	mov	eax, DWORD PTR 164[rcx]
	mov	QWORD PTR 92[rcx], rdx
	movabs	rdx, 92358976751616
	test	al, 2
	mov	QWORD PTR 108[rcx], rdx
	lea	edx, [rax+rax]
	mov	eax, 1
	cmove	eax, edx
	movups	XMMWORD PTR 116[rcx], xmm0
	mov	DWORD PTR 160[rcx], 1
	mov	DWORD PTR 148[rcx], 768
	mov	DWORD PTR 164[rcx], eax
	movups	XMMWORD PTR 132[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerExtend;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerExtend
StateHandler_HammerExtend:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, DWORD PTR 164[rcx]
	test	r9b, 1
	jne	.L15
	mov	eax, 1
	xor	edx, edx
.L10:
	add	edx, 1
	add	eax, eax
	cmp	dl, 5
	je	.L11
	movsx	r8d, ax
	test	r8d, r9d
	je	.L10
	movzx	edx, dl
	lea	rax, gUnknown_080D7A98[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
.L11:
	lea	r8d, [rax+rax]
	lea	edx, 0[0+rax*4]
	pxor	xmm1, xmm1
	movdqu	xmm4, XMMWORD PTR 100[rcx]
	lea	r11d, [r8+rax]
	lea	ebx, [rdx+rax]
	movd	xmm2, r8d
	movdqu	xmm5, XMMWORD PTR 84[rcx]
	lea	r10d, 0[0+rax*8]
	lea	r9d, [r11+r11]
	movd	xmm0, edx
	sub	r10d, eax
	movd	xmm3, r9d
	pinsrw	xmm1, eax, 1
	pinsrw	xmm2, r11d, 1
	pinsrw	xmm0, ebx, 1
	pinsrw	xmm3, r10d, 1
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm1, xmm0
	movd	xmm0, eax
	mov	eax, DWORD PTR 172[rcx]
	punpcklwd	xmm0, xmm0
	pshufd	xmm0, xmm0, 0
	paddw	xmm0, xmm1
	pxor	xmm1, xmm1
	pcmpgtw	xmm1, xmm0
	movdqu	xmm2, xmm0
	punpckhwd	xmm2, xmm1
	punpcklwd	xmm0, xmm1
	paddd	xmm2, xmm4
	paddd	xmm0, xmm5
	movups	XMMWORD PTR 84[rcx], xmm0
	movups	XMMWORD PTR 100[rcx], xmm2
	sub	eax, 1
	je	.L13
	mov	DWORD PTR 172[rcx], eax
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	DWORD PTR 172[rcx], 15
	mov	DWORD PTR 160[rcx], 2
	pop	rbx
	ret
.L15:
	mov	eax, 576
	jmp	.L11
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerHold;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerHold
StateHandler_HammerHold:
	.seh_endprologue
	xor	edx, edx
	lea	r10, gUnknown_080D7A78[rip+18]
	mov	eax, DWORD PTR 148[rcx]
	add	eax, 8
	mov	DWORD PTR 148[rcx], eax
	mov	DWORD PTR 116[rcx], eax
	.p2align 4,,10
	.p2align 3
.L19:
	mov	r8d, DWORD PTR 120[rcx+rdx*2]
	movsx	r9d, WORD PTR [r10+rdx]
	sub	eax, r8d
	imul	eax, r9d
	sar	eax, 8
	add	eax, r8d
	mov	DWORD PTR 120[rcx+rdx*2], eax
	add	rdx, 2
	cmp	rdx, 14
	jne	.L19
	mov	r8d, DWORD PTR 164[rcx]
	test	r8b, 1
	jne	.L27
	mov	eax, 1
	xor	edx, edx
.L21:
	add	edx, 1
	add	eax, eax
	cmp	dl, 5
	je	.L22
	test	eax, r8d
	je	.L21
	movzx	edx, dl
	lea	rax, gUnknown_080D7A98[rip]
	movsx	eax, WORD PTR [rax+rdx*2]
	add	eax, eax
.L22:
	mov	edx, DWORD PTR 172[rcx]
	lea	r8d, -1[rdx]
	cmp	edx, 57
	ja	.L31
	movdqu	xmm2, XMMWORD PTR 84[rcx]
	movd	xmm4, eax
	movdqu	xmm3, XMMWORD PTR .LC1[rip]
	pshufd	xmm0, xmm4, 0
	psubd	xmm2, xmm0
	movdqu	xmm1, xmm2
	pcmpgtd	xmm1, xmm3
	pand	xmm2, xmm1
	pandn	xmm1, xmm3
	por	xmm1, xmm2
	movdqu	xmm2, XMMWORD PTR .LC2[rip]
	movups	XMMWORD PTR 84[rcx], xmm1
	movdqu	xmm1, XMMWORD PTR 100[rcx]
	psubd	xmm1, xmm0
	movdqu	xmm0, xmm1
	pcmpgtd	xmm0, xmm2
	pand	xmm1, xmm0
	pandn	xmm0, xmm2
	por	xmm0, xmm1
	movups	XMMWORD PTR 100[rcx], xmm0
	test	r8d, r8d
	jne	.L31
	mov	DWORD PTR 172[rcx], 80
	mov	DWORD PTR 160[rcx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	mov	DWORD PTR 172[rcx], r8d
	ret
.L27:
	mov	eax, 1152
	jmp	.L22
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerDrag;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerDrag
StateHandler_HammerDrag:
	.seh_endprologue
	mov	edx, DWORD PTR 164[rcx]
	test	dl, 1
	jne	.L41
	mov	r9d, 1
	xor	eax, eax
.L34:
	add	eax, 1
	add	r9d, r9d
	cmp	eax, 5
	je	.L35
	test	r9d, edx
	je	.L34
	cdqe
	lea	rdx, gUnknown_080D7A98[rip]
	movzx	r9d, WORD PTR [rdx+rax*2]
	sar	r9w, 2
	movsx	r9d, r9w
.L35:
	mov	r8d, r9d
	xor	eax, eax
	lea	r11, gUnknown_080D7A58[rip]
	.p2align 4,,10
	.p2align 3
.L38:
	mov	edx, DWORD PTR 84[rcx+rax]
	add	r8d, r9d
	mov	r10d, DWORD PTR [r11+rax]
	sub	edx, r8d
	mov	DWORD PTR 84[rcx+rax], edx
	cmp	edx, r10d
	jge	.L37
	mov	DWORD PTR 84[rcx+rax], r10d
	mov	DWORD PTR 172[rcx], 68
	mov	DWORD PTR 160[rcx], 5
.L37:
	add	rax, 4
	cmp	rax, 32
	jne	.L38
	mov	eax, DWORD PTR 172[rcx]
	sub	eax, 1
	je	.L39
	mov	DWORD PTR 172[rcx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	mov	DWORD PTR 172[rcx], 68
	mov	DWORD PTR 160[rcx], 5
	ret
.L41:
	mov	r9d, 144
	jmp	.L35
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerRetract;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerRetract
StateHandler_HammerRetract:
	.seh_endprologue
	mov	edx, 768
	lea	r10, gUnknown_080D7A78[rip]
	mov	eax, DWORD PTR 148[rcx]
	add	eax, 12
	cmp	eax, edx
	cmovg	eax, edx
	mov	edx, 1
	mov	DWORD PTR 148[rcx], eax
	mov	DWORD PTR 116[rcx], eax
	.p2align 4,,10
	.p2align 3
.L46:
	mov	r8d, DWORD PTR 116[rcx+rdx*4]
	movsx	r9d, WORD PTR [r10+rdx*2]
	sub	eax, r8d
	imul	eax, r9d
	sar	eax, 8
	add	eax, r8d
	mov	DWORD PTR 116[rcx+rdx*4], eax
	add	rdx, 1
	cmp	rdx, 8
	jne	.L46
	mov	eax, DWORD PTR 172[rcx]
	sub	eax, 1
	je	.L47
	mov	DWORD PTR 172[rcx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	mov	DWORD PTR 172[rcx], 80
	mov	DWORD PTR 160[rcx], 0
	ret
	.seh_endproc
	.p2align 4
	.def	PhysicsHandler_Falling;	.scl	3;	.type	32;	.endef
	.seh_proc	PhysicsHandler_Falling
PhysicsHandler_Falling:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 6016
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	add	DWORD PTR 156[rax], 288
	mov	edx, DWORD PTR 152[rax]
	mov	ecx, DWORD PTR 156[rax]
	add	WORD PTR 10[rax], 64
	add	edx, 288
	cmp	ecx, r8d
	cmovg	ecx, r8d
	mov	DWORD PTR 156[rax], ecx
	mov	ecx, 6016
	cmp	edx, ecx
	cmovg	edx, ecx
	mov	DWORD PTR 152[rax], edx
	ret
	.seh_endproc
	.p2align 4
	.def	UpdateArmSegments;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateArmSegments
UpdateArmSegments:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	lea	r10, sQArmSegmentAngleOffsets[rip]
	mov	eax, DWORD PTR 76[rcx]
	add	eax, 8
	and	eax, 1023
	mov	DWORD PTR 76[rcx], eax
	movsx	eax, BYTE PTR 1[rdx+rax*2]
	mov	edx, 1
	mov	DWORD PTR 80[rcx], eax
	mov	DWORD PTR 44[rcx], eax
	.p2align 4,,10
	.p2align 3
.L52:
	mov	r8d, DWORD PTR 44[rcx+rdx*4]
	movsx	r9d, WORD PTR [r10+rdx*2]
	sub	eax, r8d
	imul	eax, r9d
	sub	eax, 3072
	sar	eax, 8
	add	eax, r8d
	mov	DWORD PTR 44[rcx+rdx*4], eax
	add	rdx, 1
	cmp	rdx, 8
	jne	.L52
	ret
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerAim;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerAim
StateHandler_HammerAim:
	.seh_endprologue
	mov	eax, DWORD PTR 172[rcx]
	sub	eax, 1
	je	.L55
	mov	DWORD PTR 172[rcx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	mov	DWORD PTR 172[rcx], 60
	mov	DWORD PTR 160[rcx], 3
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_EggHammerTankII;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggHammerTankII
TaskDestructor_EggHammerTankII:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 744[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 816[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 880[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 944[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1008[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1072[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1136[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1216[rbx]
	test	rcx, rcx
	je	.L58
	call	VramFree
.L58:
	mov	rcx, QWORD PTR 1280[rbx]
	test	rcx, rcx
	je	.L59
	call	VramFree
.L59:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	PhysicsHandler_OnTerrain;	.scl	3;	.type	32;	.endef
	.seh_proc	PhysicsHandler_OnTerrain
PhysicsHandler_OnTerrain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, 8
	mov	r8d, 1
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	esi, DWORD PTR 4[rbx]
	mov	ecx, DWORD PTR 156[rbx]
	mov	WORD PTR 10[rbx], ax
	mov	eax, DWORD PTR [rbx]
	mov	QWORD PTR 32[rsp], rdi
	add	ecx, esi
	add	ecx, 3712
	lea	edx, 6144[rax]
	sar	edx, 8
	sar	ecx, 8
	call	sub_801F100
	test	eax, eax
	jle	.L79
	mov	eax, DWORD PTR 156[rbx]
	mov	ecx, DWORD PTR 4[rbx]
	add	eax, 288
	mov	DWORD PTR 156[rbx], eax
.L69:
	mov	edx, 4736
	sub	edx, eax
	lea	edx, [rdx+rdx*2]
	sal	edx, 5
	sar	edx, 8
	sub	ecx, edx
	mov	DWORD PTR 4[rbx], ecx
	cmp	eax, 3711
	jg	.L70
	mov	DWORD PTR 156[rbx], 3712
.L71:
	mov	eax, DWORD PTR [rbx]
	add	esi, DWORD PTR 152[rbx]
	mov	QWORD PTR 32[rsp], rdi
	mov	r9d, 8
	lea	ecx, 3712[rsi]
	mov	r8d, 1
	lea	edx, -5632[rax]
	sar	ecx, 8
	sar	edx, 8
	call	sub_801F100
	test	eax, eax
	jle	.L80
	mov	eax, DWORD PTR 152[rbx]
	mov	ecx, DWORD PTR 4[rbx]
	add	eax, 288
	mov	DWORD PTR 152[rbx], eax
.L74:
	mov	edx, 4736
	sub	edx, eax
	lea	edx, [rdx+rdx*2]
	sal	edx, 5
	sar	edx, 8
	sub	ecx, edx
	mov	DWORD PTR 4[rbx], ecx
	cmp	eax, 3711
	jg	.L75
	mov	DWORD PTR 152[rbx], 3712
.L66:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	cmp	eax, 6016
	jle	.L71
	mov	DWORD PTR 156[rbx], 6016
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L75:
	cmp	eax, 6016
	jle	.L66
	mov	DWORD PTR 152[rbx], 6016
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	mov	ecx, DWORD PTR 4[rbx]
	mov	r8d, eax
	mov	edx, 616
	sal	r8d, 6
	add	ecx, r8d
	cmp	eax, -7
	jl	.L68
	neg	eax
	lea	rdx, gUnknown_080D7A18[rip]
	movsx	r9, eax
	movsx	edx, WORD PTR [rdx+r9*2]
	imul	edx, eax
	add	edx, r8d
.L68:
	mov	eax, DWORD PTR 156[rbx]
	sub	eax, edx
	mov	DWORD PTR 156[rbx], eax
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L80:
	mov	ecx, DWORD PTR 4[rbx]
	mov	r8d, eax
	mov	edx, 616
	sal	r8d, 6
	add	ecx, r8d
	cmp	eax, -7
	jl	.L73
	neg	eax
	lea	rdx, gUnknown_080D7A18[rip]
	movsx	r9, eax
	movsx	edx, WORD PTR [rdx+r9*2]
	imul	edx, eax
	add	edx, r8d
.L73:
	mov	eax, DWORD PTR 152[rbx]
	sub	eax, edx
	mov	DWORD PTR 152[rbx], eax
	jmp	.L74
	.seh_endproc
	.p2align 4
	.def	IsBossTouchingTerrain;	.scl	3;	.type	32;	.endef
	.seh_proc	IsBossTouchingTerrain
IsBossTouchingTerrain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, 8
	mov	r8d, 1
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR [rbx]
	mov	ecx, DWORD PTR 156[rbx]
	add	ecx, DWORD PTR 4[rbx]
	mov	QWORD PTR 32[rsp], rsi
	lea	edx, 6144[rax]
	add	ecx, 3712
	sar	edx, 8
	sar	ecx, 8
	call	sub_801F100
	mov	edx, eax
	mov	eax, 1
	test	edx, edx
	jle	.L81
	mov	eax, DWORD PTR [rbx]
	mov	ecx, DWORD PTR 152[rbx]
	mov	r9d, 8
	mov	r8d, 1
	add	ecx, DWORD PTR 4[rbx]
	mov	QWORD PTR 32[rsp], rsi
	lea	edx, -5632[rax]
	add	ecx, 3712
	sar	edx, 8
	sar	ecx, 8
	call	sub_801F100
	test	eax, eax
	setle	al
.L81:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	HandleBossHit;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleBossHit
HandleBossHit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 176[rcx]
	mov	rbx, rcx
	test	al, al
	je	.L84
	sub	eax, 1
	mov	BYTE PTR 176[rcx], al
	test	al, 1
	jne	.L93
	mov	ecx, 235
	call	m4aSongNumStart
.L87:
	movzx	eax, BYTE PTR 176[rbx]
	mov	ecx, 629
	mov	BYTE PTR 177[rbx], 30
	mov	WORD PTR 954[rbx], cx
	test	al, al
	jne	.L88
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 984[rbx], 3
	mov	ecx, DWORD PTR [rax]
	lea	edx, 1000[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L89
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L89
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L89:
	mov	BYTE PTR 985[rbx], -1
.L84:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L93:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L88:
	mov	edx, -254
	mov	WORD PTR 984[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 28
	je	.L84
	cmp	al, 4
	jne	.L84
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DestructionScene_Main;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DestructionScene_Main
Task_DestructionScene_Main:
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
	sub	rsp, 136
	.seh_stackalloc	136
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	movups	XMMWORD PTR 112[rsp], xmm7
	.seh_savexmm	xmm7, 112
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [r12]
	mov	rsi, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 200[rsi]
	test	eax, eax
	jns	.L95
	mov	DWORD PTR 200[rsi], 0
	xor	eax, eax
.L95:
	mov	edi, DWORD PTR 204[rsi]
	movd	xmm0, eax
	movq	xmm1, QWORD PTR 192[rsi]
	mov	r9d, 8
	mov	rbp, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r8d, 1
	lea	edx, 64[rdi]
	movd	xmm5, edx
	mov	DWORD PTR 204[rsi], edx
	punpckldq	xmm0, xmm5
	paddd	xmm0, xmm1
	movq	QWORD PTR 192[rsi], xmm0
	pshufd	xmm7, xmm0, 0xe5
	movd	ecx, xmm7
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbp
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 28
	call	sub_801F100
	movzx	edx, BYTE PTR 732[rsi]
	mov	edi, eax
	test	dl, dl
	je	.L96
	mov	ecx, DWORD PTR 196[rsi]
	mov	eax, DWORD PTR 152[rsi]
	movd	xmm0, DWORD PTR 192[rsi]
	add	eax, ecx
	movd	xmm2, eax
	movdqu	xmm1, xmm0
	mov	eax, DWORD PTR 156[rsi]
	punpckldq	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC3[rip]
	add	eax, ecx
	paddd	xmm1, xmm2
	movd	xmm5, eax
	movq	xmm2, QWORD PTR .LC4[rip]
	punpckldq	xmm0, xmm5
	paddd	xmm0, xmm2
	movq	QWORD PTR 632[rsi], xmm1
	movq	QWORD PTR 680[rsi], xmm1
	movq	QWORD PTR 656[rsi], xmm0
	movq	QWORD PTR 704[rsi], xmm0
	test	edi, edi
	js	.L266
.L118:
	mov	eax, -32
	lea	rbx, 248[rsi]
	mov	edi, 16
	movd	xmm6, eax
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L108:
	mov	eax, DWORD PTR 16[rbx]
	test	eax, eax
	jne	.L110
	mov	eax, DWORD PTR 20[rbx]
	test	eax, eax
	je	.L110
	sub	eax, 1
	mov	DWORD PTR 20[rbx], eax
.L110:
	mov	eax, DWORD PTR 204[rbx]
	mov	edx, DWORD PTR 200[rbx]
	lea	ecx, 40[rax]
	mov	DWORD PTR 204[rbx], ecx
	test	edx, edx
	jle	.L267
	add	edx, DWORD PTR 192[rbx]
	mov	DWORD PTR 192[rbx], edx
.L112:
	add	ecx, DWORD PTR 196[rbx]
	sar	edx, 8
	mov	r9d, 8
	mov	r8d, 1
	mov	DWORD PTR 196[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], rbp
	add	ecx, 5
	call	sub_801F100
	test	eax, eax
	js	.L268
.L113:
	mov	eax, DWORD PTR 208[rbx]
	test	eax, eax
	jne	.L115
	mov	eax, DWORD PTR 212[rbx]
	test	eax, eax
	je	.L115
	sub	eax, 1
	mov	DWORD PTR 212[rbx], eax
.L115:
	add	edi, 1
	add	rbx, 24
	cmp	edi, 24
	je	.L269
.L116:
	mov	eax, DWORD PTR 12[rbx]
	mov	edx, DWORD PTR 8[rbx]
	lea	ecx, 32[rax]
	mov	DWORD PTR 12[rbx], ecx
	test	edx, edx
	jle	.L270
	add	edx, DWORD PTR [rbx]
	mov	DWORD PTR [rbx], edx
.L107:
	add	ecx, DWORD PTR 4[rbx]
	sar	edx, 8
	mov	r9d, 8
	mov	r8d, 1
	mov	DWORD PTR 4[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], rbp
	add	ecx, 5
	call	sub_801F100
	test	eax, eax
	jns	.L108
	mov	edx, DWORD PTR 16[rbx]
	test	edx, edx
	je	.L109
	sub	edx, 1
	mov	DWORD PTR 16[rbx], edx
.L109:
	sal	eax, 8
	movq	xmm1, QWORD PTR 4[rbx]
	movd	xmm0, eax
	lea	eax, -32[rdi]
	imul	eax, DWORD PTR 12[rbx]
	punpckldq	xmm0, xmm6
	paddd	xmm0, xmm1
	sal	eax, 2
	sar	eax, 8
	movq	QWORD PTR 4[rbx], xmm0
	mov	DWORD PTR 12[rbx], eax
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L268:
	mov	edx, DWORD PTR 208[rbx]
	test	edx, edx
	je	.L114
	sub	edx, 1
	mov	DWORD PTR 208[rbx], edx
.L114:
	movq	xmm1, QWORD PTR 196[rbx]
	sal	eax, 8
	movd	xmm0, eax
	mov	eax, DWORD PTR 204[rbx]
	punpckldq	xmm0, xmm6
	imul	eax, edi
	paddd	xmm0, xmm1
	movq	QWORD PTR 196[rbx], xmm0
	neg	eax
	sal	eax, 2
	sar	eax, 8
	mov	DWORD PTR 204[rbx], eax
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L267:
	mov	edx, DWORD PTR 192[rbx]
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L270:
	mov	edx, DWORD PTR [rbx]
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L269:
	mov	eax, DWORD PTR 220[rsi]
	movd	xmm0, DWORD PTR 216[rsi]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 208[rsi]
	add	eax, 96
	movd	xmm5, eax
	mov	DWORD PTR 220[rsi], eax
	punpckldq	xmm0, xmm5
	paddd	xmm0, xmm1
	movq	QWORD PTR 208[rsi], xmm0
	pshufd	xmm7, xmm0, 0xe5
	movd	ecx, xmm7
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbp
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 24
	call	sub_801F100
	mov	ebx, eax
	test	eax, eax
	js	.L119
	mov	edx, DWORD PTR 224[rsi]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
.L120:
	movzx	eax, WORD PTR 728[rsi]
	test	edx, edx
	je	.L126
	add	eax, 48
	and	ax, 1023
.L127:
	mov	WORD PTR 728[rsi], ax
	mov	eax, DWORD PTR 168[rsi]
	lea	edx, 1[rax]
	movsx	rax, edx
	mov	ecx, edx
	mov	DWORD PTR 168[rsi], edx
	imul	rax, rax, -2004318071
	sar	ecx, 31
	shr	rax, 32
	add	eax, edx
	sar	eax, 5
	sub	eax, ecx
	mov	ecx, -60
	imul	eax, ecx
	lea	ebx, [rax+rdx]
	test	dl, 7
	je	.L271
.L128:
	imul	eax, DWORD PTR 0[rbp], 1663525
	add	eax, 1013904223
	mov	DWORD PTR 0[rbp], eax
	add	eax, edx
	imul	eax, eax, -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L272
.L129:
	movzx	eax, WORD PTR 193[rsi]
	sub	ax, WORD PTR [rdi]
	lea	rbp, 736[rsi]
	mov	WORD PTR 774[rsi], ax
	movzx	eax, WORD PTR 197[rsi]
	mov	rcx, rbp
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 776[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	mov	ebp, 2
	call	DisplaySprite
	movsx	ecx, WORD PTR 774[rsi]
.L158:
	lea	eax, 15[rbx]
	movsx	edx, cx
	cmp	bl, 45
	je	.L273
.L157:
	cmp	al, 60
	jbe	.L146
.L155:
	lea	eax, -30[rbx]
	cmp	al, 60
	je	.L262
	jbe	.L145
.L139:
	lea	eax, -75[rbx]
	cmp	al, 60
	je	.L140
	jbe	.L274
	lea	eax, -120[rbx]
	cmp	al, 60
	jne	.L152
.L142:
	movsx	eax, WORD PTR 776[rsi]
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	add	ecx, 10
	xor	edx, edx
	lea	r15, 733[rsi]
	lea	r14, 48[rsp]
	mov	DWORD PTR 72[rsp], ecx
	movq	xmm6, QWORD PTR .LC5[rip]
	mov	WORD PTR 80[rsp], dx
	sub	eax, 16
	mov	rcx, r14
	mov	rdx, r15
	add	r13, 76160
	mov	DWORD PTR 76[rsp], eax
	mov	QWORD PTR 48[rsp], r13
	mov	DWORD PTR 56[rsp], 1
	movq	QWORD PTR 60[rsp], xmm6
	call	CreateBossParticleWithExplosionUpdate
	movsx	ecx, WORD PTR 774[rsi]
	sub	ebp, 1
	je	.L137
	mov	eax, 45
.L145:
	lea	edx, 15[rax]
	cmp	dl, 60
	je	.L140
	ja	.L141
	add	eax, 30
	cmp	al, 60
	je	.L142
	ja	.L143
	cmp	al, 45
	je	.L263
	.p2align 4,,10
	.p2align 3
.L144:
	sub	ebp, 1
	je	.L137
	lea	edx, -30[rax]
	lea	ebx, -45[rax]
	cmp	dl, 60
	ja	.L139
	sub	eax, 15
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L126:
	sub	eax, 48
	and	ax, 1023
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L96:
	lea	rbx, 632[rsi]
	lea	r13, 728[rsi]
.L102:
	mov	eax, DWORD PTR 8[rbx]
	mov	edx, 128
	mov	ecx, DWORD PTR 4[rbx]
	mov	r9d, 8
	sub	eax, 1
	cmp	eax, edx
	cmovl	eax, edx
	mov	edx, DWORD PTR 12[rbx]
	lea	r8d, 40[rdx]
	mov	edx, DWORD PTR [rbx]
	movd	xmm1, eax
	add	ecx, r8d
	movd	xmm3, r8d
	mov	r8d, 1
	add	edx, eax
	movd	xmm4, ecx
	punpckldq	xmm1, xmm3
	sar	ecx, 8
	movd	xmm0, edx
	sar	edx, 8
	punpckldq	xmm0, xmm4
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rbx], xmm0
	mov	QWORD PTR 32[rsp], rbp
	call	sub_801F100
	test	eax, eax
	js	.L275
.L99:
	mov	eax, DWORD PTR 16[rbx]
	test	eax, eax
	jne	.L101
	mov	eax, DWORD PTR 20[rbx]
	test	eax, eax
	je	.L101
	sub	eax, 1
	mov	DWORD PTR 20[rbx], eax
.L101:
	add	rbx, 24
	cmp	r13, rbx
	jne	.L102
	test	edi, edi
	jns	.L118
	movzx	edx, BYTE PTR 732[rsi]
	mov	eax, DWORD PTR 204[rsi]
	test	dl, dl
	jne	.L276
	imul	eax, eax, -216
	sub	DWORD PTR 200[rsi], 32
	mov	ecx, DWORD PTR 196[rsi]
	sar	eax, 8
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L275:
	mov	edx, DWORD PTR 16[rbx]
	test	edx, edx
	je	.L100
	sub	edx, 1
	mov	DWORD PTR 16[rbx], edx
.L100:
	sal	eax, 8
	add	DWORD PTR 4[rbx], eax
	imul	eax, DWORD PTR 12[rbx], -176
	sar	eax, 8
	mov	DWORD PTR 12[rbx], eax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L141:
	sub	ebp, 1
	je	.L137
	lea	ebx, -15[rax]
	movsx	edx, cx
.L146:
	lea	eax, 30[rbx]
	cmp	bl, 30
	je	.L262
.L132:
	cmp	al, 60
	jbe	.L145
	add	ebx, 15
.L135:
	sub	ebp, 1
	jne	.L158
	.p2align 4,,10
	.p2align 3
.L137:
	cmp	cx, 49
	jg	.L159
	cmp	BYTE PTR 179[rsi], 0
	je	.L277
	mov	eax, DWORD PTR 192[rsi]
	mov	edx, DWORD PTR [rdi]
	sar	eax, 8
	mov	ecx, eax
	sub	ecx, edx
	cmp	ecx, -200
	jl	.L181
	.p2align 4,,10
	.p2align 3
.L163:
	mov	eax, DWORD PTR 648[rsi]
	test	eax, eax
	jne	.L164
	test	BYTE PTR 652[rsi], 1
	je	.L165
.L164:
	movzx	eax, WORD PTR 633[rsi]
	lea	rbx, 1000[rsi]
	mov	rcx, rbx
	sub	eax, edx
	mov	WORD PTR 1038[rsi], ax
	movzx	eax, WORD PTR 637[rsi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 1040[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	mov	edx, DWORD PTR [rdi]
.L165:
	mov	eax, DWORD PTR 672[rsi]
	test	eax, eax
	jne	.L166
	test	BYTE PTR 676[rsi], 1
	je	.L167
.L166:
	movzx	eax, WORD PTR 657[rsi]
	lea	rcx, 1000[rsi]
	sub	eax, edx
	mov	WORD PTR 1038[rsi], ax
	movzx	eax, WORD PTR 661[rsi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 1040[rsi], ax
	call	DisplaySprite
	mov	edx, DWORD PTR [rdi]
.L167:
	mov	eax, DWORD PTR 696[rsi]
	test	eax, eax
	jne	.L168
	test	BYTE PTR 700[rsi], 1
	je	.L169
.L168:
	movzx	eax, WORD PTR 681[rsi]
	lea	rbx, 1064[rsi]
	mov	rcx, rbx
	sub	eax, edx
	mov	WORD PTR 1102[rsi], ax
	movzx	eax, WORD PTR 685[rsi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 1104[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	mov	edx, DWORD PTR [rdi]
.L169:
	mov	eax, DWORD PTR 720[rsi]
	test	eax, eax
	jne	.L170
	test	BYTE PTR 724[rsi], 1
	je	.L171
.L170:
	movzx	eax, WORD PTR 705[rsi]
	lea	rcx, 1064[rsi]
	sub	eax, edx
	mov	WORD PTR 1102[rsi], ax
	movzx	eax, WORD PTR 709[rsi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 1104[rsi], ax
	call	DisplaySprite
	mov	edx, DWORD PTR [rdi]
.L171:
	mov	r15d, 1152
	lea	rbp, 808[rsi]
	lea	rbx, 392[rsi]
	mov	WORD PTR 850[rsi], r15w
	lea	r12, 224[rsi]
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L278:
	mov	edx, DWORD PTR [rdi]
.L175:
	movzx	eax, WORD PTR 1[rbx]
	mov	r14d, DWORD PTR 16[rbx]
	sub	eax, edx
	mov	WORD PTR 846[rsi], ax
	movzx	eax, WORD PTR 5[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 848[rsi], ax
	test	r14d, r14d
	jne	.L172
	mov	r13d, DWORD PTR 20[rbx]
	test	r13d, r13d
	je	.L173
	test	BYTE PTR 168[rsi], 1
	je	.L173
.L172:
	mov	rcx, rbp
	call	DisplaySprite
.L173:
	sub	rbx, 24
	cmp	rbx, r12
	jne	.L278
	mov	ebx, 1600
	mov	ecx, DWORD PTR [rdi]
	mov	edx, DWORD PTR 4[rdi]
	lea	r12, 584[rsi]
	mov	WORD PTR 850[rsi], bx
	lea	rbx, 440[rsi]
	.p2align 4,,10
	.p2align 3
.L178:
	movzx	eax, WORD PTR 1[rbx]
	mov	r11d, DWORD PTR 16[rbx]
	mov	r9d, ecx
	mov	r8d, edx
	sub	eax, ecx
	mov	WORD PTR 846[rsi], ax
	movzx	eax, WORD PTR 5[rbx]
	sub	eax, edx
	mov	WORD PTR 848[rsi], ax
	test	r11d, r11d
	jne	.L176
	mov	r10d, DWORD PTR 20[rbx]
	test	r10d, r10d
	je	.L177
	test	BYTE PTR 168[rsi], 1
	je	.L177
.L176:
	mov	rcx, rbp
	call	DisplaySprite
	mov	ecx, DWORD PTR [rdi]
	mov	edx, DWORD PTR 4[rdi]
	mov	r9d, ecx
	mov	r8d, edx
.L177:
	add	rbx, 24
	cmp	rbx, r12
	jne	.L178
	movzx	edx, WORD PTR 213[rsi]
	movzx	ecx, WORD PTR 209[rsi]
	sub	edx, r8d
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sub	ecx, r9d
	mov	WORD PTR 1166[rsi], cx
	movzx	eax, BYTE PTR [r8]
	mov	WORD PTR 1168[rsi], dx
	lea	r9d, 1[rax]
	or	eax, 8288
	mov	DWORD PTR 1160[rsi], eax
	mov	eax, DWORD PTR 228[rsi]
	mov	BYTE PTR [r8], r9b
	test	eax, eax
	je	.L179
	mov	DWORD PTR 228[rsi], 2
.L94:
	movups	xmm6, XMMWORD PTR 96[rsp]
	movups	xmm7, XMMWORD PTR 112[rsp]
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 733[rsi]
	lea	r14, 48[rsp]
	movq	xmm6, QWORD PTR .LC5[rip]
.L138:
	movsx	eax, WORD PTR 776[rsi]
	mov	DWORD PTR 72[rsp], edx
	xor	r9d, r9d
	mov	rdx, r15
	mov	rcx, r14
	mov	WORD PTR 80[rsp], r9w
	mov	DWORD PTR 76[rsp], eax
	lea	rax, 76160[r13]
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 56[rsp], 1
	movq	QWORD PTR 60[rsp], xmm6
	call	CreateBossParticleWithExplosionUpdate
.L131:
	movsx	eax, WORD PTR 774[rsi]
	mov	rcx, r14
	add	r13, 76160
	mov	rdx, r15
	sub	eax, 10
	mov	DWORD PTR 72[rsp], eax
	movsx	eax, WORD PTR 776[rsi]
	mov	QWORD PTR 48[rsp], r13
	sub	eax, 8
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 76[rsp], eax
	xor	eax, eax
	mov	WORD PTR 80[rsp], ax
	movq	QWORD PTR 60[rsp], xmm6
	call	CreateBossParticleWithExplosionUpdate
	movsx	ecx, WORD PTR 774[rsi]
	sub	ebp, 1
	je	.L137
	mov	eax, 15
	movsx	edx, cx
	xor	ebx, ebx
	cmp	al, 60
	ja	.L155
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L266:
	mov	eax, DWORD PTR 204[rsi]
.L97:
	sub	edx, 1
	neg	eax
	mov	BYTE PTR 732[rsi], dl
.L104:
	xor	edx, edx
	cmp	eax, -159
	cmovge	eax, edx
	sal	edi, 8
	add	edi, ecx
	mov	DWORD PTR 204[rsi], eax
	mov	DWORD PTR 196[rsi], edi
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L277:
	mov	BYTE PTR 179[rsi], 1
	movsx	edx, WORD PTR 776[rsi]
	mov	r8d, 8192
	call	CreateEggmobileEscapeSequence
.L159:
	mov	eax, DWORD PTR 192[rsi]
	mov	edx, DWORD PTR [rdi]
	sar	eax, 8
	mov	ecx, eax
	sub	ecx, edx
	cmp	ecx, -200
	jge	.L161
.L181:
	mov	rcx, QWORD PTR [r12]
	lea	rbx, Task_DestructionSceneOutro[rip]
	mov	QWORD PTR 180[rsi], 131072
	mov	DWORD PTR 188[rsi], 191
	mov	DWORD PTR 168[rsi], 0
	mov	QWORD PTR 40[rcx], rbx
.L161:
	cmp	BYTE PTR 179[rsi], 0
	je	.L162
	mov	edx, DWORD PTR [rdi]
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L162:
	sub	eax, edx
	lea	rbx, 936[rsi]
	mov	WORD PTR 974[rsi], ax
	movzx	eax, WORD PTR 197[rsi]
	mov	rcx, rbx
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 976[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	mov	edx, DWORD PTR [rdi]
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L119:
	mov	eax, DWORD PTR 228[rsi]
	test	eax, eax
	je	.L279
	mov	eax, DWORD PTR 220[rsi]
	cmp	eax, 767
	jle	.L280
	lea	edx, 0[0+rax*4]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
	sub	eax, edx
	sal	eax, 6
	sar	eax, 8
	movd	xmm0, eax
.L123:
	mov	r14d, DWORD PTR 224[rsi]
	mov	eax, DWORD PTR 216[rsi]
	xor	edx, edx
	mov	ecx, 0
	test	r14d, r14d
	sete	dl
	sal	ebx, 8
	add	ebx, DWORD PTR 212[rsi]
	sub	eax, 32
	cmovs	eax, ecx
	movd	xmm2, edx
	movd	xmm1, ebx
	punpckldq	xmm0, xmm2
	movd	xmm3, eax
	punpckldq	xmm1, xmm3
	punpcklqdq	xmm1, xmm0
	movups	XMMWORD PTR 212[rsi], xmm1
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L140:
	movsx	eax, WORD PTR 776[rsi]
	sub	ecx, 10
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 733[rsi]
	mov	DWORD PTR 72[rsp], ecx
	lea	r14, 48[rsp]
	xor	ecx, ecx
	mov	rdx, r15
	add	eax, 8
	mov	WORD PTR 80[rsp], cx
	movq	xmm6, QWORD PTR .LC5[rip]
	mov	rcx, r14
	mov	DWORD PTR 76[rsp], eax
	lea	rax, 76160[r13]
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 56[rsp], 1
	movq	QWORD PTR 60[rsp], xmm6
	call	CreateBossParticleWithExplosionUpdate
	sub	ebp, 1
	je	.L264
	movsx	edx, WORD PTR 774[rsi]
.L133:
	movsx	eax, WORD PTR 776[rsi]
	add	edx, 10
	xor	r8d, r8d
	mov	rcx, r14
	mov	DWORD PTR 72[rsp], edx
	mov	rdx, r15
	add	eax, 16
	mov	WORD PTR 80[rsp], r8w
	mov	DWORD PTR 76[rsp], eax
	lea	rax, 76160[r13]
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 56[rsp], 1
	movq	QWORD PTR 60[rsp], xmm6
	call	CreateBossParticleWithExplosionUpdate
	sub	ebp, 1
	je	.L264
	movsx	edx, WORD PTR 774[rsi]
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L179:
	movzx	eax, WORD PTR 728[rsi]
	mov	WORD PTR 1198[rsi], cx
	lea	rbx, 1128[rsi]
	mov	WORD PTR 1200[rsi], dx
	mov	rcx, rbx
	lea	rdx, 1192[rsi]
	mov	WORD PTR 1192[rsi], ax
	mov	DWORD PTR 1194[rsi], 16777472
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L272:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L271:
	mov	eax, -85
	mov	r13, QWORD PTR .refptr.gTileInfoBossScrews[rip]
	movq	xmm0, QWORD PTR 192[rsi]
	lea	r15, 733[rsi]
	mul	bl
	movq	xmm1, QWORD PTR [rdi]
	lea	r14, 48[rsp]
	mov	r10d, 64
	imul	ecx, DWORD PTR 0[rbp], 1663525
	psrad	xmm0, 8
	mov	r11d, 1536
	mov	WORD PTR 80[rsp], r10w
	psubd	xmm0, xmm1
	mov	WORD PTR 66[rsp], r11w
	shr	ax, 10
	mov	DWORD PTR 56[rsp], 1
	movzx	eax, al
	add	ecx, 1013904223
	lea	edx, 0[0+rax*4]
	mov	DWORD PTR 0[rbp], ecx
	and	cx, 1023
	sub	eax, edx
	movzx	edx, bl
	mov	WORD PTR 64[rsp], cx
	mov	rcx, r14
	lea	eax, [rdx+rax*2]
	movq	QWORD PTR 72[rsp], xmm0
	cdqe
	lea	rax, [rax+rax*2]
	lea	rax, 0[r13+rax*4]
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	mov	edx, DWORD PTR [rax]
	sal	edx, 5
	lea	rdx, 65536[rdx+r13]
	mov	QWORD PTR 48[rsp], rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR 8[rax]
	mov	WORD PTR 60[rsp], dx
	mov	rdx, r15
	mov	WORD PTR 62[rsp], ax
	call	CreateBossParticleWithExplosionUpdate
	mov	edx, DWORD PTR 168[rsi]
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L264:
	movsx	ecx, WORD PTR 774[rsi]
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L274:
	lea	eax, -60[rbx]
	cmp	al, 60
	je	.L142
	jbe	.L281
	sub	ebp, 1
	je	.L137
	lea	eax, -90[rbx]
	movsx	edx, cx
	sub	ebx, 105
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L280:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
.L125:
	pxor	xmm0, xmm0
	jmp	.L123
.L152:
	ja	.L153
	sub	ebx, 105
.L150:
	cmp	bl, 60
	je	.L263
	ja	.L144
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L153:
	lea	eax, 76[rbx]
	add	ebx, 91
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L279:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	lea	r14, 48[rsp]
	xor	eax, eax
	movq	xmm0, QWORD PTR 208[rsi]
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 733[rsi]
	mov	rcx, r14
	movq	xmm6, QWORD PTR .LC5[rip]
	movq	xmm1, QWORD PTR [rdi]
	psrad	xmm0, 8
	mov	rdx, r15
	mov	WORD PTR 80[rsp], ax
	add	r13, 76160
	movq	QWORD PTR 60[rsp], xmm6
	psubd	xmm0, xmm1
	mov	QWORD PTR 48[rsp], r13
	mov	DWORD PTR 56[rsp], 0
	movq	QWORD PTR 72[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
	movq	xmm2, QWORD PTR [rdi]
	mov	rcx, r14
	movq	xmm7, QWORD PTR .LC6[rip]
	movq	xmm0, QWORD PTR 208[rsi]
	movq	xmm6, QWORD PTR .LC7[rip]
	imul	eax, DWORD PTR 0[rbp], 1663525
	psrad	xmm0, 8
	psubd	xmm0, xmm2
	lea	edx, 1013904223[rax]
	movd	xmm1, eax
	imul	edx, edx, 1663525
	movd	xmm4, edx
	mov	rdx, r15
	punpckldq	xmm1, xmm4
	paddd	xmm1, xmm7
	movdqu	xmm2, xmm1
	pshufd	xmm4, xmm1, 0xe5
	movd	DWORD PTR 0[rbp], xmm4
	pand	xmm2, xmm6
	paddd	xmm0, xmm2
	movq	QWORD PTR 72[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	imul	eax, DWORD PTR 0[rbp], 1663525
	movq	xmm2, QWORD PTR [rdi]
	mov	rcx, r14
	movq	xmm0, QWORD PTR 208[rsi]
	lea	edx, 1013904223[rax]
	psrad	xmm0, 8
	movd	xmm1, eax
	imul	edx, edx, 1663525
	psubd	xmm0, xmm2
	movd	xmm4, edx
	mov	rdx, r15
	punpckldq	xmm1, xmm4
	paddd	xmm1, xmm7
	pand	xmm6, xmm1
	pshufd	xmm7, xmm1, 0xe5
	movd	DWORD PTR 0[rbp], xmm7
	paddd	xmm0, xmm6
	movq	QWORD PTR 72[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	mov	eax, DWORD PTR 220[rsi]
	cmp	eax, 767
	jg	.L282
	mov	r15d, DWORD PTR 228[rsi]
	test	r15d, r15d
	jne	.L125
	mov	DWORD PTR 228[rsi], 1
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L262:
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 733[rsi]
	lea	r14, 48[rsp]
	movq	xmm6, QWORD PTR .LC5[rip]
	jmp	.L133
.L143:
	sub	ebp, 1
	je	.L137
	mov	eax, edx
	jmp	.L145
.L263:
	mov	r13, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 733[rsi]
	lea	r14, 48[rsp]
	movq	xmm6, QWORD PTR .LC5[rip]
	jmp	.L131
.L281:
	sub	ebx, 45
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L282:
	lea	edx, 0[0+rax*4]
	sub	eax, edx
	sal	eax, 6
	sar	eax, 8
	movd	xmm0, eax
	jmp	.L123
.L276:
	mov	ecx, DWORD PTR 196[rsi]
	jmp	.L97
	.seh_endproc
	.p2align 4
	.def	Render;	.scl	3;	.type	32;	.endef
	.seh_proc	Render
Render:
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
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 1[rcx]
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 774[rcx], ax
	movzx	eax, WORD PTR 5[rcx]
	lea	rdi, 736[rcx]
	mov	rbx, rcx
	sub	ax, WORD PTR 4[rsi]
	lea	r12, 808[rbx]
	lea	r14, 36[rbx]
	mov	WORD PTR 776[rcx], ax
	mov	rcx, rdi
	lea	r15, 392[rbx]
	lea	r13, 224[rbx]
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 936[rbx]
	call	DisplaySprite
	mov	eax, 4
	sub	ax, WORD PTR [rsi]
	mov	rcx, rdi
	add	ax, WORD PTR 1[rbx]
	mov	WORD PTR 974[rbx], ax
	movzx	eax, WORD PTR 5[rbx]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 976[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 1000[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	mov	rcx, rdi
	sub	eax, 5632
	sar	eax, 8
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 1038[rbx], ax
	mov	eax, DWORD PTR 152[rbx]
	add	eax, DWORD PTR 4[rbx]
	add	eax, 3712
	sar	eax, 8
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 1040[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	mov	rcx, rdi
	lea	rdi, 1064[rbx]
	add	eax, 6144
	sar	eax, 8
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 1038[rbx], ax
	mov	eax, DWORD PTR 156[rbx]
	add	eax, DWORD PTR 4[rbx]
	add	eax, 3712
	sar	eax, 8
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 1040[rbx], ax
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	mov	rcx, rdi
	sub	eax, 5632
	sar	eax, 8
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 1102[rbx], ax
	mov	eax, DWORD PTR 152[rbx]
	add	eax, DWORD PTR 4[rbx]
	add	eax, 3712
	sar	eax, 8
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 1104[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	mov	rcx, rdi
	add	eax, 6144
	sar	eax, 8
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 1102[rbx], ax
	mov	eax, DWORD PTR 156[rbx]
	add	eax, DWORD PTR 4[rbx]
	add	eax, 3712
	sar	eax, 8
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 1104[rbx], ax
	call	DisplaySprite
	mov	edx, 1152
	movzx	ebp, WORD PTR 1[rbx]
	sub	bp, WORD PTR [rsi]
	mov	WORD PTR 850[rbx], dx
	movzx	edi, WORD PTR 5[rbx]
	sub	di, WORD PTR 4[rsi]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	.p2align 4,,10
	.p2align 3
.L285:
	mov	eax, DWORD PTR 32[r14]
	mov	ecx, DWORD PTR [r14]
	add	eax, 80
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [rsi+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	eax, ecx
	imul	edx, ecx
	mov	rcx, r12
	sar	eax, 23
	add	eax, edi
	sar	edx, 23
	mov	WORD PTR 848[rbx], ax
	add	edx, ebp
	mov	WORD PTR 846[rbx], dx
	call	DisplaySprite
	cmp	BYTE PTR 176[rbx], 0
	je	.L284
	movsx	eax, WORD PTR 846[rbx]
	mov	DWORD PTR [r15], eax
	movsx	eax, WORD PTR 848[rbx]
	mov	DWORD PTR 4[r15], eax
.L284:
	sub	r15, 24
	sub	r14, 4
	cmp	r13, r15
	jne	.L285
	mov	eax, DWORD PTR 72[rbx]
	mov	ecx, DWORD PTR 40[rbx]
	add	eax, 80
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	r13d, WORD PTR [rsi+rax*2]
	movsx	rdx, edx
	movsx	r14d, WORD PTR [rsi+rdx*2]
	imul	r13d, ecx
	imul	r14d, ecx
	lea	rcx, 872[rbx]
	sar	r13d, 23
	add	r13d, edi
	sar	r14d, 23
	mov	WORD PTR 912[rbx], r13w
	add	r14d, ebp
	mov	WORD PTR 910[rbx], r14w
	call	DisplaySprite
	cmp	QWORD PTR 1216[rbx], 0
	je	.L286
	add	r14d, 5
	sub	r13d, 20
	lea	r15, 1208[rbx]
	mov	WORD PTR 1246[rbx], r14w
	mov	rcx, r15
	mov	WORD PTR 1248[rbx], r13w
	call	UpdateSpriteAnimation
	mov	rcx, r15
	lea	r15, 1272[rbx]
	call	DisplaySprite
	mov	WORD PTR 1310[rbx], r14w
	mov	rcx, r15
	mov	WORD PTR 1312[rbx], r13w
	call	UpdateSpriteAnimation
	mov	rcx, r15
	call	DisplaySprite
.L286:
	mov	eax, 1600
	lea	r14, 84[rbx]
	lea	r13, 108[rbx]
	sub	ebp, 8
	mov	WORD PTR 850[rbx], ax
	.p2align 4,,10
	.p2align 3
.L287:
	mov	edx, DWORD PTR 32[r14]
	mov	ecx, DWORD PTR [r14]
	add	r14, 4
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [rsi+rax*2]
	imul	eax, ecx
	sar	eax, 23
	add	eax, ebp
	mov	WORD PTR 846[rbx], ax
	movsx	eax, WORD PTR [rsi+rdx*2]
	imul	eax, ecx
	mov	rcx, r12
	sar	eax, 23
	add	eax, edi
	mov	WORD PTR 848[rbx], ax
	call	DisplaySprite
	cmp	r14, r13
	jne	.L287
	mov	eax, DWORD PTR 136[rbx]
	mov	r8d, DWORD PTR 104[rbx]
	mov	DWORD PTR 1194[rbx], 16777472
	lea	r12, 1128[rbx]
	lea	r13, 1192[rbx]
	mov	ecx, eax
	add	eax, eax
	sub	ax, WORD PTR 148[rbx]
	and	ecx, 1023
	and	ax, 1023
	lea	edx, 256[rcx]
	movsx	ecx, WORD PTR [rsi+rcx*2]
	movsx	rdx, edx
	imul	ecx, r8d
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	edx, r8d
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sar	ecx, 23
	add	edi, ecx
	movzx	ecx, BYTE PTR [r8]
	sar	edx, 23
	mov	WORD PTR 1168[rbx], di
	lea	r9d, 1[rcx]
	or	ecx, 8288
	add	edx, ebp
	cmp	ax, 768
	mov	DWORD PTR 1160[rbx], ecx
	lea	ecx, 10[rax]
	cmovne	eax, ecx
	mov	rcx, r12
	mov	BYTE PTR [r8], r9b
	mov	WORD PTR 1166[rbx], dx
	mov	WORD PTR 1198[rbx], dx
	mov	WORD PTR 1192[rbx], ax
	mov	WORD PTR 1200[rbx], di
	call	UpdateSpriteAnimation
	mov	rcx, r12
	mov	rdx, r13
	call	TransformSprite
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
	.seh_endproc
	.p2align 4
	.def	Task_EggHammerTankII_RollIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggHammerTankII_RollIn
Task_EggHammerTankII_RollIn:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	mov	ecx, DWORD PTR 168[rbx]
	lea	eax, 1[rcx]
	mov	DWORD PTR 168[rbx], eax
	cmp	eax, 20
	jbe	.L299
	movsx	r8d, WORD PTR 10[rbx]
	movsx	r9d, WORD PTR 8[rbx]
	add	r8d, DWORD PTR 4[rbx]
	cmp	eax, 126
	jbe	.L300
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	add	DWORD PTR [rbx], r9d
	mov	DWORD PTR 4[rbx], r8d
	and	DWORD PTR 36[rax], -2097153
	mov	eax, 1280
	mov	WORD PTR 8[rbx], ax
	lea	rax, Task_EggHammerTankII_Main[rip]
	mov	QWORD PTR 40[rdx], rax
.L297:
	call	IsBossTouchingTerrain
	lea	rdx, sGroundPhysicsHandlers[rip]
	movzx	eax, al
	call	[QWORD PTR [rdx+rax*8]]
	mov	rcx, rbx
	call	UpdateArmSegments
	nop
	add	rsp, 32
	pop	rbx
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L300:
	sub	ecx, 60
	lea	edx, [rax+rax*4]
	lea	eax, [rax+rax*2]
	mov	DWORD PTR 4[rbx], r8d
	sal	edx, 8
	mov	r10d, ecx
	sal	eax, 4
	shr	r10d
	sub	eax, 2928
	imul	eax, ecx
	lea	edx, 309760[r10+rdx]
	mov	r10d, ecx
	imul	r10d, ecx
	shr	eax
	imul	r10d, ecx
	shr	r10d
	add	edx, r10d
	sub	edx, eax
	lea	eax, [rdx+r9]
	mov	DWORD PTR [rbx], eax
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L299:
	xor	edx, edx
	mov	WORD PTR 8[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DestructionSceneOutro;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DestructionSceneOutro
Task_DestructionSceneOutro:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 168[rbx]
	lea	rdi, 180[rbx]
	add	eax, 1
	mov	DWORD PTR 168[rbx], eax
	cmp	eax, 9
	je	.L320
.L302:
	cmp	eax, 32
	ja	.L303
	cmp	eax, 1
	je	.L321
.L304:
	mov	rcx, rdi
	call	UpdateScreenFade
.L305:
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC15[rip]
	mov	QWORD PTR 16[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	cmp	eax, 120
	ja	.L306
	mov	DWORD PTR 182[rbx], 2
	xor	ecx, ecx
	mov	WORD PTR 186[rbx], cx
	mov	rcx, rdi
	call	UpdateScreenFade
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L322
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L305
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jg	.L305
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 81
	mov	WORD PTR 108[rax], dx
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L306:
	mov	eax, 40
	mov	rcx, rdi
	mov	WORD PTR 186[rbx], ax
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L305
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L311
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 2
	je	.L323
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L313
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jle	.L324
.L313:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
.L311:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L321:
	mov	DWORD PTR 182[rbx], 134217729
	mov	r8d, 192
	mov	WORD PTR 186[rbx], r8w
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L322:
	cmp	DWORD PTR 168[rbx], 34
	jne	.L305
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.gUnknown_080D6DE4[rip]
	mov	r8d, DWORD PTR 12[rcx]
	movzx	eax, WORD PTR [rdx]
	movq	xmm2, QWORD PTR 12[rcx]
	movzx	edx, WORD PTR 2[rdx]
	sar	r8d, 8
	movd	xmm1, eax
	sub	eax, r8d
	mov	r8d, DWORD PTR 16[rcx]
	movd	xmm3, edx
	movdqu	xmm0, xmm2
	psrad	xmm0, 8
	sal	eax, 8
	punpckldq	xmm1, xmm3
	sar	r8d, 8
	psubd	xmm1, xmm0
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	edx, r8d
	sal	edx, 8
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	paddd	xmm2, xmm0
	movq	QWORD PTR 12[rcx], xmm2
	movq	xmm2, QWORD PTR [rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR [rax], xmm2
	movq	xmm2, QWORD PTR 32[rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR 32[rax], xmm2
	movq	xmm2, QWORD PTR 16[rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR 16[rax], xmm2
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L310
	movq	xmm1, QWORD PTR [rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR [rax], xmm1
.L310:
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	add	BYTE PTR [rax], 1
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L320:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	ecx, 333
	and	DWORD PTR [rax], -5
	call	m4aSongNumStart
	mov	eax, DWORD PTR 168[rbx]
	jmp	.L302
.L323:
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	call	CreateTimeAttackResults
	jmp	.L311
.L324:
	xor	ecx, ecx
	call	CreateStageResultsCutscene
	jmp	.L311
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerPlunge;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerPlunge
StateHandler_HammerPlunge:
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
	mov	rbx, rcx
	mov	ecx, DWORD PTR 164[rcx]
	test	cl, 1
	jne	.L334
	mov	esi, 1
	xor	eax, eax
.L327:
	add	eax, 1
	add	esi, esi
	cmp	al, 5
	je	.L338
	movzx	edx, sil
	test	edx, ecx
	je	.L327
	movzx	eax, al
	lea	rdx, gUnknown_080D7AA2[rip]
	movzx	esi, BYTE PTR [rdx+rax]
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L338:
	movzx	esi, sil
.L328:
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, 60
	sub	eax, DWORD PTR 172[rbx]
	lea	r9, gUnknown_080D7A78[rip]
	lea	eax, 0[0+rax*4]
	movzx	edx, WORD PTR [rdi+rax*2]
	mov	eax, DWORD PTR 148[rbx]
	sar	dx, 9
	sub	eax, edx
	mov	edx, 1
	and	eax, 1023
	mov	DWORD PTR 148[rbx], eax
	mov	DWORD PTR 116[rbx], eax
	.p2align 4,,10
	.p2align 3
.L330:
	mov	ecx, DWORD PTR 116[rbx+rdx*4]
	movsx	r8d, WORD PTR [r9+rdx*2]
	sub	eax, ecx
	imul	eax, r8d
	sar	eax, 8
	add	eax, ecx
	mov	DWORD PTR 116[rbx+rdx*4], eax
	add	rdx, 1
	cmp	rdx, 8
	jne	.L330
	mov	eax, DWORD PTR 144[rbx]
	mov	r8d, DWORD PTR 112[rbx]
	mov	r9d, 8
	mov	ecx, DWORD PTR [rbx]
	sub	eax, esi
	and	eax, 1023
	sar	ecx, 8
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	edx, WORD PTR [rdi+rdx*2]
	imul	edx, r8d
	sar	edx, 23
	add	edx, ecx
	movsx	ecx, WORD PTR [rdi+rax*2]
	mov	eax, DWORD PTR 4[rbx]
	mov	QWORD PTR 32[rsp], 0
	imul	ecx, r8d
	sar	eax, 8
	mov	r8d, 1
	sar	ecx, 23
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E6D4
	mov	ebp, eax
	test	eax, eax
	jle	.L339
	mov	eax, DWORD PTR 172[rbx]
	sub	eax, 1
	je	.L333
	mov	DWORD PTR 172[rbx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	mov	DWORD PTR 172[rbx], 30
	mov	DWORD PTR 160[rbx], 4
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L339:
	mov	ecx, 238
	call	m4aSongNumStart
	add	esi, DWORD PTR 144[rbx]
	mov	DWORD PTR 172[rbx], 30
	mov	DWORD PTR 160[rbx], 4
	and	esi, 1023
	lea	eax, 256[rsi]
	movzx	ecx, WORD PTR [rdi+rsi*2]
	cdqe
	movzx	edx, WORD PTR [rdi+rax*2]
	sar	cx, 6
	movsx	ecx, cx
	sar	dx, 6
	add	edx, ebp
	movsx	edx, dx
	call	sub_8004418
	mov	r9d, 20
	mov	r8d, 128
	mov	edx, 16
	cwde
	mov	ecx, 2048
	movd	xmm1, eax
	mov	DWORD PTR 148[rbx], eax
	pshufd	xmm0, xmm1, 0
	movups	XMMWORD PTR 116[rbx], xmm0
	movups	XMMWORD PTR 132[rbx], xmm0
	mov	DWORD PTR 32[rsp], 131
	call	CreateScreenShake
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L334:
	mov	esi, 8
	jmp	.L328
	.seh_endproc
	.p2align 4
	.def	StateHandler_HammerSlam;	.scl	3;	.type	32;	.endef
	.seh_proc	StateHandler_HammerSlam
StateHandler_HammerSlam:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	sub	DWORD PTR 172[rcx], 1
	mov	rbx, rcx
	jne	.L340
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	test	al, 3
	je	.L342
	mov	DWORD PTR 172[rcx], 68
	mov	DWORD PTR 160[rcx], 5
.L340:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	mov	ecx, 239
	call	m4aSongNumStart
	mov	DWORD PTR 172[rbx], 60
	mov	DWORD PTR 160[rbx], 6
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_EggHammerTankII_Main;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggHammerTankII_Main
Task_EggHammerTankII_Main:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movsx	eax, WORD PTR 8[rbx]
	movq	xmm0, QWORD PTR [rbx]
	movd	xmm1, eax
	movsx	eax, WORD PTR 10[rbx]
	movd	xmm4, eax
	punpckldq	xmm1, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR [rbx], xmm0
	call	IsBossTouchingTerrain
	lea	rdx, sGroundPhysicsHandlers[rip]
	movzx	eax, al
	call	[QWORD PTR [rdx+rax*8]]
	mov	edx, DWORD PTR 160[rbx]
	lea	rax, sBossStateHandlers[rip]
	mov	rcx, rbx
	call	[QWORD PTR [rax+rdx*8]]
	mov	rcx, rbx
	call	UpdateArmSegments
	movzx	eax, BYTE PTR 177[rbx]
	test	al, al
	jne	.L364
	mov	ebp, DWORD PTR [rbx]
	mov	r15d, DWORD PTR 4[rbx]
	mov	eax, DWORD PTR 160[rbx]
	mov	r12d, ebp
	mov	r13d, r15d
	sar	r12d, 8
	sar	r13d, 8
	cmp	eax, 4
	jbe	.L365
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	cmp	eax, 6
	je	.L365
.L345:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, r12d
	mov	ecx, r13d
	mov	r8d, r13d
	lea	r14, 736[rbx]
	mov	r9d, 1
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 774[rbx], dx
	mov	edx, r12d
	mov	WORD PTR 776[rbx], cx
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], rdi
	call	Coll_Player_Enemy
	mov	edx, r15d
	mov	ecx, ebp
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	movzx	eax, BYTE PTR 177[rbx]
	test	al, al
	je	.L347
	cmp	WORD PTR 22[rdi], 0
	jle	.L364
	test	BYTE PTR 36[rdi], 2
	je	.L364
.L347:
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	je	.L383
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Player_Enemy
.L349:
	movzx	eax, BYTE PTR 177[rbx]
	test	al, al
	jne	.L364
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	je	.L384
.L350:
	movzx	eax, BYTE PTR 177[rbx]
	test	al, al
	jne	.L364
	movzx	eax, BYTE PTR 178[rbx]
	test	al, al
	je	.L353
	sub	eax, 1
	mov	BYTE PTR 178[rbx], al
	test	al, al
	jne	.L353
	mov	r8d, 629
	mov	r9d, -256
	mov	WORD PTR 954[rbx], r8w
	mov	WORD PTR 984[rbx], r9w
.L353:
	mov	rcx, rbx
	call	Render
	movzx	eax, BYTE PTR 177[rbx]
	test	al, al
	je	.L356
	shr	eax, 2
	lea	rcx, gUnknown_080D7AD0[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm5, XMMWORD PTR [rax]
	movups	XMMWORD PTR 256[rdx], xmm5
	mov	r8, QWORD PTR 16[rax]
	mov	r9, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR 272[rdx], r8
	or	DWORD PTR [rax], 2
	mov	QWORD PTR 280[rdx], r9
.L356:
	cmp	BYTE PTR 176[rbx], 0
	je	.L385
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L364:
	sub	eax, 1
	mov	BYTE PTR 178[rbx], 0
	mov	BYTE PTR 177[rbx], al
	test	al, al
	jne	.L353
	cmp	BYTE PTR 176[rbx], 0
	mov	edx, 3
	mov	r10d, 629
	mov	BYTE PTR 985[rbx], -1
	cmove	eax, edx
	mov	WORD PTR 954[rbx], r10w
	mov	BYTE PTR 984[rbx], al
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L365:
	mov	eax, DWORD PTR 136[rbx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	ecx, DWORD PTR 104[rbx]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [r9+rax*2]
	mov	r8d, DWORD PTR 12[rdi]
	movsx	rdx, edx
	movsx	edx, WORD PTR [r9+rdx*2]
	imul	eax, ecx
	sar	r8d, 8
	imul	edx, ecx
	mov	ecx, DWORD PTR 16[rdi]
	sar	eax, 23
	add	eax, r13d
	sar	ecx, 8
	sar	edx, 23
	sub	eax, ecx
	imul	eax, eax
	lea	edx, -8[r12+rdx]
	sub	edx, r8d
	imul	edx, edx
	add	edx, eax
	cmp	edx, 419
	jg	.L345
	mov	r11d, 629
	mov	ebp, -255
	mov	BYTE PTR 178[rbx], 30
	mov	rcx, rdi
	mov	WORD PTR 984[rbx], bp
	mov	WORD PTR 954[rbx], r11w
	call	Coll_DamagePlayer
	mov	ebp, DWORD PTR [rbx]
	mov	r15d, DWORD PTR 4[rbx]
	mov	r12d, ebp
	mov	r13d, r15d
	sar	r12d, 8
	sar	r13d, 8
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L385:
	mov	r12, QWORD PTR [rsi]
	mov	edx, 628
	mov	eax, 5
	mov	ecx, -256
	mov	r10d, -48
	mov	r11, QWORD PTR 24[r12]
	movsx	ebx, WORD PTR 8[r11]
	movq	xmm0, QWORD PTR [r11]
	mov	DWORD PTR 168[r11], 0
	lea	rbp, 632[r11]
	mov	WORD PTR 754[r11], dx
	movd	edi, xmm0
	mov	DWORD PTR 200[r11], ebx
	mov	r9d, ebx
	pshufd	xmm3, xmm0, 0xe5
	mov	WORD PTR 732[r11], ax
	movd	esi, xmm3
	lea	r8d, 10[rbx]
	mov	rax, rbp
	movq	QWORD PTR 192[r11], xmm0
	lea	r14d, 6144[rdi]
	movq	xmm0, QWORD PTR .LC19[rip]
	lea	r13d, -5632[rdi]
	mov	DWORD PTR 204[r11], -768
	mov	WORD PTR 784[r11], cx
	mov	ecx, -48
.L361:
	mov	r15d, r10d
	mov	edx, DWORD PTR 152[r11]
	sub	r15d, ecx
	cmp	r15b, 1
	jg	.L358
	mov	DWORD PTR [rax], r13d
	mov	edx, DWORD PTR 152[r11]
	add	r9d, 48
	add	rax, 24
	mov	DWORD PTR -16[rax], r8d
	add	r8d, 5
	lea	r15d, 3712[rsi+rdx]
	movq	QWORD PTR -8[rax], xmm0
	imul	edx, ecx
	mov	DWORD PTR -20[rax], r15d
	sub	ecx, 1
	add	edx, edx
	sar	edx, 8
	mov	DWORD PTR -12[rax], edx
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L358:
	lea	r15d, 3712[rdx+rsi]
	mov	DWORD PTR [rax], r14d
	imul	edx, ecx
	sub	ecx, 1
	mov	DWORD PTR 4[rax], r15d
	mov	DWORD PTR 8[rax], r9d
	movq	QWORD PTR 16[rax], xmm0
	add	edx, edx
	sar	edx, 8
	mov	DWORD PTR 12[rax], edx
	cmp	ecx, -52
	je	.L360
	add	r9d, 48
	add	r8d, 5
	add	rax, 24
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L360:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	rdx, 248[r11]
	lea	r10, 12[r11]
	movq	xmm3, QWORD PTR .LC20[rip]
	lea	r8, 440[r11]
	mov	r14d, DWORD PTR [rax]
	mov	r13d, DWORD PTR 4[rax]
	.p2align 4,,10
	.p2align 3
.L362:
	mov	eax, DWORD PTR [rdx]
	mov	ecx, DWORD PTR 32[r10]
	add	rdx, 24
	add	r10, 4
	mov	r15d, DWORD PTR -4[r10]
	movq	QWORD PTR -8[rdx], xmm3
	add	eax, r14d
	and	ecx, 1023
	sal	eax, 8
	movd	xmm0, eax
	mov	eax, DWORD PTR -20[rdx]
	add	eax, r13d
	sal	eax, 8
	movd	xmm2, eax
	lea	eax, 256[rcx]
	movsx	ecx, WORD PTR [r9+rcx*2]
	cdqe
	punpckldq	xmm0, xmm2
	movsx	eax, WORD PTR [r9+rax*2]
	imul	ecx, r15d
	imul	eax, r15d
	sar	ecx, 18
	movd	xmm4, ecx
	sar	eax, 18
	add	eax, ebx
	movd	xmm1, eax
	punpckldq	xmm1, xmm4
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR -24[rdx], xmm0
	cmp	r8, rdx
	jne	.L362
	lea	r10, 84[r11]
	.p2align 4,,10
	.p2align 3
.L363:
	mov	edx, DWORD PTR 32[r10]
	mov	ecx, DWORD PTR [r10]
	add	r8, 24
	add	r10, 4
	movq	QWORD PTR -8[r8], xmm3
	lea	r13d, 768[rdx]
	and	edx, 1023
	and	r13d, 1023
	lea	eax, 256[r13]
	cdqe
	movsx	eax, WORD PTR [r9+rax*2]
	imul	eax, ecx
	sar	eax, 15
	add	eax, edi
	movd	xmm0, eax
	movsx	eax, WORD PTR [r9+r13*2]
	imul	eax, ecx
	sar	eax, 15
	lea	r13d, [rax+rsi]
	lea	eax, 256[rdx]
	cdqe
	movd	xmm2, r13d
	movsx	eax, WORD PTR [r9+rax*2]
	punpckldq	xmm0, xmm2
	imul	eax, ecx
	sar	eax, 18
	add	eax, ebx
	movd	xmm1, eax
	movsx	eax, WORD PTR [r9+rdx*2]
	imul	eax, ecx
	sar	eax, 18
	movd	xmm5, eax
	punpckldq	xmm1, xmm5
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR -24[r8], xmm0
	cmp	rbp, r8
	jne	.L363
	mov	edx, DWORD PTR 136[r11]
	mov	ecx, DWORD PTR 104[r11]
	movd	xmm1, ebx
	mov	QWORD PTR 224[r11], 1
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [r9+rax*2]
	imul	eax, ecx
	sar	eax, 15
	add	eax, edi
	movd	xmm0, eax
	movsx	eax, WORD PTR [r9+rdx*2]
	movsx	edx, WORD PTR 10[r11]
	imul	eax, ecx
	sub	edx, 2048
	movd	xmm3, edx
	punpckldq	xmm1, xmm3
	sar	eax, 15
	add	eax, esi
	movd	xmm5, eax
	movzx	eax, WORD PTR 1192[r11]
	punpckldq	xmm0, xmm5
	mov	WORD PTR 728[r11], ax
	punpcklqdq	xmm0, xmm1
	lea	rax, Task_DestructionScene_Main[rip]
	movups	XMMWORD PTR 208[r11], xmm0
	mov	QWORD PTR 40[r12], rax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	Player_DisableInputAndBossTimer
	.p2align 4,,10
	.p2align 3
.L383:
	mov	rcx, rbx
	call	HandleBossHit
	jmp	.L349
.L384:
	mov	rcx, rbx
	call	HandleBossHit
	jmp	.L350
	.seh_endproc
	.p2align 4
	.globl	CreateEggHammerTankII
	.def	CreateEggHammerTankII;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggHammerTankII
CreateEggHammerTankII:
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
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_EggHammerTankII_RollIn[rip]
	or	DWORD PTR 36[rax], 2097152
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	lea	rax, TaskDestructor_EggHammerTankII[rip]
	mov	edx, 1336
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbp, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	cmp	BYTE PTR 0[rbp], 28
	je	.L397
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	eax, 8
	cmp	BYTE PTR [rdx], 0
	jne	.L398
.L388:
	mov	BYTE PTR 176[rbx], al
	mov	rax, QWORD PTR .LC23[rip]
	xor	ecx, ecx
	movabs	rdx, 37383395350528
	movdqu	xmm0, XMMWORD PTR .LC22[rip]
	mov	QWORD PTR 20[rbx], rdx
	movabs	rdx, 61572651169280
	mov	QWORD PTR [rbx], rax
	movabs	rax, 13194139533312
	mov	QWORD PTR 12[rbx], rax
	movabs	rax, 54975581400064
	mov	QWORD PTR 28[rbx], rax
	movabs	rax, 13194139533312
	mov	QWORD PTR 84[rbx], rax
	movabs	rax, 65970697678848
	mov	QWORD PTR 36[rbx], rdx
	movabs	rdx, 39582418606080
	mov	QWORD PTR 100[rbx], rax
	mov	rax, QWORD PTR .LC25[rip]
	mov	QWORD PTR 92[rbx], rdx
	movabs	rdx, 92358976751616
	movups	XMMWORD PTR 160[rbx], xmm0
	pxor	xmm0, xmm0
	mov	QWORD PTR 108[rbx], rdx
	mov	WORD PTR 178[rbx], cx
	mov	ecx, 72
	movups	XMMWORD PTR 44[rbx], xmm0
	movups	XMMWORD PTR 60[rbx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	mov	BYTE PTR 177[rbx], 0
	mov	DWORD PTR 8[rbx], 1280
	mov	QWORD PTR 76[rbx], 0
	mov	QWORD PTR 148[rbx], rax
	mov	DWORD PTR 156[rbx], 4736
	mov	DWORD PTR 774[rbx], 0
	movups	XMMWORD PTR 116[rbx], xmm0
	movups	XMMWORD PTR 132[rbx], xmm0
	call	VramMalloc
	movzx	esi, WORD PTR .LC17[rip]
	xor	r8d, r8d
	mov	DWORD PTR 752[rbx], 41418752
	mov	WORD PTR 772[rbx], r8w
	lea	rcx, 736[rbx]
	mov	QWORD PTR 744[rbx], rax
	mov	DWORD PTR 778[rbx], 1280
	mov	WORD PTR 784[rbx], si
	mov	BYTE PTR 786[rbx], 16
	mov	BYTE PTR 789[rbx], 0
	mov	DWORD PTR 792[rbx], -1
	mov	DWORD PTR 768[rbx], 8192
	call	UpdateSpriteAnimation
	mov	ecx, 4
	mov	DWORD PTR 846[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	mov	DWORD PTR 824[rbx], 41484288
	lea	rcx, 808[rbx]
	mov	WORD PTR 844[rbx], r9w
	mov	QWORD PTR 816[rbx], rax
	mov	DWORD PTR 850[rbx], 1152
	mov	WORD PTR 856[rbx], si
	mov	BYTE PTR 858[rbx], 16
	mov	BYTE PTR 861[rbx], 0
	mov	DWORD PTR 864[rbx], -1
	mov	DWORD PTR 840[rbx], 8192
	call	UpdateSpriteAnimation
	mov	ecx, 9
	mov	DWORD PTR 1038[rbx], 0
	call	VramMalloc
	xor	r10d, r10d
	mov	DWORD PTR 1016[rbx], 41615360
	mov	ecx, 9
	mov	WORD PTR 1036[rbx], r10w
	mov	QWORD PTR 1008[rbx], rax
	mov	DWORD PTR 1042[rbx], 1216
	mov	WORD PTR 1048[rbx], si
	mov	BYTE PTR 1050[rbx], 16
	mov	BYTE PTR 1053[rbx], 0
	mov	DWORD PTR 1056[rbx], -1
	mov	DWORD PTR 1032[rbx], 8192
	mov	DWORD PTR 1102[rbx], 0
	call	VramMalloc
	xor	r11d, r11d
	mov	DWORD PTR 1080[rbx], 41549824
	mov	ecx, 64
	mov	WORD PTR 1100[rbx], r11w
	mov	QWORD PTR 1072[rbx], rax
	mov	DWORD PTR 1106[rbx], 1344
	mov	WORD PTR 1112[rbx], si
	mov	BYTE PTR 1114[rbx], 16
	mov	BYTE PTR 1117[rbx], 0
	mov	DWORD PTR 1120[rbx], -1
	mov	DWORD PTR 1096[rbx], 8192
	mov	DWORD PTR 910[rbx], 0
	call	VramMalloc
	mov	WORD PTR 920[rbx], si
	lea	rcx, 872[rbx]
	mov	QWORD PTR 880[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 888[rbx], 41353216
	mov	WORD PTR 908[rbx], ax
	mov	DWORD PTR 914[rbx], 1088
	mov	BYTE PTR 922[rbx], 16
	mov	BYTE PTR 925[rbx], 0
	mov	DWORD PTR 928[rbx], -1
	mov	DWORD PTR 904[rbx], 8192
	call	UpdateSpriteAnimation
	mov	ecx, 12
	mov	DWORD PTR 974[rbx], 0
	call	VramMalloc
	mov	WORD PTR 984[rbx], si
	mov	ecx, 64
	mov	QWORD PTR 944[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 952[rbx], 41222144
	mov	WORD PTR 972[rbx], ax
	mov	DWORD PTR 978[rbx], 1344
	mov	BYTE PTR 986[rbx], 16
	mov	BYTE PTR 989[rbx], 0
	mov	DWORD PTR 992[rbx], -1
	mov	DWORD PTR 968[rbx], 8192
	mov	DWORD PTR 1166[rbx], 0
	call	VramMalloc
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	DWORD PTR 1144[rbx], 41287680
	mov	QWORD PTR 1136[rbx], rax
	xor	eax, eax
	mov	WORD PTR 1164[rbx], ax
	movzx	eax, BYTE PTR [rdx]
	mov	DWORD PTR 1170[rbx], 1536
	lea	ecx, 1[rax]
	or	eax, 8288
	mov	WORD PTR 1176[rbx], si
	mov	DWORD PTR 1160[rbx], eax
	movsx	eax, BYTE PTR 0[rbp]
	mov	BYTE PTR 1178[rbx], 16
	mov	BYTE PTR 1181[rbx], 0
	mov	DWORD PTR 1184[rbx], -1
	mov	BYTE PTR [rdx], cl
	cmp	al, 28
	je	.L389
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L399
.L389:
	mov	QWORD PTR 1216[rbx], 0
	mov	QWORD PTR 1280[rbx], 0
.L390:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L399:
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jg	.L389
	mov	DWORD PTR 1246[rbx], 0
	mov	ecx, 12
	call	VramMalloc
	mov	WORD PTR 1256[rbx], si
	mov	ecx, 9
	mov	QWORD PTR 1216[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 1224[rbx], 8454144
	mov	WORD PTR 1244[rbx], ax
	mov	DWORD PTR 1250[rbx], 128
	mov	BYTE PTR 1258[rbx], 16
	mov	BYTE PTR 1261[rbx], 0
	mov	DWORD PTR 1264[rbx], -1
	mov	DWORD PTR 1240[rbx], 8192
	mov	DWORD PTR 1310[rbx], 0
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 1288[rbx], 30539776
	mov	QWORD PTR 1280[rbx], rax
	mov	WORD PTR 1308[rbx], dx
	mov	DWORD PTR 1314[rbx], 128
	mov	WORD PTR 1320[rbx], si
	mov	BYTE PTR 1322[rbx], 16
	mov	BYTE PTR 1325[rbx], 0
	mov	DWORD PTR 1328[rbx], -1
	mov	DWORD PTR 1304[rbx], 8192
	jmp	.L390
	.p2align 4,,10
	.p2align 3
.L398:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	lea	eax, 6[rax+rax]
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L397:
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	mov	eax, 3
	adc	al, 0
	jmp	.L388
	.seh_endproc
	.p2align 4
	.globl	EggHammerTankIIMove
	.def	EggHammerTankIIMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggHammerTankIIMove
EggHammerTankIIMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	movd	xmm3, edx
	mov	rdx, QWORD PTR 24[rax]
	movd	xmm1, ecx
	punpckldq	xmm1, xmm3
	movq	xmm0, QWORD PTR [rdx]
	lea	rcx, 632[rdx]
	movq	xmm2, QWORD PTR 192[rdx]
	lea	r8, 728[rdx]
	mov	rax, rcx
	paddd	xmm0, xmm1
	paddd	xmm2, xmm1
	movq	QWORD PTR [rdx], xmm0
	movq	QWORD PTR 192[rdx], xmm2
.L401:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 24
	paddd	xmm0, xmm1
	movq	QWORD PTR -24[rax], xmm0
	cmp	rax, r8
	jne	.L401
	lea	rax, 248[rdx]
	lea	r8, 440[rdx]
	.p2align 4,,10
	.p2align 3
.L402:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 24
	paddd	xmm0, xmm1
	movq	QWORD PTR -24[rax], xmm0
	cmp	rax, r8
	jne	.L402
	.p2align 4,,10
	.p2align 3
.L403:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 24
	paddd	xmm0, xmm1
	movq	QWORD PTR -24[rax], xmm0
	cmp	rcx, rax
	jne	.L403
	movq	xmm0, QWORD PTR 208[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 208[rdx], xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D7AD0:
	.word	30391
	.word	25311
	.word	25467
	.word	27551
	.word	32288
	.word	32352
	.word	32520
	.word	30496
	.word	32676
	.word	32721
	.word	25088
	.word	27306
	.word	28398
	.word	29491
	.word	30583
	.word	32731
	.word	11912
	.word	32352
	.word	32004
	.word	21696
	.word	959
	.word	831
	.word	471
	.word	10655
	.word	155
	.word	78
	.word	32767
	.word	22197
	.word	17969
	.word	12684
	.word	8456
	.word	2116
	.align 32
sBossStateHandlers:
	.quad	StateHandler_HammerReset
	.quad	StateHandler_HammerExtend
	.quad	StateHandler_HammerAim
	.quad	StateHandler_HammerPlunge
	.quad	StateHandler_HammerSlam
	.quad	StateHandler_HammerHold
	.quad	StateHandler_HammerDrag
	.quad	StateHandler_HammerRetract
	.align 16
sGroundPhysicsHandlers:
	.quad	PhysicsHandler_Falling
	.quad	PhysicsHandler_OnTerrain
gUnknown_080D7AA2:
	.ascii "\10\15\10\15\15"
	.align 8
gUnknown_080D7A98:
	.word	576
	.word	320
	.word	576
	.word	320
	.word	320
	.align 32
gUnknown_080D7A78:
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	144
	.word	128
	.word	112
	.word	96
	.word	80
	.word	64
	.word	48
	.word	48
	.align 32
gUnknown_080D7A58:
	.long	0
	.long	3072
	.long	6144
	.long	9216
	.long	12288
	.long	15360
	.long	18432
	.long	21504
	.align 16
sQArmSegmentAngleOffsets:
	.word	160
	.word	156
	.word	152
	.word	148
	.word	144
	.word	140
	.word	136
	.word	132
	.align 16
gUnknown_080D7A18:
	.word	96
	.word	104
	.word	112
	.word	120
	.word	128
	.word	136
	.word	144
	.word	152
	.align 16
.LC0:
	.long	768
	.long	768
	.long	768
	.long	768
	.align 16
.LC1:
	.long	0
	.long	3072
	.long	6144
	.long	9216
	.align 16
.LC2:
	.long	12288
	.long	15360
	.long	18432
	.long	21504
	.align 8
.LC3:
	.long	-5632
	.long	3712
	.align 8
.LC4:
	.long	6144
	.long	3712
	.align 8
.LC5:
	.word	619
	.word	0
	.word	1000
	.word	768
	.align 8
.LC6:
	.long	1013904223
	.long	1013904223
	.align 8
.LC7:
	.long	15
	.long	15
	.align 8
.LC15:
	.long	63
	.long	31
	.align 2
.LC17:
	.byte	0
	.byte	-1
	.align 8
.LC19:
	.long	4
	.long	60
	.align 8
.LC20:
	.long	3
	.long	30
	.align 16
.LC22:
	.long	0
	.long	2
	.long	0
	.long	120
	.align 8
.LC23:
	.long	250880
	.long	39680
	.align 8
.LC25:
	.long	768
	.long	4736
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackResults;	.scl	2;	.type	32;	.endef
	.def	CreateStageResultsCutscene;	.scl	2;	.type	32;	.endef
	.def	sub_801E6D4;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gBossIndex, "dr"
	.globl	.refptr.gBossIndex
	.linkonce	discard
.refptr.gBossIndex:
	.quad	gBossIndex
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gUnknown_080D6DE4, "dr"
	.globl	.refptr.gUnknown_080D6DE4
	.linkonce	discard
.refptr.gUnknown_080D6DE4:
	.quad	gUnknown_080D6DE4
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gTileInfoBossScrews, "dr"
	.globl	.refptr.gTileInfoBossScrews
	.linkonce	discard
.refptr.gTileInfoBossScrews:
	.quad	gTileInfoBossScrews
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
