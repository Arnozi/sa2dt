	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	PlayerStatePhysics_SlowToStop;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerStatePhysics_SlowToStop
PlayerStatePhysics_SlowToStop:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR 24[rax]
	movq	xmm1, QWORD PTR 236[rdx]
	movzx	ecx, WORD PTR 246[rdx]
	mov	rax, rcx
	movsx	ecx, WORD PTR [r8+rcx*2]
	add	eax, 256
	cdqe
	movsx	r8d, WORD PTR [r8+rax*2]
	mov	eax, DWORD PTR 272[rdx]
	add	eax, DWORD PTR 296[rdx]
	test	eax, eax
	jle	.L6
	imul	ecx, eax
	mov	DWORD PTR 272[rdx], eax
	imul	r8d, eax
	movd	xmm0, ecx
	movd	xmm2, r8d
	punpckldq	xmm0, xmm2
	psrad	xmm0, 10
	psubd	xmm1, xmm0
	movq	QWORD PTR 236[rdx], xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	DWORD PTR 272[rdx], 0
	mov	eax, 13
	mov	WORD PTR 248[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F300
	.def	sub_806F300;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F300
sub_806F300:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rdx]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rax]
	add	WORD PTR 8[rdx], 1
	movzx	ecx, WORD PTR 326[rax]
	add	WORD PTR 252[rax], cx
	cmp	WORD PTR 244[rax], -16384
	jge	.L7
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, -16384
	mov	r10d, 15
	mov	WORD PTR 8[rdx], cx
	mov	WORD PTR 252[rax], r8w
	mov	WORD PTR 244[rax], r9w
	mov	WORD PTR 248[rax], r10w
.L7:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F36C
	.def	sub_806F36C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F36C
sub_806F36C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rcx]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 246[rdx]
	add	eax, 16
	and	ax, 1023
	mov	WORD PTR 246[rdx], ax
	movzx	eax, WORD PTR 8[rcx]
	add	eax, 1
	cmp	ax, 31
	jg	.L10
	mov	WORD PTR 8[rcx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	xor	eax, eax
	mov	WORD PTR 8[rcx], ax
	mov	ecx, 8
	mov	DWORD PTR 272[rdx], 0
	mov	WORD PTR 248[rdx], cx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F3C4
	.def	sub_806F3C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F3C4
sub_806F3C4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rdx]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR 236[rax]
	cmp	ecx, 3145728
	jg	.L13
	mov	DWORD PTR 236[rax], 3145728
.L14:
	mov	ecx, DWORD PTR 240[rax]
	cmp	ecx, 3145728
	jg	.L15
	mov	DWORD PTR 240[rax], 3145728
.L16:
	add	WORD PTR 8[rdx], 1
	movzx	ecx, WORD PTR 322[rax]
	add	WORD PTR 252[rax], cx
	cmp	WORD PTR 244[rax], 0
	js	.L18
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	cmp	ecx, 63963135
	jle	.L16
	mov	DWORD PTR 240[rax], 63963136
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L13:
	cmp	ecx, 63963135
	jle	.L14
	mov	DWORD PTR 236[rax], 63963136
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L18:
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	mov	WORD PTR 244[rax], cx
	mov	WORD PTR 252[rax], r8w
	mov	WORD PTR 8[rdx], r9w
	mov	WORD PTR 248[rax], r10w
	ret
	.seh_endproc
	.p2align 4
	.def	HandleBoost1;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleBoost1
HandleBoost1:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	r9d, 0
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 24[rax]
	movq	xmm1, QWORD PTR 236[rcx]
	movzx	edx, WORD PTR 246[rcx]
	mov	rax, rdx
	movsx	edx, WORD PTR [r8+rdx*2]
	add	eax, 256
	cdqe
	movsx	r8d, WORD PTR [r8+rax*2]
	mov	eax, DWORD PTR 328[rcx]
	add	eax, DWORD PTR 272[rcx]
	cmovs	eax, r9d
	imul	edx, eax
	mov	DWORD PTR 272[rcx], eax
	imul	r8d, eax
	movd	xmm0, edx
	movd	xmm2, r8d
	punpckldq	xmm0, xmm2
	psrad	xmm0, 10
	psubd	xmm1, xmm0
	movq	QWORD PTR 236[rcx], xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F1E8
	.def	sub_806F1E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F1E8
