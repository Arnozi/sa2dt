	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	UpdatePartScreenPositions;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePartScreenPositions
UpdatePartScreenPositions:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	xor	r10d, r10d
	mov	ebx, DWORD PTR [rcx]
	mov	r11d, DWORD PTR 4[rcx]
	sub	ebx, DWORD PTR [rax]
	sub	r11d, DWORD PTR 4[rax]
	sal	ebx, 8
	sal	r11d, 8
	lea	rdx, 20[rcx]
	lea	rdi, 380[rcx]
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r8d, r10d
	mov	ecx, DWORD PTR 4[rdx]
	mov	r12d, DWORD PTR 8[rdx]
	add	rdx, 40
	lea	eax, 256[r10]
	movzx	r8d, WORD PTR [rsi+r8*2]
	movzx	eax, WORD PTR [rsi+rax*2]
	mov	r9d, ecx
	mov	ebp, r12d
	sar	r8w, 6
	sar	ax, 6
	movsx	r8d, r8w
	cwde
	imul	ecx, r8d
	imul	r9d, eax
	imul	eax, r12d
	imul	ebp, r8d
	sar	ecx, 8
	sar	r9d, 8
	sar	eax, 8
	add	eax, ecx
	sar	ebp, 8
	add	r11d, eax
	movzx	eax, WORD PTR -40[rdx]
	sub	r9d, ebp
	add	ebx, r9d
	mov	DWORD PTR -20[rdx], r11d
	add	eax, r10d
	mov	DWORD PTR -24[rdx], ebx
	and	eax, 1023
	mov	WORD PTR -28[rdx], ax
	mov	r10d, eax
	cmp	rdi, rdx
	jne	.L2
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_80743B8;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_80743B8
TaskDestructor_80743B8:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80744E0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80744E0
sub_80744E0:
	.seh_endprologue
	mov	r11, rcx
	mov	ecx, edx
	movzx	edx, dx
	lea	rax, [rdx+rdx*4]
	lea	r10, [r11+rax*8]
	movsx	eax, r8w
	add	eax, DWORD PTR 28[r10]
	mov	r9d, eax
	neg	r9d
	cmovs	r9d, eax
	cmp	r9d, 3072
	jle	.L13
	test	r8w, r8w
	jle	.L9
	sub	ax, 3072
	mov	r8d, 3072
.L10:
	lea	rdx, [rdx+rdx*4]
	mov	DWORD PTR 28[r11+rdx*8], r8d
	lea	edx, -1[rcx]
	xor	r8d, r8d
	cmp	cx, 2
	je	.L6
	movzx	edx, dx
	movsx	r8d, ax
	mov	rcx, r11
	jmp	sub_80744E0
	.p2align 4,,10
	.p2align 3
.L9:
	add	ax, 3072
	mov	r8d, -3072
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L13:
	mov	DWORD PTR 28[r10], eax
	mov	r8d, 1
.L6:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.def	UpdatePlayerPosition;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePlayerPosition
UpdatePlayerPosition:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rax]
	test	dl, -128
	jne	.L14
	mov	r8d, DWORD PTR 560[rcx]
	test	r8d, r8d
	je	.L14
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r10d, DWORD PTR 4[r9]
	lea	r8d, 24[r10]
	sal	r8d, 8
	add	r8d, DWORD PTR 360[rcx]
	and	edx, 1
	mov	DWORD PTR 16[rax], r8d
	mov	r8d, DWORD PTR 356[rcx]
	mov	ecx, DWORD PTR [r9]
	je	.L16
	add	ecx, 6
	sal	ecx, 8
	add	ecx, r8d
	mov	DWORD PTR 12[rax], ecx
.L14:
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	sub	ecx, 6
	sal	ecx, 8
	add	ecx, r8d
	mov	DWORD PTR 12[rax], ecx
	ret
	.seh_endproc
	.p2align 4
	.def	HandlePlayerTouchingHook;	.scl	3;	.type	32;	.endef
	.seh_proc	HandlePlayerTouchingHook
