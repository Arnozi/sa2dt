	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_EggGoRound;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggGoRound
TaskDestructor_EggGoRound:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 1080[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1016[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 464[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 536[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 664[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 752[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 600[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HandleDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleDestroy
Task_HandleDestroy:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_804655C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804655C
sub_804655C:
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
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 5[rcx]
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 494[rcx], ax
	movzx	eax, WORD PTR 9[rcx]
	lea	rbp, 456[rcx]
	mov	rbx, rcx
	sub	ax, WORD PTR 4[rsi]
	mov	edi, edx
	mov	WORD PTR 496[rcx], ax
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	rbp, 528[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 5[rbx]
	sub	ax, WORD PTR [rsi]
	mov	rcx, rbp
	mov	WORD PTR 566[rbx], ax
	movzx	eax, WORD PTR 9[rbx]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 568[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	cmp	eax, 47
	ja	.L16
	and	edi, 1
	jne	.L32
.L16:
	mov	BYTE PTR 47[rsp], 0
.L5:
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	xor	r12d, r12d
	lea	r14, 592[rbx]
	lea	r13, sLinkPositions[rip]
.L7:
	mov	ebp, DWORD PTR 20[rbx]
	movzx	r15d, BYTE PTR 47[rsp]
	add	ebp, r12d
	sal	ebp, 14
	shr	ebp, 22
	cmp	r15b, 2
	ja	.L12
.L11:
	movsx	ax, BYTE PTR 43[rbx]
	movzx	r10d, WORD PTR 5[rbx]
	movzx	ecx, WORD PTR 9[rbx]
	movzx	r9d, BYTE PTR 0[r13+r15]
	imul	eax, r15d
	sub	r10w, WORD PTR [rsi]
	sub	cx, WORD PTR 4[rsi]
	lea	edx, [rax+rbp]
	test	r15b, 1
	jne	.L31
	mov	edx, ebp
	sub	edx, eax
.L31:
	and	edx, 1023
	add	r15, 1
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR [rdi+rdx*2]
	cdqe
	movsx	eax, WORD PTR [rdi+rax*2]
	imul	edx, r9d
	imul	eax, r9d
	sar	edx, 14
	add	ecx, edx
	sar	eax, 14
	mov	WORD PTR 632[rbx], cx
	mov	rcx, r14
	add	eax, r10d
	mov	WORD PTR 630[rbx], ax
	call	DisplaySprite
	cmp	r15b, 2
	jbe	.L11
.L12:
	add	r12d, 65536
	cmp	r12d, 262144
	jne	.L7
	lea	rcx, 656[rbx]
	lea	rbp, 728[rbx]
	xor	r12d, r12d
	call	UpdateSpriteAnimation
	lea	rcx, 744[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 832[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 920[rbx]
	call	UpdateSpriteAnimation
.L15:
	mov	edx, r12d
	movsx	ax, BYTE PTR 43[rbx]
	movzx	ecx, WORD PTR 5[rbx]
	lea	r13, -72[rbp]
	sal	edx, 16
	add	edx, DWORD PTR 20[rbx]
	sub	cx, WORD PTR [rsi]
	sal	edx, 14
	lea	eax, [rax+rax*2]
	shr	edx, 22
	add	eax, edx
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [rdi+rax*2]
	movsx	edx, WORD PTR [rdi+rdx*2]
	imul	eax, eax, 66
	imul	edx, edx, 66
	sar	eax, 14
	sar	edx, 14
	add	ecx, edx
	mov	WORD PTR -34[rbp], cx
	movzx	edx, WORD PTR 9[rbx]
	sub	dx, WORD PTR 4[rsi]
	add	eax, edx
	mov	WORD PTR -32[rbp], ax
	cmp	WORD PTR 30[rbx], 0
	je	.L13
	cmp	BYTE PTR 36[rbx], 0
	jne	.L13
	test	r12b, 1
	jne	.L33
	.p2align 4,,10
	.p2align 3
.L13:
	mov	DWORD PTR -40[rbp], 4096
.L14:
	mov	rcx, r13
	add	r12d, 1
	add	rbp, 88
	call	DisplaySprite
	cmp	r12d, 4
	jne	.L15
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
.L33:
	movzx	edx, BYTE PTR 37[rbx]
	sub	edx, 1
	cmp	dl, 1
	ja	.L13
	mov	edx, DWORD PTR 24[rbx]
	mov	WORD PTR 8[rbp], ax
	mov	WORD PTR 6[rbp], cx
	shr	edx, 8
	mov	DWORD PTR 2[rbp], 16777472
	mov	WORD PTR 0[rbp], dx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	or	eax, 4128
	mov	DWORD PTR -40[rbp], eax
	mov	BYTE PTR [rdx], cl
	mov	rdx, rbp
	mov	rcx, r13
	call	TransformSprite
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L32:
	mov	r15d, 48
	sub	r15d, eax
	sar	r15d, 4
	lea	eax, 1[r15]
	mov	BYTE PTR 47[rsp], al
	jmp	.L5
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCamera[rip]
	lea	r13, sLinkPositions[rip+3]
	xor	ebp, ebp
	lea	r12, -3[r13]
	movzx	eax, WORD PTR 5[rcx]
	sub	ax, WORD PTR [rbx]
	mov	WORD PTR 494[rcx], ax
	movzx	eax, WORD PTR 9[rcx]
	lea	rsi, 456[rcx]
	mov	r15, rcx
	sub	ax, WORD PTR 4[rbx]
	mov	WORD PTR 496[rcx], ax
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 528[r15]
	call	DisplaySprite
	movzx	eax, WORD PTR 5[r15]
	sub	ax, WORD PTR [rbx]
	mov	rcx, rsi
	mov	WORD PTR 566[r15], ax
	movzx	eax, WORD PTR 9[r15]
	sub	ax, WORD PTR 4[rbx]
	mov	WORD PTR 568[r15], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	lea	rax, 592[r15]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	QWORD PTR 40[rsp], rax
.L36:
	mov	edi, DWORD PTR 20[r15]
	lea	r14, sLinkPositions[rip]
	add	edi, ebp
	sal	edi, 14
	shr	edi, 22
.L35:
	movsx	ax, BYTE PTR 43[r15]
	mov	edx, r14d
	movzx	ecx, BYTE PTR [r14]
	add	r14, 1
	sub	edx, r12d
	imul	eax, edx
	movzx	edx, WORD PTR 5[r15]
	sub	dx, WORD PTR [rbx]
	mov	r9d, edx
	add	eax, edi
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [rsi+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	eax, ecx
	imul	edx, ecx
	mov	rcx, QWORD PTR 40[rsp]
	sar	eax, 14
	sar	edx, 14
	add	edx, r9d
	mov	WORD PTR 630[r15], dx
	movzx	edx, WORD PTR 9[r15]
	sub	dx, WORD PTR 4[rbx]
	add	edx, eax
	mov	WORD PTR 632[r15], dx
	call	DisplaySprite
	cmp	r13, r14
	jne	.L35
	add	ebp, 65536
	cmp	ebp, 262144
	jne	.L36
	lea	rcx, 656[r15]
	lea	rdi, 728[r15]
	xor	ebp, ebp
	call	UpdateSpriteAnimation
	lea	rcx, 744[r15]
	call	UpdateSpriteAnimation
	lea	rcx, 832[r15]
	call	UpdateSpriteAnimation
	lea	rcx, 920[r15]
	call	UpdateSpriteAnimation
.L39:
	mov	edx, ebp
	movsx	ax, BYTE PTR 43[r15]
	movzx	ecx, WORD PTR 5[r15]
	lea	r12, -72[rdi]
	sal	edx, 16
	add	edx, DWORD PTR 20[r15]
	sub	cx, WORD PTR [rbx]
	sal	edx, 14
	lea	eax, [rax+rax*2]
	shr	edx, 22
	add	eax, edx
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [rsi+rax*2]
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	eax, eax, 66
	imul	edx, edx, 66
	sar	eax, 14
	sar	edx, 14
	add	ecx, edx
	mov	WORD PTR -34[rdi], cx
	movzx	edx, WORD PTR 9[r15]
	sub	dx, WORD PTR 4[rbx]
	add	eax, edx
	mov	WORD PTR -32[rdi], ax
	cmp	WORD PTR 30[r15], 0
	je	.L37
	cmp	BYTE PTR 36[r15], 0
	jne	.L37
	test	bpl, 1
	jne	.L46
	.p2align 4,,10
	.p2align 3
.L37:
	mov	DWORD PTR -40[rdi], 4096
.L38:
	mov	rcx, r12
	add	ebp, 1
	add	rdi, 88
	call	DisplaySprite
	cmp	ebp, 4
	jne	.L39
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
.L46:
	movzx	edx, BYTE PTR 37[r15]
	sub	edx, 1
	cmp	dl, 1
	ja	.L37
	mov	edx, DWORD PTR 24[r15]
	mov	WORD PTR 8[rdi], ax
	mov	WORD PTR 6[rdi], cx
	shr	edx, 8
	mov	DWORD PTR 2[rdi], 16777472
	mov	WORD PTR [rdi], dx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	or	eax, 4128
	mov	DWORD PTR -40[rdi], eax
	mov	BYTE PTR [rdx], cl
	mov	rdx, rdi
	mov	rcx, r12
	call	TransformSprite
	jmp	.L38
	.seh_endproc
	.p2align 4
	.def	UpdatePos;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePos
UpdatePos:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r8d, r8d
	mov	r9d, 8
	movsx	eax, WORD PTR 12[rcx]
	movq	xmm1, QWORD PTR 4[rcx]
	movd	xmm0, eax
	movsx	eax, WORD PTR 14[rcx]
	movd	xmm2, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	rbx, rcx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rcx], xmm0
	movd	edx, xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	mov	QWORD PTR 40[rsp], rax
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	edx, DWORD PTR 16[rbx]
	sal	eax, 8
	add	DWORD PTR 8[rbx], eax
	mov	eax, DWORD PTR 20[rbx]
	add	eax, edx
	and	eax, 262143
	cmp	BYTE PTR 40[rbx], 4
	mov	DWORD PTR 20[rbx], eax
	ja	.L47
	cmp	edx, -256
	jne	.L55
.L47:
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	sub	edx, 1
	mov	DWORD PTR 16[rbx], edx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	UpdateProjectiles;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateProjectiles
UpdateProjectiles:
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
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	xor	edx, edx
	mov	r13, rcx
	lea	rbp, 1072[rcx]
	lea	rbx, 60[rcx]
	lea	rdi, 108[rcx]
.L62:
	movzx	eax, BYTE PTR [rbx]
	test	al, al
	je	.L57
	sub	eax, 1
	mov	BYTE PTR [rbx], al
	test	BYTE PTR 36[r12], -128
	je	.L58
	movsx	eax, WORD PTR 12[rbx]
	add	eax, DWORD PTR 4[rbx]
.L59:
	movsx	r8d, WORD PTR 14[rbx]
	add	r8d, DWORD PTR 8[rbx]
	mov	DWORD PTR 4[rbx], eax
	mov	DWORD PTR 8[rbx], r8d
	test	edx, edx
	je	.L67
	cmp	BYTE PTR 40[r13], 0
	jne	.L68
.L61:
	movzx	eax, WORD PTR 5[rbx]
	sar	r8d, 8
	sub	ax, WORD PTR [rsi]
	mov	rcx, rbp
	sub	r8w, WORD PTR 4[rsi]
	mov	WORD PTR 1110[r13], ax
	mov	WORD PTR 1112[r13], r8w
	call	DisplaySprite
	mov	edx, 1
.L57:
	add	rbx, 16
	cmp	rdi, rbx
	jne	.L62
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
.L58:
	movsx	ecx, WORD PTR 12[rbx]
	mov	eax, DWORD PTR 4[rbx]
	lea	eax, 1280[rcx+rax]
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L67:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 40[r13], 0
	mov	r8d, DWORD PTR 8[rbx]
	je	.L61
.L68:
	mov	edx, DWORD PTR 4[rbx]
	sar	r8d, 8
	mov	rcx, rbp
	sar	edx, 8
	call	Coll_Player_Projectile
	mov	r8d, DWORD PTR 8[rbx]
	jmp	.L61
	.seh_endproc
	.p2align 4
	.def	sub_8047060.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8047060.part.0
sub_8047060.part.0:
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	imul	eax, DWORD PTR [r9], 1663525
	add	eax, 1013904223
	mov	rdx, rcx
	movzx	ecx, WORD PTR 9[rcx]
	sub	cx, WORD PTR 4[r10]
	movzx	r8d, WORD PTR 5[rdx]
	sub	r8w, WORD PTR [r10]
	mov	r10d, eax
	movsx	ecx, cx
	imul	eax, eax, 1663525
	and	r10d, 63
	movsx	r8d, r8w
	add	rdx, 448
	lea	r8d, -31[r8+r10]
	mov	DWORD PTR 56[rsp], r8d
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	and	r8d, 63
	lea	ecx, -31[r8+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 60[rsp], ecx
	xor	ecx, ecx
	mov	r8d, eax
	imul	eax, eax, 1663525
	mov	WORD PTR 64[rsp], cx
	mov	ecx, 1031
	and	r8d, 63
	sub	ecx, r8d
	add	eax, 1013904223
	mov	WORD PTR 48[rsp], cx
	mov	ecx, 1024
	mov	DWORD PTR [r9], eax
	and	ax, 511
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 50[rsp], cx
	lea	rcx, 32[rsp]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 88
	ret
	.seh_endproc
	.p2align 4
	.def	UpdatePilotAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePilotAnim
UpdatePilotAnim:
	.seh_endprologue
	movzx	eax, BYTE PTR 42[rcx]
	test	al, al
	je	.L71
	sub	eax, 1
	mov	BYTE PTR 41[rcx], 0
	mov	BYTE PTR 42[rcx], al
	test	al, al
	je	.L79
.L70:
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	movzx	eax, BYTE PTR 41[rcx]
	test	al, al
	je	.L70
	sub	eax, 1
	mov	BYTE PTR 41[rcx], al
	test	al, al
	jne	.L70
	mov	eax, 693
	mov	edx, -256
	mov	WORD PTR 546[rcx], ax
	mov	WORD PTR 576[rcx], dx
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	cmp	BYTE PTR 40[rcx], 0
	mov	edx, 3
	mov	r8d, 693
	mov	BYTE PTR 577[rcx], -1
	cmove	eax, edx
	mov	WORD PTR 546[rcx], r8w
	mov	BYTE PTR 576[rcx], al
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroRollIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroRollIn
Task_IntroRollIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR [rbx]
	movsx	eax, WORD PTR 12[rbx]
	add	eax, DWORD PTR 4[rbx]
	movsx	ecx, WORD PTR 14[rbx]
	lea	edx, [rax+rdx*8]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	ecx, DWORD PTR 8[rbx]
	mov	DWORD PTR 4[rbx], edx
	sar	edx, 8
	mov	DWORD PTR 8[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	mov	rcx, rbx
	sal	eax, 8
	add	DWORD PTR 8[rbx], eax
	mov	eax, DWORD PTR 16[rbx]
	add	eax, DWORD PTR 20[rbx]
	and	eax, 262143
	mov	DWORD PTR 20[rbx], eax
	call	UpdatePilotAnim
	call	Render
	mov	eax, DWORD PTR [rbx]
	cmp	eax, 63
	jbe	.L81
	sub	eax, 1
	mov	DWORD PTR [rbx], eax
.L80:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	test	al, 1
	je	.L83
	add	BYTE PTR 43[rbx], 1
.L83:
	mov	edx, DWORD PTR 16[rbx]
	lea	ecx, -128[0+rax*4]
	sub	edx, 44
	sub	edx, ecx
	sub	eax, 1
	mov	DWORD PTR 16[rbx], edx
	mov	DWORD PTR [rbx], eax
	jne	.L80
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Main[rip]
	mov	BYTE PTR 43[rbx], 0
	mov	DWORD PTR 16[rbx], 256
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	SetPalette.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	SetPalette.isra.0
SetPalette.isra.0:
	.seh_endprologue
	test	cl, cl
	je	.L88
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rcx, sPalettes[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR 256[rdx], xmm0
	mov	r8, QWORD PTR 16[rax]
	mov	r9, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR 272[rdx], r8
	or	DWORD PTR [rax], 2
	mov	QWORD PTR 280[rdx], r9
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	movdqu	xmm1, XMMWORD PTR sPalettes[rip+32]
	movdqu	xmm2, XMMWORD PTR sPalettes[rip+48]
	movups	XMMWORD PTR 256[rax], xmm1
	movups	XMMWORD PTR 272[rax], xmm2
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DestructionCutScene1;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DestructionCutScene1
Task_DestructionCutScene1:
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
	mov	rdi, QWORD PTR .refptr.gStageTime[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	imul	eax, DWORD PTR [rdi], 1022611261
	add	eax, 102261126
	cmp	eax, 204522252
	jbe	.L96
.L91:
	mov	edx, DWORD PTR [rbx]
	mov	rcx, rbx
	mov	eax, edx
	sal	eax, 8
	and	eax, 768
	cmp	edx, 63
	mov	edx, 0
	cmovbe	rax, rdx
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 12
	mov	BYTE PTR 43[rbx], al
	call	UpdatePos
	mov	rcx, rbx
	call	UpdateProjectiles
	mov	rcx, rbx
	call	UpdatePilotAnim
	xor	edx, edx
	call	sub_804655C
	movzx	ecx, BYTE PTR 42[rbx]
	call	SetPalette.isra.0
	test	BYTE PTR [rdi], 15
	je	.L97
.L93:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rax], -9
	mov	QWORD PTR 64[rax], 0
	sub	DWORD PTR [rbx], 1
	jne	.L90
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_DestructionCutScene2[rip]
	mov	BYTE PTR 43[rbx], 0
	mov	DWORD PTR 16[rbx], 0
	mov	DWORD PTR [rbx], 128
	mov	QWORD PTR 40[rax], rsi
.L90:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L97:
	mov	rcx, rbx
	call	sub_8047060.part.0
	jmp	.L93
	.seh_endproc
	.p2align 4
	.def	Task_DestructionCutScene3;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DestructionCutScene3
Task_DestructionCutScene3:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 8
	mov	r8d, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 116[rbx]
	movq	xmm1, QWORD PTR 108[rbx]
	add	eax, 48
	movd	xmm2, eax
	mov	DWORD PTR 120[rbx], eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 108[rbx], xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rax
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 20
	call	sub_801F100
	test	eax, eax
	jns	.L99
	sub	DWORD PTR 116[rbx], 64
	mov	edx, DWORD PTR 116[rbx]
	xor	ecx, ecx
	test	edx, edx
	cmovs	edx, ecx
	sal	eax, 8
	add	DWORD PTR 112[rbx], eax
	mov	DWORD PTR 116[rbx], edx
	mov	edx, DWORD PTR 120[rbx]
	lea	ecx, [rdx+rdx*8]
	sal	ecx, 2
	sub	edx, ecx
	lea	ecx, [rdx+rdx]
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, ecx
	mov	DWORD PTR 120[rbx], edx
.L99:
	mov	rcx, rbx
	lea	rbp, 456[rbx]
	call	UpdatePilotAnim
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 109[rbx]
	mov	rcx, rbp
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 494[rbx], ax
	movzx	eax, WORD PTR 113[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 496[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	cmp	BYTE PTR 449[rbx], 0
	je	.L109
.L100:
	movzx	ecx, BYTE PTR 42[rbx]
	call	SetPalette.isra.0
	mov	rbp, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR 0[rbp]
	imul	edx, eax, -858993459
	add	edx, 429496728
	ror	edx
	cmp	edx, 429496728
	ja	.L101
	cmp	BYTE PTR 449[rbx], 0
	je	.L110
.L101:
	imul	eax, eax, -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L111
.L102:
	mov	ecx, DWORD PTR 108[rbx]
	mov	eax, DWORD PTR [rdi]
	sar	ecx, 8
	mov	edx, ecx
	sub	edx, eax
	cmp	BYTE PTR 449[rbx], 0
	jne	.L103
	cmp	edx, 49
	jle	.L112
.L98:
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	cmp	edx, -200
	jge	.L98
.L107:
	mov	r8d, 5
	mov	edx, 150
	mov	ecx, -40
	call	sub_802EF68
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_HandleDestroy[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L109:
	movzx	eax, WORD PTR 109[rbx]
	sub	ax, WORD PTR [rdi]
	lea	rbp, 528[rbx]
	mov	WORD PTR 566[rbx], ax
	movzx	eax, WORD PTR 113[rbx]
	mov	rcx, rbp
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 568[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L110:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	movzx	edx, WORD PTR 113[rbx]
	sub	dx, WORD PTR 4[rdi]
	imul	eax, DWORD PTR [rcx], 1663525
	mov	r8d, edx
	movzx	edx, WORD PTR 109[rbx]
	sub	dx, WORD PTR [rdi]
	movsx	edx, dx
	add	eax, 1013904223
	mov	r9d, eax
	imul	eax, eax, 1663525
	and	r9d, 63
	lea	edx, -31[rdx+r9]
	add	eax, 1013904223
	mov	DWORD PTR 72[rsp], edx
	movsx	edx, r8w
	mov	r9d, eax
	imul	eax, eax, 1663525
	and	r9d, 63
	lea	edx, -31[r9+rdx]
	add	eax, 1013904223
	mov	DWORD PTR 76[rsp], edx
	xor	edx, edx
	mov	r8d, eax
	imul	eax, eax, 1663525
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1031
	and	r8d, 63
	sub	edx, r8d
	add	eax, 1013904223
	mov	WORD PTR 64[rsp], dx
	mov	edx, 1024
	mov	DWORD PTR [rcx], eax
	and	ax, 511
	lea	rcx, 48[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 66[rsp], dx
	lea	rdx, 448[rbx]
	add	rax, 76160
	mov	QWORD PTR 48[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 56[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	mov	eax, DWORD PTR 0[rbp]
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L112:
	mov	r8d, DWORD PTR 560[rbx]
	mov	BYTE PTR 449[rbx], 1
	sub	ecx, eax
	mov	edx, -15
	sub	dx, WORD PTR 4[rdi]
	add	dx, WORD PTR 113[rbx]
	movsx	ecx, cx
	and	r8d, 1024
	movsx	edx, dx
	or	r8d, 4096
	call	CreateEggmobileEscapeSequence
	mov	eax, DWORD PTR 108[rbx]
	sar	eax, 8
	sub	eax, DWORD PTR [rdi]
	cmp	eax, -200
	jge	.L98
	cmp	BYTE PTR 449[rbx], 0
	jne	.L107
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DestructionCutScene2;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DestructionCutScene2
Task_DestructionCutScene2:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r15, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -252645135
	add	eax, 126322567
	cmp	eax, 252645134
	jbe	.L132
.L114:
	movzx	eax, WORD PTR [r15]
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 16[r15], 0
	mov	rcx, r15
	sal	eax, 8
	and	eax, 768
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 12
	mov	BYTE PTR 43[r15], al
	call	UpdatePos
	mov	rcx, r15
	call	UpdateProjectiles
	mov	rcx, r15
	call	UpdatePilotAnim
	mov	edx, 1
	call	sub_804655C
	movzx	ecx, BYTE PTR 42[r15]
	call	SetPalette.isra.0
	mov	eax, DWORD PTR [r15]
	cmp	eax, 49
	ja	.L116
	mov	edx, 49
	mov	ecx, edx
	sub	ecx, eax
	mov	esi, ecx
	and	ecx, -16
	sub	edx, ecx
	sar	esi, 4
	cmp	eax, edx
	je	.L117
.L116:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 15
	je	.L133
.L119:
	mov	eax, DWORD PTR [r15]
	lea	r11d, -1[rax]
	mov	DWORD PTR [r15], r11d
	test	r11d, r11d
	je	.L134
.L113:
	add	rsp, 120
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
.L132:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L134:
	mov	ecx, DWORD PTR 20[r15]
	xor	eax, eax
	movq	xmm1, QWORD PTR 4[r15]
	xor	ebp, ebp
	mov	BYTE PTR 449[r15], 0
	xor	esi, esi
	mov	WORD PTR 28[r15], ax
	sal	ecx, 14
	mov	QWORD PTR 116[r15], 1408
	mov	r14d, ecx
	mov	DWORD PTR 124[r15], 300
	movq	QWORD PTR 108[r15], xmm1
.L125:
	mov	r10d, r14d
	mov	rdx, r15
	lea	r9, sLinkPositions[rip]
	mov	r8d, 140
	shr	r10d, 22
	sub	rdx, rsi
	lea	eax, 256[r10]
	movsx	r12d, WORD PTR [rbx+rax*2]
	mov	eax, r10d
	movsx	edi, WORD PTR [rbx+rax*2]
.L124:
	movzx	r13d, BYTE PTR [r9]
	add	r9, 1
	mov	eax, r13d
	imul	r13d, edi
	imul	eax, r12d
	sar	r13d, 6
	sar	eax, 6
	movd	xmm2, r13d
	movd	xmm0, eax
	lea	rax, [rsi+rdx]
	add	rdx, 20
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 208[rax+rbp], xmm0
	mov	DWORD PTR 196[rdx], r8d
	sub	r8d, 20
	mov	DWORD PTR 200[rdx], 1
	mov	DWORD PTR 204[rdx], r10d
	cmp	r8d, 80
	jne	.L124
	add	r11d, 1
	add	r14d, 1073741824
	sub	rsi, 60
	add	rbp, 60
	cmp	r11d, 4
	jne	.L125
	mov	r10, QWORD PTR .LC3[rip]
	lea	rdx, 128[r15]
	lea	r8, 208[r15]
.L126:
	mov	r9d, ecx
	mov	QWORD PTR 8[rdx], r10
	add	rdx, 20
	add	ecx, 1073741824
	shr	r9d, 22
	lea	eax, 256[r9]
	mov	DWORD PTR -4[rdx], r9d
	movsx	eax, WORD PTR [rbx+rax*2]
	imul	eax, eax, 66
	sar	eax, 6
	movd	xmm0, eax
	mov	eax, r9d
	movsx	eax, WORD PTR [rbx+rax*2]
	imul	eax, eax, 66
	sar	eax, 6
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR -20[rdx], xmm0
	cmp	r8, rdx
	jne	.L126
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rbx, Task_DestructionCutScene3[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rbx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L133:
	mov	rcx, r15
	call	sub_8047060.part.0
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L117:
	mov	ecx, 144
	movsx	rsi, esi
	lea	r14, 64[rsp]
	call	m4aSongNumStart
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	r9, r15
	xor	edx, edx
	lea	rax, sLinkPositions[rip]
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
	add	rdi, 76160
	movzx	ecx, BYTE PTR [rax+rsi]
	lea	rax, 448[r15]
	mov	r15, r14
	mov	QWORD PTR 40[rsp], rdi
	mov	r14, rax
.L121:
	mov	eax, DWORD PTR 20[r9]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 48[rsp], r9
	mov	r13d, 2560
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	movzx	edi, WORD PTR 5[r9]
	mov	DWORD PTR 56[rsp], edx
	add	eax, edx
	sub	di, WORD PTR [rsi]
	movzx	esi, WORD PTR 9[r9]
	mov	DWORD PTR 60[rsp], ecx
	sal	eax, 14
	sub	si, WORD PTR 4[r11]
	shr	eax, 22
	lea	r8d, 256[rax]
	mov	r12d, eax
	movsx	eax, WORD PTR [rbx+rax*2]
	movsx	r8, r8d
	movsx	r8d, WORD PTR [rbx+r8*2]
	imul	eax, ecx
	imul	r8d, ecx
	sar	eax, 14
	add	esi, eax
	sar	r8d, 14
	movsx	esi, si
	add	edi, r8d
	movsx	edi, di
.L120:
	imul	eax, DWORD PTR 0[rbp], 1663525
	mov	WORD PTR 82[rsp], r13w
	mov	rcx, r15
	sub	r13w, 512
	add	eax, 1013904223
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 15
	lea	edx, -8[rdi+rdx]
	add	eax, 1013904223
	mov	DWORD PTR 88[rsp], edx
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 15
	lea	edx, -8[rsi+rdx]
	mov	DWORD PTR 92[rsp], edx
	add	eax, 1013904223
	xor	edx, edx
	mov	WORD PTR 96[rsp], dx
	mov	edx, 31
	mov	DWORD PTR 0[rbp], eax
	and	eax, 63
	sub	edx, eax
	lea	eax, [rdx+r12]
	mov	rdx, r14
	mov	WORD PTR 80[rsp], ax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 72[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	cmp	r13w, 1024
	jne	.L120
	mov	edx, DWORD PTR 56[rsp]
	mov	r9, QWORD PTR 48[rsp]
	mov	ecx, DWORD PTR 60[rsp]
	add	edx, 65536
	cmp	edx, 262144
	jne	.L121
	mov	r15, r9
	jmp	.L116
	.seh_endproc
	.p2align 4
	.globl	CreateEggGoRound
	.def	CreateEggGoRound;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggGoRound
CreateEggGoRound:
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
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rbx], 2097152
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	and	DWORD PTR 36[rbx], -9
	xor	r9d, r9d
	mov	QWORD PTR 64[rbx], 0
	mov	r8d, 16384
	lea	rcx, Task_IntroRollIn[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	mov	rdx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR .refptr.gPlayerLimbsPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	lea	rax, TaskDestructor_EggGoRound[rip]
	mov	edx, 1136
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	eax, 8
	cmp	BYTE PTR [rdx], 0
	je	.L136
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	lea	eax, 6[rax+rax]
.L136:
	mov	r8, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 40[rbx], al
	mov	ecx, 38400
	mov	edx, 230400
	cmp	BYTE PTR [r8], 28
	jne	.L137
	shr	al
	mov	ecx, 25600
	mov	edx, 7443456
	mov	BYTE PTR 40[rbx], al
.L137:
	xor	eax, eax
	mov	DWORD PTR 8[rbx], ecx
	pxor	xmm0, xmm0
	mov	WORD PTR 41[rbx], ax
	movabs	rax, 13194139534592
	mov	QWORD PTR 12[rbx], rax
	movabs	rax, 1932735283200
	mov	DWORD PTR [rbx], 128
	mov	QWORD PTR 20[rbx], 0
	mov	BYTE PTR 43[rbx], -32
	mov	QWORD PTR 30[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 4[rbx], edx
	lea	rdx, 108[rbx]
	mov	WORD PTR 38[rbx], ax
	lea	rax, 60[rbx]
	movups	XMMWORD PTR 44[rbx], xmm0
.L138:
	mov	BYTE PTR [rax], 0
	add	rax, 16
	mov	QWORD PTR -12[rax], 0
	mov	DWORD PTR -4[rax], 0
	cmp	rdx, rax
	jne	.L138
	mov	DWORD PTR 1110[rbx], 0
	mov	ecx, 4
	call	VramMalloc
	movzx	esi, WORD PTR .LC1[rip]
	mov	ecx, 4
	mov	DWORD PTR 1088[rbx], 45154304
	mov	QWORD PTR 1080[rbx], rax
	xor	eax, eax
	mov	WORD PTR 1108[rbx], ax
	mov	DWORD PTR 1114[rbx], 384
	mov	WORD PTR 1120[rbx], si
	mov	BYTE PTR 1122[rbx], 16
	mov	BYTE PTR 1125[rbx], 0
	mov	DWORD PTR 1128[rbx], -1
	mov	DWORD PTR 1104[rbx], 4096
	mov	DWORD PTR 1046[rbx], 0
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 1024[rbx], 45088768
	mov	ecx, 42
	mov	WORD PTR 1044[rbx], dx
	mov	QWORD PTR 1016[rbx], rax
	mov	DWORD PTR 1050[rbx], 448
	mov	WORD PTR 1056[rbx], si
	mov	BYTE PTR 1058[rbx], 16
	mov	BYTE PTR 1061[rbx], 0
	mov	DWORD PTR 1064[rbx], -1
	mov	DWORD PTR 1040[rbx], 4096
	mov	DWORD PTR 494[rbx], 0
	call	VramMalloc
	mov	r8d, -255
	xor	ecx, ecx
	mov	DWORD PTR 472[rbx], 45023232
	mov	WORD PTR 504[rbx], r8w
	mov	WORD PTR 492[rbx], cx
	mov	ecx, 8
	mov	QWORD PTR 464[rbx], rax
	mov	DWORD PTR 498[rbx], 1280
	mov	BYTE PTR 506[rbx], 16
	mov	BYTE PTR 509[rbx], 0
	mov	DWORD PTR 512[rbx], -1
	mov	DWORD PTR 488[rbx], 4096
	mov	DWORD PTR 566[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	mov	WORD PTR 576[rbx], si
	mov	ecx, 4
	mov	WORD PTR 564[rbx], r9w
	mov	QWORD PTR 536[rbx], rax
	mov	DWORD PTR 544[rbx], 45416448
	mov	DWORD PTR 570[rbx], 1216
	mov	BYTE PTR 578[rbx], 16
	mov	BYTE PTR 581[rbx], 0
	mov	DWORD PTR 584[rbx], -1
	mov	DWORD PTR 560[rbx], 4096
	mov	DWORD PTR 630[rbx], 0
	call	VramMalloc
	xor	r10d, r10d
	mov	DWORD PTR 608[rbx], 45350912
	lea	rcx, 592[rbx]
	mov	WORD PTR 628[rbx], r10w
	mov	QWORD PTR 600[rbx], rax
	mov	DWORD PTR 634[rbx], 1408
	mov	WORD PTR 640[rbx], si
	mov	BYTE PTR 642[rbx], 16
	mov	BYTE PTR 645[rbx], 0
	mov	DWORD PTR 648[rbx], -1
	mov	DWORD PTR 624[rbx], 4096
	call	UpdateSpriteAnimation
	mov	ecx, 24
	mov	DWORD PTR 694[rbx], 0
	call	VramMalloc
	mov	r13d, DWORD PTR .LC11[rip]
	xor	r11d, r11d
	mov	DWORD PTR 698[rbx], 1344
	mov	WORD PTR 692[rbx], r11w
	lea	rcx, 656[rbx]
	mov	rbp, rax
	mov	QWORD PTR 664[rbx], rax
	mov	DWORD PTR 672[rbx], r13d
	mov	WORD PTR 704[rbx], si
	mov	BYTE PTR 706[rbx], 16
	mov	BYTE PTR 709[rbx], 0
	mov	DWORD PTR 712[rbx], -1
	mov	DWORD PTR 688[rbx], 4096
	call	UpdateSpriteAnimation
	mov	ecx, 64
	mov	DWORD PTR 782[rbx], 0
	call	VramMalloc
	mov	r12d, DWORD PTR .LC12[rip]
	mov	DWORD PTR 786[rbx], 1344
	lea	rcx, 744[rbx]
	mov	QWORD PTR 752[rbx], rax
	mov	rdi, rax
	xor	eax, eax
	mov	DWORD PTR 760[rbx], r12d
	mov	WORD PTR 780[rbx], ax
	mov	WORD PTR 792[rbx], si
	mov	BYTE PTR 794[rbx], 16
	mov	BYTE PTR 797[rbx], 0
	mov	DWORD PTR 800[rbx], -1
	mov	DWORD PTR 776[rbx], 4096
	call	UpdateSpriteAnimation
	xor	eax, eax
	mov	QWORD PTR 840[rbx], rbp
	lea	rcx, 832[rbx]
	mov	DWORD PTR 848[rbx], r13d
	mov	WORD PTR 880[rbx], si
	mov	BYTE PTR 882[rbx], 16
	mov	BYTE PTR 885[rbx], 0
	mov	DWORD PTR 888[rbx], -1
	mov	QWORD PTR 864[rbx], 4096
	mov	DWORD PTR 872[rbx], 88080384
	mov	WORD PTR 876[rbx], ax
	call	UpdateSpriteAnimation
	xor	eax, eax
	lea	rcx, 920[rbx]
	mov	QWORD PTR 928[rbx], rdi
	mov	DWORD PTR 936[rbx], r12d
	mov	WORD PTR 968[rbx], si
	mov	BYTE PTR 970[rbx], 16
	mov	BYTE PTR 973[rbx], 0
	mov	DWORD PTR 976[rbx], -1
	mov	QWORD PTR 952[rbx], 4096
	mov	DWORD PTR 960[rbx], 88080384
	mov	WORD PTR 964[rbx], ax
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
	.globl	EggGoRoundMove
	.def	EggGoRoundMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggGoRoundMove
EggGoRoundMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	xor	r10d, r10d
	mov	rax, QWORD PTR [rax]
	mov	r9, QWORD PTR 24[rax]
	movd	xmm1, ecx
	movq	xmm0, QWORD PTR 4[r9]
	movd	xmm2, edx
	mov	r11, r9
	punpckldq	xmm1, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[r9], xmm0
	movq	xmm0, QWORD PTR 108[r9]
	paddd	xmm0, xmm1
	movq	QWORD PTR 108[r9], xmm0
.L144:
	mov	rax, r11
	mov	r8d, 3
.L145:
	movq	xmm0, QWORD PTR 208[rax]
	add	rax, 20
	paddd	xmm0, xmm1
	movq	QWORD PTR 188[rax], xmm0
	sub	r8b, 1
	jne	.L145
	add	r10, 1
	add	r11, 60
	cmp	r10, 4
	jne	.L144
	pxor	xmm0, xmm0
	mov	DWORD PTR 128[r9], ecx
	lea	rax, 64[r9]
	add	r9, 112
	mov	DWORD PTR 20[r9], edx
	mov	DWORD PTR 36[r9], ecx
	mov	DWORD PTR 40[r9], edx
	mov	DWORD PTR 56[r9], ecx
	mov	DWORD PTR 60[r9], edx
	mov	DWORD PTR 76[r9], ecx
	mov	DWORD PTR 80[r9], edx
	movups	XMMWORD PTR -68[r9], xmm0
.L147:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 16
	paddd	xmm0, xmm1
	movq	QWORD PTR -16[rax], xmm0
	cmp	rax, r9
	jne	.L147
	ret
	.seh_endproc
	.p2align 4
	.globl	HandleHit
	.def	HandleHit;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleHit
HandleHit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, 1
	movzx	eax, BYTE PTR 40[rcx]
	mov	rbx, rcx
	test	al, al
	je	.L150
	sub	eax, 1
	mov	BYTE PTR 40[rcx], al
	test	al, 1
	jne	.L160
	mov	ecx, 235
	call	m4aSongNumStart
.L153:
	movzx	eax, BYTE PTR 40[rbx]
	mov	ecx, 693
	mov	BYTE PTR 42[rbx], 30
	mov	WORD PTR 546[rbx], cx
	test	al, al
	jne	.L154
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 576[rbx], 3
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
	je	.L155
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L155
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
.L155:
	mov	BYTE PTR 577[rbx], -1
.L156:
	xor	edx, edx
.L150:
	mov	eax, edx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L154:
	mov	edx, -256
	mov	WORD PTR 576[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 28
	je	.L156
	cmp	al, 4
	jne	.L156
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	xor	edx, edx
	mov	BYTE PTR 1[rax], 17
	jmp	.L150
	.seh_endproc
	.p2align 4
	.def	Task_Main;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Main
Task_Main:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	UpdatePos
	movzx	eax, WORD PTR 30[rbx]
	test	ax, ax
	je	.L162
	movzx	edx, BYTE PTR 36[rbx]
	test	dl, dl
	je	.L163
	sub	edx, 1
	mov	BYTE PTR 36[rbx], dl
	test	dl, dl
	jne	.L236
	movzx	edx, BYTE PTR 37[rbx]
	cmp	dl, 1
	je	.L166
	cmp	dl, 2
	je	.L167
	test	dl, dl
	je	.L168
.L236:
	movzx	edx, WORD PTR 32[rbx]
	add	edx, DWORD PTR 24[rbx]
	and	edx, 262143
.L165:
	sub	eax, 1
	mov	DWORD PTR 24[rbx], edx
	mov	WORD PTR 30[rbx], ax
	test	ax, ax
	jne	.L238
.L174:
	movzx	eax, WORD PTR .LC1[rip]
	mov	r9d, 690
	mov	esi, 691
	mov	r10d, 691
	mov	r11d, 690
	xor	edi, edi
	mov	WORD PTR 674[rbx], r9w
	mov	WORD PTR 762[rbx], r10w
	mov	WORD PTR 850[rbx], r11w
	mov	WORD PTR 938[rbx], si
	mov	BYTE PTR 39[rbx], 0
	mov	DWORD PTR 24[rbx], 0
	mov	WORD PTR 32[rbx], di
	mov	WORD PTR 704[rbx], ax
	mov	WORD PTR 792[rbx], ax
	mov	WORD PTR 880[rbx], ax
	mov	WORD PTR 968[rbx], ax
	movzx	eax, BYTE PTR 40[rbx]
.L175:
	mov	ecx, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR 8[rbx]
	test	al, al
	je	.L178
.L246:
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	lea	r14, 44[rbx]
	xor	ebp, ebp
	lea	r12, 656[rbx]
.L194:
	mov	eax, ebp
	movsx	r8w, BYTE PTR 43[rbx]
	mov	r13d, ebp
	sal	eax, 16
	add	eax, DWORD PTR 20[rbx]
	sal	eax, 14
	lea	r8d, [r8+r8*2]
	shr	eax, 22
	add	r8d, eax
	mov	eax, ecx
	and	r8d, 1023
	sar	eax, 8
	lea	r9d, 256[r8]
	movsx	r8d, WORD PTR [r11+r8*2]
	movsx	edi, WORD PTR [r11+r9*2]
	mov	r9d, edx
	imul	r8d, r8d, 66
	sar	r9d, 8
	imul	edi, edi, 66
	sar	r8d, 14
	sar	edi, 14
	add	r8d, r9d
	add	edi, eax
	cmp	WORD PTR 30[rbx], 0
	je	.L179
	cmp	BYTE PTR 36[rbx], 0
	jne	.L179
	test	bpl, 1
	je	.L179
	movzx	r15d, BYTE PTR 37[rbx]
	lea	r10d, -1[r15]
	cmp	r10b, 1
	jbe	.L240
	.p2align 4,,10
	.p2align 3
.L179:
	movzx	r10d, WORD PTR 22[rsi]
	mov	r15, QWORD PTR 64[rsi]
	mov	WORD PTR 62[rsp], r10w
	mov	r10d, DWORD PTR 36[rsi]
	test	r10b, 2
	jne	.L182
	and	r10d, 8
	je	.L183
	cmp	r12, r15
	je	.L241
.L180:
	mov	DWORD PTR [r14], edi
.L181:
	add	ebp, 1
	add	r14, 4
	add	r12, 88
	cmp	ebp, 4
	jne	.L194
	mov	r13d, eax
	mov	r15d, r9d
.L190:
	call	Player_UpdateHomingPosition
	mov	QWORD PTR 32[rsp], rsi
	mov	r8d, r15d
	mov	edx, r13d
	lea	rdi, 456[rbx]
	mov	r9d, 1
	mov	rcx, rdi
	call	Coll_Player_Boss_Attack
	test	eax, eax
	jne	.L242
	cmp	BYTE PTR 42[rbx], 0
	jne	.L197
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r13d
	mov	rcx, rdi
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	je	.L200
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r13d
	mov	rcx, rdi
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	je	.L200
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r13d
	mov	rcx, rdi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L197
	cmp	BYTE PTR 42[rbx], 0
	mov	BYTE PTR 41[rbx], 30
	je	.L243
	.p2align 4,,10
	.p2align 3
.L197:
	movzx	edx, WORD PTR 34[rbx]
	lea	eax, -1[rdx]
	mov	WORD PTR 34[rbx], ax
	cmp	ax, 105
	ja	.L203
	sub	edx, 92
	cmp	dx, 14
	jbe	.L244
	test	ax, ax
	jne	.L205
	cmp	BYTE PTR 40[rbx], 4
	ja	.L206
	mov	edx, 320
	mov	WORD PTR 34[rbx], dx
	.p2align 4,,10
	.p2align 3
.L203:
	mov	rcx, rbx
	call	UpdateProjectiles
	mov	rcx, rbx
	call	UpdatePilotAnim
	call	Render
	movzx	ecx, BYTE PTR 42[rbx]
	call	SetPalette.isra.0
	cmp	BYTE PTR 40[rbx], 0
	je	.L245
.L161:
	add	rsp, 72
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
.L162:
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r8d, 3435973837
	mov	BYTE PTR 36[rbx], 30
	imul	eax, DWORD PTR [r9], 1663525
	add	eax, 1013904223
	movzx	ecx, al
	imul	eax, eax, 1663525
	mov	rdx, rcx
	imul	rcx, r8
	add	eax, 1013904223
	shr	rcx, 35
	mov	DWORD PTR [r9], eax
	lea	ecx, [rcx+rcx*4]
	add	ecx, ecx
	sub	edx, ecx
	lea	rcx, sStateChoices[rip]
	movsx	rdx, edx
	movzx	ecx, BYTE PTR [rcx+rdx]
	movzx	edx, al
	mov	rax, rdx
	imul	rdx, r8
	mov	BYTE PTR 37[rbx], cl
	shr	rdx, 35
	lea	r8d, [rdx+rdx*4]
	add	r8d, r8d
	sub	eax, r8d
	xor	r8d, r8d
	movsx	rdx, eax
	movzx	eax, BYTE PTR 40[rbx]
	mov	BYTE PTR 38[rbx], dl
	cmp	al, 4
	setbe	r8b
	lea	r8, [r8+r8*4]
	lea	r8, [rdx+r8*2]
	lea	rdx, gUnknown_080D804E[rip]
	movzx	edx, WORD PTR [rdx+r8*2]
	mov	WORD PTR 30[rbx], dx
	cmp	cl, 1
	je	.L176
	cmp	cl, 2
	je	.L177
	test	cl, cl
	jne	.L175
	mov	ecx, 254
	call	m4aSongNumStart
	movzx	eax, WORD PTR .LC15[rip]
	mov	ecx, 690
	mov	edx, DWORD PTR 8[rbx]
	mov	r8d, 690
	mov	WORD PTR 674[rbx], cx
	mov	ecx, DWORD PTR 4[rbx]
	mov	WORD PTR 704[rbx], ax
	mov	WORD PTR 880[rbx], ax
	movzx	eax, BYTE PTR 40[rbx]
	mov	WORD PTR 850[rbx], r8w
	test	al, al
	jne	.L246
	.p2align 4,,10
	.p2align 3
.L178:
	mov	r13d, ecx
	mov	r15d, edx
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	sar	r13d, 8
	sar	r15d, 8
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L163:
	movzx	ecx, BYTE PTR 39[rbx]
	movzx	edx, WORD PTR 32[rbx]
	test	cl, cl
	jne	.L169
	cmp	BYTE PTR 40[rbx], 4
	movzx	r8d, BYTE PTR 38[rbx]
	setbe	cl
	mov	r9d, DWORD PTR 24[rbx]
	movzx	ecx, cl
	lea	rcx, [rcx+rcx*4]
	lea	rcx, [r8+rcx*2]
	lea	r8, gUnknown_080D809E[rip]
	add	dx, WORD PTR [r8+rcx*2]
	lea	r8, gUnknown_080D8076[rip]
	mov	WORD PTR 32[rbx], dx
	cmp	dx, WORD PTR [r8+rcx*2]
	jne	.L171
	mov	BYTE PTR 39[rbx], 1
.L171:
	movzx	edx, dx
	add	edx, r9d
	and	edx, 262143
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L183:
	cmp	r12, r15
	jne	.L239
.L192:
	mov	eax, DWORD PTR 36[rsi]
	mov	QWORD PTR 64[rsi], 0
	mov	edx, eax
	and	edx, -9
	mov	DWORD PTR 36[rsi], edx
	test	ah, 1
	jne	.L239
	and	eax, -265
	or	eax, 2
	mov	DWORD PTR 36[rsi], eax
	.p2align 4,,10
	.p2align 3
.L239:
	mov	ecx, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR 8[rbx]
	mov	eax, ecx
	mov	r9d, edx
	sar	eax, 8
	sar	r9d, 8
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L182:
	mov	r9, rsi
	mov	edx, edi
	mov	rcx, r12
	call	Coll_Player_Platform
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	test	eax, 65536
	je	.L183
	cmp	r12, r15
	je	.L186
	cmp	QWORD PTR 64[rsi], r12
	jne	.L186
	cmp	WORD PTR 62[rsp], 0
	jg	.L247
.L186:
	cmp	WORD PTR 30[rbx], 0
	je	.L188
	and	r13d, 1
	or	r13b, BYTE PTR 36[rbx]
	jne	.L188
	test	BYTE PTR 37[rbx], -3
	je	.L248
	.p2align 4,,10
	.p2align 3
.L188:
	mov	edx, DWORD PTR 16[rsi]
	sal	eax, 8
	cwde
	lea	eax, 512[rax+rdx]
	mov	DWORD PTR 16[rsi], eax
	mov	eax, DWORD PTR [r14]
	test	eax, eax
	je	.L239
	mov	edx, edi
	sub	edx, eax
	mov	eax, edx
	sal	eax, 8
	add	DWORD PTR 12[rsi], eax
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L242:
	mov	eax, DWORD PTR 12[rsi]
	cmp	eax, DWORD PTR 4[rbx]
	jle	.L196
	add	eax, 512
	add	WORD PTR 20[rsi], 576
	mov	DWORD PTR 12[rsi], eax
.L196:
	add	WORD PTR 22[rsi], 512
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L245:
	mov	eax, DWORD PTR 36[rsi]
	mov	DWORD PTR 16[rbx], 0
	mov	DWORD PTR [rbx], 128
	mov	BYTE PTR 43[rbx], 0
	and	eax, -9
	mov	BYTE PTR 448[rbx], 0
	or	eax, 2
	mov	DWORD PTR 36[rsi], eax
	mov	QWORD PTR 64[rsi], 0
	lea	rsi, Task_DestructionCutScene1[rip]
	call	Player_DisableInputAndBossTimer
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L205:
	imul	ax, ax, -4369
	ror	ax
	cmp	ax, 2184
	ja	.L203
.L207:
	mov	edx, DWORD PTR 12[rsi]
	mov	ecx, DWORD PTR 16[rsi]
	sub	edx, DWORD PTR 4[rbx]
	sub	ecx, DWORD PTR 8[rbx]
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	cmp	BYTE PTR 60[rbx], 0
	je	.L211
	cmp	BYTE PTR 76[rbx], 0
	je	.L212
	cmp	BYTE PTR 92[rbx], 0
	mov	edx, 2
	jne	.L203
.L209:
	mov	edi, DWORD PTR 8[rbx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	add	rdx, 3
	movd	xmm0, DWORD PTR 4[rbx]
	sal	rdx, 4
	lea	ecx, 3584[rdi]
	mov	BYTE PTR 12[rbx+rdx], -1
	movd	xmm1, ecx
	lea	ecx, 256[rax]
	movzx	eax, WORD PTR [r8+rax*2]
	movsx	rcx, ecx
	punpckldq	xmm0, xmm1
	movzx	ecx, WORD PTR [r8+rcx*2]
	sal	eax, 16
	movq	QWORD PTR 16[rbx+rdx], xmm0
	or	eax, ecx
	movd	xmm0, eax
	psraw	xmm0, 5
	movd	DWORD PTR 24[rbx+rdx], xmm0
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L176:
	mov	ecx, 254
	mov	r15d, 691
	call	m4aSongNumStart
	movzx	eax, WORD PTR .LC15[rip]
	mov	edx, 691
	mov	WORD PTR 762[rbx], r15w
	mov	WORD PTR 938[rbx], dx
	mov	WORD PTR 792[rbx], ax
	mov	WORD PTR 968[rbx], ax
	movzx	eax, BYTE PTR 40[rbx]
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L169:
	cmp	cl, 1
	je	.L172
.L235:
	add	edx, DWORD PTR 24[rbx]
	sub	eax, 1
	and	edx, 262143
	mov	WORD PTR 30[rbx], ax
	mov	DWORD PTR 24[rbx], edx
	test	ax, ax
	je	.L174
.L238:
	movzx	eax, BYTE PTR 40[rbx]
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L240:
	mov	r8d, DWORD PTR 36[rsi]
	test	r8b, 8
	je	.L180
	cmp	QWORD PTR 64[rsi], r12
	jne	.L180
	and	r8d, -265
	mov	edi, -512
	add	WORD PTR 20[rsi], 1280
	or	r8d, 2
	add	WORD PTR 24[rsi], 1280
	mov	DWORD PTR 36[rsi], r8d
	mov	QWORD PTR 64[rsi], 0
	mov	WORD PTR 22[rsi], di
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L200:
	mov	rcx, rbx
	call	HandleHit
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L247:
	sub	WORD PTR 20[rsi], 1280
	sub	WORD PTR 24[rsi], 1280
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L241:
	mov	r9, rsi
	mov	edx, edi
	mov	rcx, r12
	call	Coll_Player_Platform
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	test	eax, 65536
	jne	.L186
	jmp	.L192
	.p2align 4,,10
	.p2align 3
.L177:
	mov	ecx, 254
	mov	ebp, 690
	mov	r12d, 690
	mov	r13d, 691
	call	m4aSongNumStart
	movzx	eax, WORD PTR .LC15[rip]
	mov	r14d, 691
	mov	WORD PTR 674[rbx], bp
	mov	WORD PTR 850[rbx], r12w
	mov	WORD PTR 704[rbx], ax
	mov	WORD PTR 880[rbx], ax
	mov	WORD PTR 792[rbx], ax
	mov	WORD PTR 968[rbx], ax
	movzx	eax, BYTE PTR 40[rbx]
	mov	WORD PTR 762[rbx], r13w
	mov	WORD PTR 938[rbx], r14w
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L244:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 5[rbx]
	lea	rdi, 1008[rbx]
	mov	rcx, rdi
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 1046[rbx], ax
	movzx	eax, WORD PTR 9[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 1048[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L206:
	mov	eax, 450
	mov	WORD PTR 34[rbx], ax
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L168:
	mov	ecx, 255
	mov	r15d, 690
	call	m4aSongNumStart
	movzx	eax, WORD PTR .LC14[rip]
	mov	edx, 690
	mov	WORD PTR 674[rbx], r15w
	mov	WORD PTR 850[rbx], dx
	movzx	edx, WORD PTR 32[rbx]
	add	edx, DWORD PTR 24[rbx]
	mov	WORD PTR 704[rbx], ax
	mov	WORD PTR 880[rbx], ax
	and	edx, 262143
	movzx	eax, WORD PTR 30[rbx]
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L243:
	mov	ecx, 693
	mov	r8d, -255
	mov	WORD PTR 546[rbx], cx
	mov	WORD PTR 576[rbx], r8w
	jmp	.L197
.L248:
	cmp	BYTE PTR 42[rbx], 0
	mov	BYTE PTR 41[rbx], 30
	jne	.L189
	mov	r9d, 693
	mov	r10d, -255
	mov	WORD PTR 546[rbx], r9w
	mov	WORD PTR 576[rbx], r10w
.L189:
	mov	rcx, rsi
	call	Coll_DamagePlayer
	mov	ecx, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR 8[rbx]
	mov	r13d, ecx
	mov	r15d, edx
	sar	r13d, 8
	sar	r15d, 8
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L172:
	xor	ecx, ecx
	cmp	BYTE PTR 40[rbx], 4
	movzx	r8d, BYTE PTR 38[rbx]
	setbe	cl
	lea	rcx, [rcx+rcx*4]
	lea	r8, [r8+rcx*2]
	lea	rcx, gUnknown_080D809E[rip]
	sub	dx, WORD PTR [rcx+r8*2]
	mov	WORD PTR 32[rbx], dx
	je	.L173
	movzx	edx, dx
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L167:
	mov	ecx, 255
	mov	r13d, 690
	mov	r14d, 690
	call	m4aSongNumStart
	movzx	eax, WORD PTR .LC14[rip]
	mov	WORD PTR 674[rbx], r13w
	mov	WORD PTR 850[rbx], r14w
	mov	WORD PTR 704[rbx], ax
	mov	WORD PTR 880[rbx], ax
.L237:
	movzx	eax, WORD PTR .LC8[rip]
	movzx	edx, WORD PTR 32[rbx]
	mov	ebp, 691
	mov	r12d, 691
	add	edx, DWORD PTR 24[rbx]
	mov	WORD PTR 762[rbx], bp
	mov	WORD PTR 792[rbx], ax
	and	edx, 262143
	mov	WORD PTR 968[rbx], ax
	movzx	eax, WORD PTR 30[rbx]
	mov	WORD PTR 938[rbx], r12w
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L166:
	mov	ecx, 255
	call	m4aSongNumStart
	jmp	.L237
.L173:
	mov	BYTE PTR 39[rbx], 2
	xor	edx, edx
	jmp	.L165
.L211:
	xor	edx, edx
	jmp	.L209
.L212:
	mov	edx, 1
	jmp	.L209
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sPalettes:
	.word	29247
	.word	19263
	.word	16958
	.word	16606
	.word	23487
	.word	31678
	.word	16408
	.word	32507
	.word	32760
	.word	32313
	.word	31768
	.word	32024
	.word	18521
	.word	20699
	.word	24028
	.word	26301
	.word	6592
	.word	27840
	.word	32198
	.word	32548
	.word	19520
	.word	2116
	.word	32767
	.word	273
	.word	31
	.word	475
	.word	1023
	.word	767
	.word	28601
	.word	24371
	.word	17964
	.word	12616
	.align 32
gUnknown_080D809E:
	.word	257
	.word	257
	.word	256
	.word	256
	.word	256
	.word	256
	.word	222
	.word	222
	.word	222
	.word	207
	.word	257
	.word	257
	.word	257
	.word	257
	.word	257
	.word	256
	.word	256
	.word	256
	.word	222
	.word	222
	.align 32
gUnknown_080D8076:
	.word	11565
	.word	11565
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	22866
	.word	22866
	.word	22866
	.word	27531
	.word	11565
	.word	11565
	.word	11565
	.word	11565
	.word	11565
	.word	16384
	.word	16384
	.word	16384
	.word	22866
	.word	22866
	.align 32
gUnknown_080D804E:
	.word	120
	.word	120
	.word	180
	.word	180
	.word	180
	.word	180
	.word	240
	.word	240
	.word	240
	.word	300
	.word	120
	.word	120
	.word	120
	.word	120
	.word	120
	.word	180
	.word	180
	.word	180
	.word	240
	.word	240
	.align 8
sStateChoices:
	.ascii "\0\0\0\1\1\1\1\2\3\3"
sLinkPositions:
	.ascii "\36*6B"
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.align 8
.LC3:
	.long	60
	.long	1
	.align 2
.LC8:
	.byte	1
	.byte	-1
	.align 4
.LC11:
	.word	0
	.word	690
	.align 4
.LC12:
	.word	0
	.word	691
	.align 2
.LC14:
	.byte	3
	.byte	-1
	.align 2
.LC15:
	.byte	2
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gPlayerLimbsPSI, "dr"
	.globl	.refptr.gPlayerLimbsPSI
	.linkonce	discard
.refptr.gPlayerLimbsPSI:
	.quad	gPlayerLimbsPSI
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