sub_806F1E8:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r11, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [r11]
	mov	rax, QWORD PTR 24[rax]
	mov	r10, QWORD PTR 24[rax]
	add	WORD PTR 8[r11], 1
	movzx	eax, WORD PTR 322[r10]
	add	WORD PTR 252[r10], ax
	call	HandleBoost1
	cmp	WORD PTR 244[r10], 0
	jle	.L23
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	WORD PTR 8[r11], cx
	mov	r11d, DWORD PTR 272[r10]
	mov	WORD PTR 252[r10], r8w
	mov	WORD PTR 244[r10], r9w
	test	r11d, r11d
	jne	.L22
	mov	edx, 13
	mov	WORD PTR 248[r10], dx
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	mov	eax, 12
	mov	WORD PTR 248[r10], ax
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806FB00
	.def	sub_806FB00;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806FB00
sub_806FB00:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	HandleJumpControls;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleJumpControls
HandleJumpControls:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	and	ax, WORD PTR [rdx]
	jne	.L27
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 4
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 248[rax], dx
	movzx	edx, WORD PTR 308[rax]
	mov	WORD PTR 244[rax], cx
	mov	ecx, 116
	mov	WORD PTR 252[rax], dx
	mov	WORD PTR 254[rax], r8w
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	HandleMovementControls
	.def	HandleMovementControls;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleMovementControls
HandleMovementControls:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rax]
	movzx	r8d, WORD PTR 246[rax]
	mov	r9d, DWORD PTR 272[rax]
	mov	edx, DWORD PTR 300[rax]
	mov	rcx, r8
	movsx	r8d, WORD PTR [r10+r8*2]
	add	ecx, 256
	movsx	rcx, ecx
	movsx	r10d, WORD PTR [r10+rcx*2]
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	movzx	ecx, WORD PTR [rcx]
	test	cl, 64
	je	.L29
	cmp	r9d, edx
	jl	.L45
	mov	edx, DWORD PTR 292[rax]
	mov	ecx, 2
	add	edx, r9d
.L31:
	mov	WORD PTR 248[rax], cx
	mov	ecx, edx
	imul	r8d, edx
	mov	DWORD PTR 272[rax], edx
	sar	ecx, 9
	imul	edx, r10d
	mov	WORD PTR 232[rax], cx
	sar	r8d, 10
	sar	edx, 10