HandlePlayerTouchingHook:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rsi, rcx
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 9
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 2310
	mov	r8d, 55
	or	DWORD PTR 36[rbx], 4194304
	mov	WORD PTR 26[rbx], cx
	mov	rcx, rsi
	mov	WORD PTR 108[rbx], r8w
	call	UpdatePlayerPosition
	movzx	eax, WORD PTR 22[rbx]
	mov	DWORD PTR 560[rsi], 1
	add	eax, eax
	cmp	ax, 1919
	jle	.L19
	cmp	ax, 3072
	jle	.L21
	mov	eax, 3072
	mov	edx, 11520
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	mov	eax, 1920
	mov	edx, 7200
.L18:
	mov	WORD PTR 564[rsi], ax
	xor	eax, eax
	mov	WORD PTR 568[rsi], ax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	WORD PTR 566[rsi], dx
	xor	edx, edx
	mov	rax, QWORD PTR [rax]
	mov	WORD PTR 24[rbx], dx
	lea	rdx, Task_CraneExtend[rip]
	mov	DWORD PTR 20[rbx], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	mov	ecx, eax
	sar	cx, 2
	mov	edx, ecx
	sal	edx, 4
	sub	edx, ecx
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	Render;	.scl	3;	.type	32;	.endef
	.seh_proc	Render
Render:
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
	mov	r12d, DWORD PTR .LC2[rip]
	mov	rdi, QWORD PTR .refptr.gOamMatrixIndex[rip]
	lea	rbx, 8[rcx]
	lea	rsi, 368[rcx]
	lea	rbp, 36[rsp]
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L24:
	call	DisplaySprite
.L23:
	add	rbx, 40
	cmp	rbx, rsi
	je	.L30
.L25:
	movzx	edx, WORD PTR 8[rbx]
	test	dl, 2
	jne	.L23
	mov	r8d, DWORD PTR 28[rbx]
	mov	eax, DWORD PTR 32[rbx]
	mov	rcx, QWORD PTR [rbx]
	sar	r8d, 8
	sar	eax, 8
	and	edx, 1
	mov	WORD PTR 38[rcx], r8w
	mov	WORD PTR 40[rcx], ax
	je	.L24
	movzx	r8d, r8w
	sal	eax, 16
	movzx	edx, WORD PTR 24[rbx]
	mov	DWORD PTR 38[rsp], r12d
	or	eax, r8d
	mov	DWORD PTR 42[rsp], eax
	movzx	eax, BYTE PTR [rdi]
	mov	WORD PTR 36[rsp], dx
	lea	edx, 1[rax]
	or	eax, 8288
	mov	DWORD PTR 32[rcx], eax
	mov	BYTE PTR [rdi], dl
	mov	rdx, rbp
	call	TransformSprite
	mov	rcx, QWORD PTR [rbx]
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L30:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_CraneExtend;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CraneExtend
Task_CraneExtend:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	eax, DWORD PTR 36[rdx]
	mov	rbx, QWORD PTR 24[r8]
	test	al, -128
	jne	.L32
	cmp	WORD PTR 48[rdx], 120
	je	.L32
.L33:
	movzx	ecx, WORD PTR 568[rbx]
	movzx	eax, WORD PTR 566[rbx]
	mov	r9d, eax
	sub	eax, ecx
	mov	edx, ecx
	mov	ecx, 64
	sar	eax, 4
	cmp	ax, cx
	cmovb	eax, ecx
	mov	ecx, 384
	cmp	ax, cx
	cmova	eax, ecx
	mov	ecx, 512
	add	eax, edx
	mov	edx, eax
	mov	WORD PTR 568[rbx], ax
	shr	dx, 6
	sub	ecx, edx
	mov	WORD PTR 20[rbx], cx
	cmp	ax, r9w
	jb	.L34
	mov	eax, 512
	sub	eax, ecx
	add	eax, eax
	mov	WORD PTR 566[rbx], ax
	lea	rax, Task_CraneRetract[rip]
	mov	QWORD PTR 40[r8], rax