.L32:
	sub	DWORD PTR 236[rax], r8d
	sub	DWORD PTR 240[rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	add	r9d, DWORD PTR 288[rax]
	mov	ecx, 2
	cmp	r9d, edx
	jge	.L31
	xor	ecx, ecx
	cmp	r9d, 8960
	mov	edx, r9d
	setg	cl
	add	ecx, 1
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L29:
	and	ecx, 128
	je	.L33
	cmp	WORD PTR 248[rax], 0
	mov	ecx, DWORD PTR 296[rax]
	je	.L46
	lea	edx, [r9+rcx]
	test	edx, edx
	jle	.L36
	imul	r8d, edx
	mov	DWORD PTR 272[rax], edx
	mov	r9d, 3
	imul	edx, r10d
	mov	WORD PTR 248[rax], r9w
	sar	r8d, 10
	sar	edx, 10
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	add	r9d, DWORD PTR 292[rax]
	test	r9d, r9d
	jle	.L37
	imul	r10d, r9d
	mov	ecx, r9d
	mov	DWORD PTR 272[rax], r9d
	imul	r8d, r9d
	sar	ecx, 9
	mov	edx, r10d
	sar	r8d, 10
	sar	edx, 10
	cmp	r9d, 8960
	jle	.L47
	mov	r10d, 2
	mov	WORD PTR 232[rax], cx
	mov	WORD PTR 248[rax], r10w
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L37:
	mov	DWORD PTR 272[rax], 0
	xor	r11d, r11d
	xor	edx, edx
	mov	WORD PTR 232[rax], r11w
	mov	WORD PTR 248[rax], dx
.L40:
	xor	edx, edx
	xor	r8d, r8d
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L46:
	mov	r10d, 7
	mov	WORD PTR 248[rax], r10w
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	mov	r9d, 1
	mov	WORD PTR 232[rax], cx
	mov	WORD PTR 248[rax], r9w
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L36:
	xor	ecx, ecx
	mov	r8d, 8
	mov	DWORD PTR 272[rax], 0
	mov	WORD PTR 232[rax], cx
	mov	WORD PTR 248[rax], r8w
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	HandleRotationControls
	.def	HandleRotationControls;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleRotationControls
HandleRotationControls:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gInput[rip]
	movzx	edx, WORD PTR [rax]
	test	dl, 48
	je	.L48
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 246[rcx]
	test	dl, 32
	je	.L50
	add	ax, WORD PTR 276[rcx]
.L50:
	and	edx, 16
	je	.L51
	sub	ax, WORD PTR 276[rcx]
.L51:
	and	ax, 1023
	mov	WORD PTR 246[rcx], ax
.L48:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806EFB4
	.def	sub_806EFB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806EFB4
sub_806EFB4:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	r10, QWORD PTR 24[rax]
	call	HandleRotationControls
	call	HandleBoost1
	movzx	eax, WORD PTR 314[r10]
	movd	xmm0, DWORD PTR 252[r10]
	or	eax, 65536
	movd	xmm1, eax
	paddw	xmm1, xmm0
	movd	DWORD PTR 252[r10], xmm1
	pextrw	eax, xmm1, 1
	cmp	WORD PTR 312[r10], ax
	jle	.L62
	mov	rax, QWORD PTR .refptr.gPlayerControls[rip]
	mov	rdx, QWORD PTR .refptr.gInput[rip]
	movzx	eax, WORD PTR [rax]
	and	ax, WORD PTR [rdx]
	jne	.L61
.L62:
	mov	eax, 5
	mov	WORD PTR 248[r10], ax
.L61:
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F034
	.def	sub_806F034;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F034
sub_806F034:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	r10, QWORD PTR 24[rax]
	call	HandleRotationControls
	call	HandleBoost1
	movzx	eax, WORD PTR 316[r10]
	add	WORD PTR 252[r10], ax
	cmp	WORD PTR 244[r10], 0
	jle	.L68
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	mov	eax, DWORD PTR 272[r10]
	xor	edx, edx
	mov	WORD PTR 244[r10], dx
	test	eax, eax
	jle	.L69
	cmp	eax, 8960
	setg	al
	movzx	eax, al
	add	eax, 1
	mov	WORD PTR 248[r10], ax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	mov	eax, 8
	mov	WORD PTR 248[r10], ax
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F468
	.def	sub_806F468;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F468
sub_806F468:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	r11, QWORD PTR 24[rdx]
	movzx	edx, BYTE PTR 2176[rax]
	mov	rax, QWORD PTR .refptr.gUnknown_08C87904[rip]
	movsx	r10d, WORD PTR 238[r11]
	movsx	esi, WORD PTR 242[r11]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	r9d, r10d
	mov	ebx, esi
	movzx	ecx, WORD PTR [rax]
	cmp	cx, -1
	je	.L70
	.p2align 4,,10
	.p2align 3
.L75:
	movsx	edx, WORD PTR 2[rax]
	cmp	dx, r9w
	jg	.L72
	movsx	r8d, WORD PTR 6[rax]
	add	edx, r8d
	cmp	r10d, edx
	jge	.L72
	movsx	edx, WORD PTR 4[rax]
	cmp	dx, bx
	jg	.L72
	movsx	r8d, WORD PTR 8[rax]
	add	edx, r8d
	cmp	esi, edx
	jge	.L72
	test	cx, cx
	je	.L73
	cmp	cx, 1
	je	.L74
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	ecx, WORD PTR 12[rax]
	add	rax, 12
	cmp	cx, -1
	jne	.L75
.L70:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	mov	eax, DWORD PTR 272[r11]
	mov	edx, 1536
	cmp	eax, edx
	cmovl	eax, edx
	xor	ecx, ecx
	xor	edx, edx
	mov	WORD PTR 254[r11], cx
	mov	ecx, 276
	mov	DWORD PTR 272[r11], eax
	mov	eax, 9
	mov	WORD PTR 248[r11], ax
	movzx	eax, WORD PTR 310[r11]
	mov	WORD PTR 244[r11], dx
	mov	WORD PTR 252[r11], ax
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L73:
	mov	eax, DWORD PTR 304[r11]
	mov	r8d, 2
	mov	ecx, 277
	mov	WORD PTR 248[r11], r8w
	mov	DWORD PTR 272[r11], eax
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	sub_806F9CC
	.def	sub_806F9CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F9CC
sub_806F9CC:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	ecx, ecx
	call	HandleMovementControls
	call	HandleRotationControls
	call	HandleJumpControls
	nop
	add	rsp, 40
	jmp	sub_806F468
	.seh_endproc
	.p2align 4
	.globl	sub_806F9E4
	.def	sub_806F9E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F9E4
sub_806F9E4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ecx, 1
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rbx, QWORD PTR 24[rax]
	call	HandleMovementControls
	call	HandleRotationControls
	call	HandleJumpControls
	mov	rax, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rax], -128
	jne	.L82
	xor	eax, eax
	mov	WORD PTR 248[rbx], ax
.L82:
	add	rsp, 32
	pop	rbx
	jmp	sub_806F468
	.seh_endproc
	.p2align 4
	.globl	HandleBoost2
	.def	HandleBoost2;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleBoost2
HandleBoost2:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	r9d, 0
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 24[rax]
	movq	xmm1, QWORD PTR 236[rcx]
	movzx	edx, WORD PTR 246[rcx]
	mov	rax, rdx
	movsx	edx, WORD PTR [r8+rdx*2]
	add	eax, 256
	cdqe
	movsx	r8d, WORD PTR [r8+rax*2]
	mov	eax, DWORD PTR 332[rcx]
	add	eax, DWORD PTR 272[rcx]
	cmovs	eax, r9d
	imul	edx, eax
	mov	DWORD PTR 272[rcx], eax
	imul	r8d, eax
	movd	xmm0, edx
	movd	xmm2, r8d
	punpckldq	xmm0, xmm2
	psrad	xmm0, 10
	psubd	xmm1, xmm0
	movq	QWORD PTR 236[rcx], xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F0C4
	.def	sub_806F0C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F0C4
sub_806F0C4:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	r10, QWORD PTR 24[rax]
	call	HandleRotationControls
	call	HandleBoost2
	movzx	eax, WORD PTR 318[r10]
	add	WORD PTR 252[r10], ax
	cmp	WORD PTR 244[r10], 0
	jle	.L88
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	mov	eax, DWORD PTR 272[r10]
	xor	edx, edx
	mov	WORD PTR 244[r10], dx
	test	eax, eax
	jle	.L89
	cmp	eax, 8960
	setg	al
	movzx	eax, al
	add	eax, 1
	mov	WORD PTR 248[r10], ax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	mov	eax, 8
	mov	WORD PTR 248[r10], ax
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806F154
	.def	sub_806F154;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806F154
sub_806F154:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	r10, QWORD PTR 24[rax]
	call	HandleRotationControls
	call	HandleBoost2
	movzx	eax, WORD PTR 316[r10]
	movq	xmm0, QWORD PTR 236[r10]
	movq	xmm1, QWORD PTR 280[r10]
	add	WORD PTR 252[r10], ax
	cmp	WORD PTR 244[r10], 0
	paddd	xmm0, xmm1
	movq	QWORD PTR 236[r10], xmm0
	jg	.L90
	xor	eax, eax
	mov	edx, 1
	mov	DWORD PTR 272[r10], 8192
	mov	WORD PTR 244[r10], ax
	mov	WORD PTR 248[r10], dx