.L34:
	sub	dx, 512
	mov	rcx, rbx
	and	dx, 1023
	mov	WORD PTR 60[rbx], dx
	call	UpdatePartScreenPositions
	mov	rcx, rbx
	call	UpdatePlayerPosition
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L32:
	mov	DWORD PTR 560[rbx], 0
	and	eax, -4194305
	mov	DWORD PTR 36[rdx], eax
	jmp	.L33
	.seh_endproc
	.p2align 4
	.def	Task_CraneRetract;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CraneRetract
Task_CraneRetract:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR 36[rdx]
	mov	rbx, QWORD PTR 24[rcx]
	test	al, -128
	jne	.L36
	cmp	WORD PTR 48[rdx], 120
	je	.L36
	movzx	eax, WORD PTR 566[rbx]
	cmp	ax, 63
	jg	.L38
.L42:
	xor	r8d, r8d
	add	ax, WORD PTR 20[rbx]
	mov	WORD PTR 566[rbx], r8w
	mov	WORD PTR 20[rbx], ax
.L39:
	movzx	r8d, WORD PTR 564[rbx]
	mov	r9d, DWORD PTR 36[rdx]
	neg	r8d
	test	r9b, -128
	jne	.L41
	mov	r11d, DWORD PTR 560[rbx]
	test	r11d, r11d
	je	.L41
	and	r9d, -4194305
	xor	r10d, r10d
	mov	BYTE PTR 117[rdx], 7
	mov	DWORD PTR 36[rdx], r9d
	mov	r9d, 38
	mov	WORD PTR 108[rdx], r9w
	mov	WORD PTR 20[rdx], r10w
	mov	WORD PTR 22[rdx], r8w
	mov	DWORD PTR 560[rbx], 0
.L41:
	xor	edx, edx
	mov	WORD PTR 566[rbx], r8w
	mov	WORD PTR 568[rbx], dx
	lea	rdx, Task_8073C6C[rip]
	mov	QWORD PTR 40[rcx], rdx
.L40:
	neg	eax
	mov	rcx, rbx
	and	ax, 1023
	mov	WORD PTR 60[rbx], ax
	call	UpdatePartScreenPositions
	mov	rcx, rbx
	call	UpdatePlayerPosition
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L36:
	mov	DWORD PTR 560[rbx], 0
	and	eax, -4194305
	mov	DWORD PTR 36[rdx], eax
	movzx	eax, WORD PTR 566[rbx]
	cmp	ax, 63
	jle	.L42
.L38:
	lea	r8d, -64[rax]
	movzx	eax, WORD PTR 20[rbx]
	mov	WORD PTR 566[rbx], r8w
	add	eax, 64
	mov	WORD PTR 20[rbx], ax
	test	r8w, r8w
	jne	.L40
	jmp	.L39
	.seh_endproc
	.p2align 4
	.def	PlayerIsTouchingHook;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerIsTouchingHook
PlayerIsTouchingHook:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	xor	edx, edx
	mov	eax, DWORD PTR 36[r8]
	test	al, -128
	jne	.L43
	and	eax, 2
	mov	edx, eax
	je	.L43
	xor	edx, edx
	cmp	WORD PTR 22[r8], 0
	jle	.L43
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	movsx	r9d, WORD PTR 317[rcx]
	movzx	eax, WORD PTR 13[r8]
	sub	ax, WORD PTR [r10]
	lea	r11d, -24[r9]
	cwde
	cmp	r11d, eax
	jg	.L43
	add	r9d, 24
	cmp	eax, r9d
	jg	.L43
	movsx	ecx, WORD PTR 321[rcx]
	movzx	eax, WORD PTR 17[r8]
	sub	ax, WORD PTR 4[r10]
	cwde
	lea	r8d, -24[rcx]
	cmp	r8d, eax
	jg	.L43
	add	ecx, 24
	xor	edx, edx
	cmp	eax, ecx
	setle	dl
.L43:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_8073E20;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8073E20
Task_8073E20:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 20[rbx]
	cmp	ax, 512
	je	.L54
	jbe	.L55
	sub	eax, 1
	mov	WORD PTR 20[rbx], ax