.L90:
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	CalcRoboCollision
	.def	CalcRoboCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	CalcRoboCollision
CalcRoboCollision:
	.seh_endprologue
	mov	eax, ecx
	sar	edx, 8
	sar	eax, 8
	imul	edx, edx
	imul	eax, eax
	add	eax, edx
	mov	edx, 1
	cmp	eax, 1
	jle	.L92
	.p2align 4,,10
	.p2align 3
.L93:
	add	eax, eax
	mov	r8d, edx
	add	edx, 1
	test	eax, eax
	jg	.L93
	mov	edx, eax
	shr	edx, 16
	not	edx
	movzx	edx, dx
	mov	r11d, edx
	mov	r10d, edx
	mov	r9d, edx
	mov	ecx, edx
	shr	r11d
	imul	r10d, r11d
	sub	eax, r11d
	shr	r10d, 18
	imul	r9d, r10d
	sub	eax, r10d
	shr	r9d, 17
	imul	ecx, r9d
	sub	eax, r9d
	shr	ecx, 16
	lea	ecx, [rcx+rcx*4]
	shr	ecx, 3
	imul	edx, ecx
	sub	eax, ecx
	mov	ecx, r8d
	sar	cx
	shr	edx, 16
	imul	edx, edx, 45875
	sar	edx, 16
	sub	eax, edx
	movzx	edx, ax
	sar	edx, cl
	and	r8d, 1
	mov	eax, edx
	je	.L92
	imul	edx, edx, 46341
	lea	eax, 32768[rdx]
	shr	eax, 16
.L92:
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStagePhysics
	.def	CreateSpecialStagePhysics;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStagePhysics
CreateSpecialStagePhysics:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 16384
	mov	edx, 16
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_PhysicsMain[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rbx
	mov	DWORD PTR 8[rdx], 3932160
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	HandleRoboPlayerCollision
	.def	HandleRoboPlayerCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleRoboPlayerCollision
HandleRoboPlayerCollision:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 40[rcx]
	mov	rax, QWORD PTR 24[rax]
	mov	ebx, DWORD PTR 240[rdi]
	mov	esi, DWORD PTR 236[rdi]
	sub	ebx, DWORD PTR 96[rax]
	sub	esi, DWORD PTR 92[rax]
	mov	edx, ebx
	mov	ecx, esi
	sar	edx, 4
	sar	ecx, 4
	call	CalcRoboCollision
	movsx	ecx, ax
	mov	eax, esi
	sal	eax, 5
	cdq
	idiv	ecx
	mov	DWORD PTR 280[rdi], eax
	mov	eax, ebx
	sal	eax, 5
	cdq
	idiv	ecx
	mov	DWORD PTR 284[rdi], eax
	mov	eax, 768
	mov	WORD PTR 252[rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806FAA0
	.def	sub_806FAA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806FAA0
sub_806FAA0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 236[rax]
	cmp	edx, 3145727
	jg	.L104
	mov	DWORD PTR 236[rax], 3145728
.L105:
	mov	edx, DWORD PTR 240[rax]
	cmp	edx, 3145727
	jg	.L106
	mov	DWORD PTR 240[rax], 3145728
.L103:
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	cmp	edx, 63963136
	jle	.L103
	mov	DWORD PTR 240[rax], 63963136
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	cmp	edx, 63963136
	jle	.L105
	mov	DWORD PTR 236[rax], 63963136
	jmp	.L105
	.seh_endproc
	.p2align 4
	.def	Task_PhysicsMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PhysicsMain
Task_PhysicsMain:
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
	sub	rsp, 176
	.seh_stackalloc	176
	.seh_endprologue
	lea	rax, sub_806F9CC[rip]
	lea	rdi, sub_806EFB4[rip]
	movq	xmm0, rax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	punpcklqdq	xmm0, xmm0
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	movups	XMMWORD PTR 40[rsp], xmm0
	mov	rsi, QWORD PTR [rax]
	movups	XMMWORD PTR 56[rsp], xmm0
	movq	xmm0, rdi
	lea	rdi, sub_806F3C4[rip]
	mov	QWORD PTR 168[rsp], 0
	mov	rax, QWORD PTR 24[rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rax, sub_806F034[rip]
	movq	xmm1, rax
	lea	rax, sub_806F36C[rip]
	punpcklqdq	xmm0, xmm1
	movq	xmm2, rax
	lea	rax, sub_806F0C4[rip]
	movzx	edx, WORD PTR 248[rbx]
	movups	XMMWORD PTR 72[rsp], xmm0
	movq	xmm0, rdi
	movq	xmm3, rax
	lea	rdi, sub_806F9E4[rip]
	punpcklqdq	xmm0, xmm2
	lea	rax, sub_806F1E8[rip]
	movups	XMMWORD PTR 88[rsp], xmm0
	movq	xmm0, rdi
	movq	xmm4, rax
	lea	rdi, sub_806F154[rip]
	punpcklqdq	xmm0, xmm3
	lea	rax, sub_806FB00[rip]
	movups	XMMWORD PTR 104[rsp], xmm0
	movq	xmm0, rdi
	movq	xmm5, rax
	lea	rdi, PlayerStatePhysics_SlowToStop[rip]
	punpcklqdq	xmm0, xmm4
	lea	rax, sub_806F300[rip]
	movups	XMMWORD PTR 120[rsp], xmm0
	movq	xmm0, rdi
	punpcklqdq	xmm0, xmm5
	movups	XMMWORD PTR 136[rsp], xmm0
	movq	xmm0, rax
	movzx	eax, WORD PTR 2172[rsi]
	punpcklqdq	xmm0, xmm0
	movups	XMMWORD PTR 152[rsp], xmm0
	cmp	ax, 6
	jbe	.L144
	cmp	ax, 7
	jne	.L111
	cmp	dx, 10
	ja	.L113
	mov	r8d, 11
	mov	WORD PTR 248[rbx], r8w
.L113:
	cmp	BYTE PTR 2178[rsi], 0
	jne	.L115
	movzx	eax, WORD PTR 248[rbx]
	call	[QWORD PTR 40[rsp+rax*8]]
.L111:
	cmp	WORD PTR 248[rbx], 10
	jbe	.L145
.L115:
	call	sub_806FAA0
	mov	edx, DWORD PTR 236[rbx]
	pxor	xmm0, xmm0
	mov	eax, DWORD PTR 240[rbx]
	mov	rcx, QWORD PTR 236[rbx]
	shr	edx, 16
	xor	ax, ax
	or	eax, edx
	mov	QWORD PTR 2140[rsi], rcx
	movzx	ecx, WORD PTR 246[rbx]
	movd	xmm1, eax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	psubw	xmm0, xmm1
	mov	WORD PTR 2152[rsi], cx
	movd	DWORD PTR 8[rax], xmm0
	add	rsp, 176
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	cmp	ax, 3
	jbe	.L111
	cmp	BYTE PTR 2178[rsi], 0
	jne	.L111
	call	[QWORD PTR 40[rsp+rdx*8]]
	cmp	WORD PTR 248[rbx], 10
	ja	.L115
.L145:
	mov	rax, QWORD PTR 24[rsi]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 40[rsi]
	mov	rcx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 246[rdx]
	mov	r10d, DWORD PTR 92[rcx]
	sub	r10d, DWORD PTR 236[rdx]
	neg	eax
	mov	r8d, r10d
	mov	ecx, DWORD PTR 96[rcx]
	sub	ecx, DWORD PTR 240[rdx]
	and	ax, 1023
	sar	r8d, 16
	mov	r9d, ecx
	lea	r11d, 15[r8]
	sar	r9d, 16
	mov	edi, r8d
	cmp	r11w, 30
	jbe	.L146
	lea	r11d, 255[r8]
	cmp	r11w, 510
	jbe	.L121
	sar	ecx, 20
	sar	r10d, 20
	mov	r9d, ecx
	mov	r8d, r10d
	xor	ecx, ecx
.L118:
	mov	BYTE PTR 192[rdx], cl
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	mov	ecx, 890
	mov	WORD PTR 162[rdx], cx
	movzx	edx, ax
	movzx	ecx, ax
	movsx	edi, WORD PTR 512[r11+rcx*2]
	movsx	r10d, WORD PTR [r11+rdx*2]
	mov	r12d, edi
	mov	ebp, r10d
	mov	edx, r10d
	mov	ecx, edi
	imul	ebp, r9d
	imul	r10d, r8d
	imul	edi, r9d
	mov	r9d, 256
	imul	r12d, r8d
	sub	edi, r10d
	mov	r10d, 9
	add	ebp, r12d
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L147:
	add	eax, r9d
	shr	r9d
	and	ax, 1023
	sub	r10d, 1
	je	.L129
.L149:
	movzx	edx, ax
	movzx	ecx, ax
	movzx	ecx, WORD PTR 512[r11+rcx*2]
	movzx	edx, WORD PTR [r11+rdx*2]
.L130:
	sar	dx, 6
	sar	cx, 6
	mov	r8d, edi
	mov	r12d, ebp
	movsx	edx, dx
	movsx	ecx, cx
	imul	r8d, edx
	imul	r12d, ecx
	add	r8d, r12d
	test	r8d, r8d
	jg	.L147
	je	.L148
	sub	eax, r9d
	shr	r9d
	and	ax, 1023
	sub	r10d, 1
	jne	.L149
.L129:
	movsx	ecx, ax
	movsx	rdx, ax
	sub	ax, 257
	mov	r9d, 30
	movsx	edx, WORD PTR [r11+rdx*2]
	lea	r8d, 256[rcx]
	movsx	r8, r8d
	movsx	r8d, WORD PTR [r11+r8*2]
	lea	edx, [rdx+rdx*4]
	sar	edx, 12
	add	edx, 205
	lea	r8d, [r8+r8*4]
	sar	r8d, 13
	mov	WORD PTR 182[rbx], dx
	mov	edx, 120
	sub	edx, r8d
	cmp	ax, 511
	mov	r8d, 256
	sbb	eax, eax
	mov	WORD PTR 184[rbx], dx
	mov	edx, 256
	not	eax
	and	ax, 640
	mov	WORD PTR 186[rbx], ax
	call	sub_80047A0
	cmp	BYTE PTR 2178[rsi], 0
	jne	.L115
	lea	rdi, 144[rbx]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 2178[rsi], 0
	jne	.L115
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L146:
	lea	edi, 15[r9]
	mov	r11d, r9d
	cmp	di, 30
	ja	.L117
	sar	ecx, 12
	sar	r10d, 12
	mov	r9d, ecx
	mov	r8d, r10d
	mov	ecx, 2
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L117:
	lea	edi, 255[r9]
	cmp	di, 510
	ja	.L142
.L119:
	lea	r10d, 47[r11]
	mov	ecx, 2
	cmp	r10w, 94
	jbe	.L118
.L124:
	add	r11d, 95
	mov	ecx, 1
	cmp	r11w, 190
	jbe	.L118
	xor	ecx, ecx
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L148:
	imul	edi, ecx
	lea	ecx, 512[rax]
	imul	edx, ebp
	and	cx, 1023
	cmp	edi, edx
	cmovns	eax, ecx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L142:
	sar	ecx, 20
	sar	r10d, 20
	mov	r9d, ecx
	mov	r8d, r10d
	xor	ecx, ecx
	jmp	.L118
.L121:
	lea	ebp, 255[r9]
	mov	r11d, r9d
	cmp	bp, 510
	ja	.L142
	lea	ecx, 47[rdi]
	cmp	cx, 94
	jbe	.L119
	add	edi, 95
	cmp	di, 190
	jbe	.L124
	xor	ecx, ecx
	jmp	.L118
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_80047A0;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gUnknown_08C87904, "dr"
	.globl	.refptr.gUnknown_08C87904
	.linkonce	discard
.refptr.gUnknown_08C87904:
	.quad	gUnknown_08C87904
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