.L54:
	neg	eax
	mov	r10d, DWORD PTR 568[rbx]
	and	ax, 1023
	mov	WORD PTR 60[rbx], ax
	mov	esi, eax
	movzx	eax, WORD PTR 568[rbx]
	test	r10d, r10d
	jne	.L56
.L84:
	movzx	edx, WORD PTR 568[rbx]
	lea	rax, Task_Inactive[rip]
	mov	QWORD PTR 40[r8], rax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 1024
	ja	.L85
.L105:
	mov	rcx, rbx
	call	PlayerIsTouchingHook
	test	eax, eax
	jne	.L103
.L86:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	ebp, 192
	mov	edx, DWORD PTR 4[rbx]
	mov	esi, ebp
	mov	ecx, DWORD PTR 4[rax]
	sub	si, WORD PTR [rax]
	movzx	eax, WORD PTR [rbx]
	add	eax, esi
	cmp	ax, 810
	ja	.L89
	sub	ebp, ecx
	add	edx, ebp
	cmp	dx, 624
	ja	.L89
.L88:
	mov	rcx, rbx
	call	UpdatePartScreenPositions
	add	si, WORD PTR [rbx]
	mov	eax, DWORD PTR 4[rbx]
	cmp	si, 810
	ja	.L89
	add	ebp, eax
	cmp	bp, 624
	ja	.L89
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L89:
	mov	rax, QWORD PTR 576[rbx]
	movzx	edx, BYTE PTR 584[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L55:
	add	eax, 1
	mov	WORD PTR 20[rbx], ax
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L103:
	mov	WORD PTR 60[rbx], si
	mov	rcx, rbx
	call	HandlePlayerTouchingHook
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L56:
	movzx	r10d, WORD PTR 566[rbx]
	movzx	edx, WORD PTR 570[rbx]
	test	r10w, r10w
	jne	.L58
	movsx	r11d, ax
	movsx	ecx, dx
	mov	ebp, r11d
	sub	ebp, ecx
	mov	r9d, ebp
	sar	r9d, 4
	cmp	ebp, -496
	mov	ebp, 65504
	cmovge	r9d, ebp
	sub	ecx, r11d
	sar	ecx, 4
	add	cx, 256
	add	edx, r9d
	mov	WORD PTR 300[rbx], cx
	mov	WORD PTR 570[rbx], dx
	test	ax, ax
	jle	.L61
.L60:
	cmp	dx, ax
	jl	.L65
	movsx	edx, ax
	mov	WORD PTR 564[rbx], ax
	lea	edx, [rdx+rdx*2]
	sar	edx, 2
	mov	r9d, edx
	mov	edx, eax
	neg	r9d
	sal	edx, 16
	movzx	ecx, r9w
	or	edx, ecx
	mov	DWORD PTR 568[rbx], edx
	test	r9w, r9w
	jne	.L80
	xor	ecx, ecx
	xor	eax, eax
	mov	WORD PTR 570[rbx], cx
	mov	ecx, esi
.L83:
	add	r10d, 1
	mov	WORD PTR 566[rbx], r10w
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L58:
	test	ax, ax
	jne	.L62
	test	dx, dx
	jle	.L104
	lea	ecx, -32[rdx]
	cmp	dx, 32
	mov	edx, ecx
	cmovle	edx, eax
	mov	WORD PTR 570[rbx], dx
.L65:
	movzx	ecx, WORD PTR 570[rbx]
	mov	edx, eax
	sar	cx, 5
	add	ecx, esi
	and	cx, 1023
	neg	dx
	cmovns	eax, edx
.L77:
	mov	edx, DWORD PTR 568[rbx]
	mov	WORD PTR 60[rbx], cx
	test	edx, edx
	je	.L84
	cmp	ax, 1024
	jbe	.L105
.L85:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, 192
	mov	ebp, esi
	sub	si, WORD PTR [rax]
	sub	bp, WORD PTR 4[rax]
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L62:
	movsx	ecx, dx
	jle	.L67
	test	dx, dx
	jle	.L68
	movsx	r9d, ax
	sub	r9d, ecx
	mov	ecx, r9d
	sar	ecx, 4
	cmp	r9d, 511
	jg	.L72
.L69:
	add	edx, 32
	mov	WORD PTR 570[rbx], dx
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L67:
	test	dx, dx
	jle	.L73
	movsx	r9d, WORD PTR 564[rbx]
	sub	ecx, r9d
	mov	r9d, ecx
	sar	r9d, 4
	cmp	ecx, -496
	mov	ecx, -32
	cmovl	ecx, r9d
.L74:
	add	edx, ecx
	mov	WORD PTR 570[rbx], dx
.L61:
	test	ax, ax
	je	.L65
	cmp	dx, ax
	jg	.L65
	movsx	edx, ax
	mov	WORD PTR 564[rbx], ax
	lea	edx, [rdx+rdx*2]
	sar	edx, 2
	mov	r9d, edx
	mov	edx, eax
	neg	r9d
	sal	edx, 16
	movzx	ecx, r9w
	or	edx, ecx
	mov	DWORD PTR 568[rbx], edx
.L80:
	sar	ax, 5
	mov	edx, r9d
	mov	ecx, eax
	mov	eax, r9d
	add	ecx, esi
	and	cx, 1023
	neg	ax
	cmovns	edx, eax
	cmp	dx, 128
	jbe	.L82
	movzx	edx, WORD PTR 568[rbx]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L82:
	xor	r9d, r9d
	xor	eax, eax
	mov	WORD PTR 568[rbx], r9w
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L104:
	lea	ecx, 32[rdx]
	cmp	dx, -32
	cmovge	ecx, eax
	mov	WORD PTR 570[rbx], cx
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L68:
	movsx	r9d, WORD PTR 564[rbx]
	sub	ecx, r9d
	mov	r9d, ecx
	sar	r9d, 4
	cmp	ecx, 511
	jle	.L69
	mov	ecx, r9d
.L72:
	add	edx, ecx
	mov	WORD PTR 570[rbx], dx
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L73:
	movsx	r9d, ax
	sub	r9d, ecx
	mov	ecx, r9d
	sar	ecx, 4
	cmp	r9d, -496
	mov	r9d, -32
	cmovge	ecx, r9d
	jmp	.L74
	.seh_endproc
	.p2align 4
	.def	Task_Inactive;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Inactive
Task_Inactive:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 20[rbx]
	cmp	ax, 512
	je	.L107
	jbe	.L108
	sub	eax, 1
	mov	WORD PTR 20[rbx], ax
.L107:
	movzx	edx, WORD PTR 300[rbx]
	cmp	dx, 256
	je	.L109
	lea	r8d, 1[rdx]
	lea	ecx, -1[rdx]
	mov	edx, r8d
	cmova	edx, ecx
	mov	WORD PTR 300[rbx], dx
.L109:
	neg	eax
	mov	rcx, rbx
	and	ax, 1023
	mov	WORD PTR 60[rbx], ax
	call	UpdatePartScreenPositions
	mov	rcx, rbx
	call	PlayerIsTouchingHook
	test	eax, eax
	jne	.L122
.L111:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 192
	mov	ecx, DWORD PTR 4[rbx]
	mov	r9d, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	r9w, WORD PTR [rdx]
	movzx	edx, WORD PTR [rbx]
	add	edx, r9d
	cmp	dx, 810
	ja	.L112
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 624
	ja	.L112
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rax, QWORD PTR 576[rbx]
	movzx	edx, BYTE PTR 584[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L108:
	add	eax, 1
	mov	WORD PTR 20[rbx], ax
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L122:
	mov	rcx, rbx
	call	HandlePlayerTouchingHook
	jmp	.L111
	.seh_endproc
	.p2align 4
	.def	Task_8073C6C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8073C6C
Task_8073C6C:
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
	mov	rbx, QWORD PTR [rax]
	mov	rbp, QWORD PTR 24[rbx]
	movsx	r8d, WORD PTR 566[rbp]
	mov	edi, r8d
	add	r8d, DWORD PTR 308[rbp]
	mov	eax, r8d
	neg	eax
	cmovs	eax, r8d
	cmp	eax, 3072
	jle	.L142
	test	di, di
	jle	.L126
	sub	r8w, 3072
	mov	eax, 3072
.L127:
	mov	DWORD PTR 308[rbp], eax
	movsx	r8d, r8w
	mov	edx, 6
	mov	rcx, rbp
	call	sub_80744E0
	test	eax, eax
	sete	sil
.L125:
	mov	r8d, edi
	lea	rdx, 108[rbp]
	lea	r9, 348[rbp]
	sar	r8w, 4
	movsx	r8d, r8w
	.p2align 4,,10
	.p2align 3
.L128:
	add	DWORD PTR [rdx], r8d
	mov	eax, DWORD PTR [rdx]
	mov	ecx, -3072
	cmp	eax, ecx
	cmovl	eax, ecx
	mov	ecx, 3072
	cmp	eax, ecx
	cmovg	eax, ecx
	add	rdx, 40
	mov	DWORD PTR -40[rdx], eax
	cmp	r9, rdx
	jne	.L128
	movzx	eax, WORD PTR 20[rbp]
	lea	rdx, 20[rbp]
	lea	rcx, 340[rbp]
	neg	eax
	and	ax, 1023
	mov	WORD PTR 60[rbp], ax
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L129:
	add	ax, WORD PTR [rdx]
	add	rdx, 40
	and	ax, 1023
	cmp	rdx, rcx
	jne	.L129
	mov	ecx, eax
	sub	cx, 256
	je	.L130
	mov	r8d, edi
	sar	r8w, 8
	mov	edx, r8d
	neg	dx
	cmovs	edx, r8d
	mov	r8d, 1
	test	dx, dx
	cmove	edx, r8d
	cmp	cx, 511
	ja	.L131
	sub	eax, edx
	cmp	cx, dx
	mov	edx, 256
	cmovb	eax, edx
.L132:
	mov	WORD PTR 300[rbp], ax
.L130:
	mov	rcx, rbp
	add	edi, 42
	call	UpdatePartScreenPositions
	test	di, di
	jg	.L133
	test	sil, sil
	je	.L143
.L133:
	xor	eax, eax
	mov	WORD PTR 566[rbp], ax
	lea	rax, Task_8073D48[rip]
	mov	QWORD PTR 40[rbx], rax
.L134:
	mov	rcx, rbp
	call	Render
	add	WORD PTR 568[rbp], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	add	r8w, 3072
	mov	eax, -3072
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L142:
	mov	DWORD PTR 308[rbp], r8d
	xor	esi, esi
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L131:
	movzx	ecx, cx
	mov	r8d, 1024
	movzx	r9d, dx
	add	edx, eax
	sub	r8d, ecx
	and	dx, 1023
	mov	eax, 256
	cmp	r9d, r8d
	cmovle	eax, edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L143:
	mov	WORD PTR 566[rbp], di
	jmp	.L134
	.seh_endproc
	.p2align 4
	.def	Task_8073D48;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8073D48
Task_8073D48:
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
	mov	rsi, QWORD PTR [rax]
	mov	rbp, QWORD PTR 24[rsi]
	movzx	eax, WORD PTR 20[rbp]
	cmp	ax, 512
	je	.L145
	lea	ecx, 1[rax]
	lea	edx, -1[rax]
	mov	eax, ecx
	cmova	eax, edx
	mov	WORD PTR 20[rbp], ax
.L145:
	movsx	r8d, WORD PTR 566[rbp]
	mov	edi, r8d
	add	r8d, DWORD PTR 308[rbp]
	mov	eax, r8d
	neg	eax
	cmovs	eax, r8d
	cmp	eax, 3072
	jle	.L168
	test	di, di
	jle	.L149
	sub	r8w, 3072
	mov	eax, 3072
.L150:
	mov	DWORD PTR 308[rbp], eax
	movsx	r8d, r8w
	mov	edx, 6
	mov	rcx, rbp
	call	sub_80744E0
	mov	ebx, eax
.L148:
	mov	r8d, edi
	lea	rdx, 108[rbp]
	lea	r9, 348[rbp]
	sar	r8w, 4
	movsx	r8d, r8w
	.p2align 4,,10
	.p2align 3
.L151:
	add	DWORD PTR [rdx], r8d
	mov	eax, DWORD PTR [rdx]
	mov	ecx, -3072
	cmp	eax, ecx
	cmovl	eax, ecx
	mov	ecx, 3072
	cmp	eax, ecx
	cmovg	eax, ecx
	add	rdx, 40
	mov	DWORD PTR -40[rdx], eax
	cmp	r9, rdx
	jne	.L151
	movzx	eax, WORD PTR 20[rbp]
	lea	rdx, 20[rbp]
	lea	rcx, 340[rbp]
	neg	eax
	and	ax, 1023
	mov	WORD PTR 60[rbp], ax
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L152:
	add	ax, WORD PTR [rdx]
	add	rdx, 40
	and	ax, 1023
	cmp	rdx, rcx
	jne	.L152
	lea	r8d, -256[rax]
	cmp	ax, 768
	je	.L153
	mov	ecx, edi
	sar	cx, 8
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	mov	ecx, 1
	test	dx, dx
	cmove	edx, ecx
	movzx	ecx, r8w
	movzx	r9d, dx
	cmp	r8w, 511
	ja	.L154
	mov	r8d, 512
	add	edx, eax
	mov	eax, 768
	sub	r8d, ecx
	cmp	r8d, r9d
	cmovge	eax, edx
.L155:
	mov	WORD PTR 300[rbp], ax
.L153:
	mov	rcx, rbp
	call	UpdatePartScreenPositions
	test	ebx, ebx
	je	.L156
	add	edi, 42
	mov	rcx, rbp
	mov	WORD PTR 566[rbp], di
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L149:
	add	r8w, 3072
	mov	eax, -3072
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L156:
	mov	eax, 256
	mov	rcx, rbp
	sub	ax, WORD PTR 300[rbp]
	mov	DWORD PTR 564[rbp], 0
	sal	eax, 4
	mov	WORD PTR 568[rbp], ax
	xor	eax, eax
	mov	WORD PTR 570[rbp], ax
	lea	rax, Task_8073E20[rip]
	mov	QWORD PTR 40[rsi], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L168:
	mov	DWORD PTR 308[rbp], r8d
	mov	ebx, 1
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L154:
	sub	eax, edx
	sub	ecx, 511
	mov	edx, 768
	and	ax, 1023
	cmp	ecx, r9d
	cmovle	eax, edx
	jmp	.L155
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Crane
	.def	CreateEntity_Crane;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Crane
CreateEntity_Crane:
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
	lea	rax, TaskDestructor_80743B8[rip]
	xor	r13d, r13d
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	esi, edx
	mov	ebp, r9d
	mov	edx, 592
	mov	edi, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	lea	rcx, Task_Inactive[rip]
	movzx	edi, di
	call	TaskCreate
	sal	edi, 5
	mov	r8d, 5
	xor	r10d, r10d
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, si
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, 512
	sal	eax, 5
	mov	DWORD PTR 560[rbx], 0
	movzx	ecx, BYTE PTR [r12]
	add	eax, ecx
	sal	eax, 3
	mov	DWORD PTR [rbx], eax
	movzx	eax, BYTE PTR 1[r12]
	mov	QWORD PTR 576[rbx], r12
	add	eax, edi
	xor	edi, edi
	sal	eax, 3
	mov	DWORD PTR 4[rbx], eax
	movzx	eax, cl
	mov	ecx, ebp
	lea	rbp, 496[rbx]
	mov	ah, cl
	lea	rcx, 368[rbx]
	mov	WORD PTR 584[rbx], ax
	lea	rax, 76736[rsi]
	mov	BYTE PTR [r12], -2
	movzx	r12d, WORD PTR .LC4[rip]
	mov	QWORD PTR 8[rbx], rcx
	mov	WORD PTR 16[rbx], r8w
	mov	WORD PTR 20[rbx], r9w
	mov	WORD PTR 404[rbx], r10w
	mov	QWORD PTR 24[rbx], 0
	mov	DWORD PTR 410[rbx], 1152
	mov	BYTE PTR 418[rbx], 16
	mov	BYTE PTR 421[rbx], 0
	mov	DWORD PTR 424[rbx], -1
	mov	DWORD PTR 400[rbx], 8192
	mov	QWORD PTR 376[rbx], rax
	mov	DWORD PTR 384[rbx], 37027840
	mov	WORD PTR 416[rbx], r12w
	call	UpdateSpriteAnimation
	mov	eax, 4
	mov	WORD PTR 60[rbx], di
	mov	rdi, QWORD PTR .LC6[rip]
	mov	WORD PTR 96[rbx], ax
	xor	eax, eax
	mov	rcx, rbp
	mov	r11d, 2
	mov	WORD PTR 100[rbx], r13w
	mov	r13d, DWORD PTR .LC7[rip]
	mov	WORD PTR 532[rbx], ax
	lea	rax, 76672[rsi]
	mov	QWORD PTR 504[rbx], rax
	mov	eax, -255
	mov	QWORD PTR 48[rbx], 0
	mov	WORD PTR 56[rbx], r11w
	mov	QWORD PTR 64[rbx], 11264
	mov	QWORD PTR 88[rbx], rbp
	mov	QWORD PTR 104[rbx], rdi
	mov	DWORD PTR 538[rbx], 1152
	mov	BYTE PTR 546[rbx], 16
	mov	BYTE PTR 549[rbx], 0
	mov	DWORD PTR 552[rbx], -1
	mov	DWORD PTR 528[rbx], 8192
	mov	DWORD PTR 512[rbx], r13d
	mov	WORD PTR 544[rbx], ax
	call	UpdateSpriteAnimation
	mov	eax, 2
.L170:
	add	eax, 1
	xor	r11d, r11d
	xor	ecx, ecx
	movzx	edx, ax
	lea	rdx, [rdx+rdx*4]
	lea	rdx, [rbx+rdx*8]
	mov	WORD PTR 16[rdx], r11w
	mov	QWORD PTR 8[rdx], rbp
	mov	WORD PTR 20[rdx], cx
	movzx	edx, ax
	lea	rdx, [rdx+rdx*4]
	mov	QWORD PTR 24[rbx+rdx*8], rdi
	cmp	ax, 6
	jne	.L170
	lea	rcx, 432[rbx]
	mov	edx, 256
	xor	r8d, r8d
	mov	eax, 5
	add	rsi, 76160
	mov	QWORD PTR 288[rbx], rcx
	mov	WORD PTR 296[rbx], ax
	mov	WORD PTR 300[rbx], dx
	mov	QWORD PTR 304[rbx], rdi
	mov	WORD PTR 468[rbx], r8w
	mov	DWORD PTR 474[rbx], 1152
	mov	BYTE PTR 482[rbx], 16
	mov	BYTE PTR 485[rbx], 0
	mov	DWORD PTR 488[rbx], -1
	mov	DWORD PTR 464[rbx], 8192
	mov	QWORD PTR 440[rbx], rsi
	mov	DWORD PTR 448[rbx], r13d
	mov	WORD PTR 480[rbx], r12w
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 20[rbx]
	mov	r9d, 2
	xor	r10d, r10d
	mov	QWORD PTR 328[rbx], 0
	neg	eax
	mov	WORD PTR 336[rbx], r9w
	and	ax, 1023
	mov	WORD PTR 340[rbx], r10w
	mov	QWORD PTR 344[rbx], 4096
	mov	WORD PTR 60[rbx], ax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC2:
	.word	256
	.word	256
	.align 2
.LC4:
	.byte	0
	.byte	-1
	.align 8
.LC6:
	.long	0
	.long	3072
	.align 4
.LC7:
	.word	0
	.word	564
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
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
