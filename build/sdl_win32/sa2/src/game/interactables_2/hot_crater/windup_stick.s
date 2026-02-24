	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_80729D4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80729D4
sub_80729D4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8072650;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072650
sub_8072650:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], -128
	jne	.L26
	movzx	eax, BYTE PTR 16[rsi]
	sub	eax, 1
	cmp	al, 1
	jbe	.L27
.L7:
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	jne	.L28
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	eax, WORD PTR 100[rbx]
	test	al, 16
	je	.L8
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r8d, DWORD PTR 12[rbx]
	movzx	edx, WORD PTR 12[rsi]
	add	edx, DWORD PTR [rsi]
	mov	r9d, DWORD PTR [rcx]
	lea	ecx, 8[r9]
	sub	edx, ecx
	mov	ecx, r8d
	sar	ecx, 8
	sub	ecx, r9d
	cmp	cx, dx
	jge	.L8
	sub	r8d, -128
	mov	DWORD PTR 12[rbx], r8d
.L8:
	test	al, 32
	je	.L7
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR 12[rbx]
	movzx	eax, WORD PTR 8[rsi]
	add	eax, DWORD PTR [rsi]
	mov	r8d, DWORD PTR [rdx]
	lea	edx, -8[r8]
	sub	eax, edx
	mov	edx, ecx
	sar	edx, 8
	sub	edx, r8d
	cmp	dx, ax
	jle	.L7
	add	ecx, -128
	mov	DWORD PTR 12[rbx], ecx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L28:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	edx, DWORD PTR 36[rbx]
	mov	r8, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	and	edx, -4194305
	mov	eax, DWORD PTR 48[r8]
	mov	DWORD PTR 36[rbx], edx
	movzx	ecx, BYTE PTR 18[rsi]
	and	ah, -49
	sal	ecx, 12
	or	eax, ecx
	mov	DWORD PTR 48[r8], eax
	movzx	eax, BYTE PTR 16[rsi]
	cmp	al, 3
	je	.L10
	ja	.L11
	cmp	al, 1
	je	.L12
	cmp	al, 2
	jne	.L14
	movsx	eax, WORD PTR 14[rsi]
	add	eax, DWORD PTR 4[rsi]
	sal	eax, 8
.L16:
	mov	DWORD PTR 16[rbx], eax
	mov	eax, 14
	mov	WORD PTR 108[rbx], ax
	mov	BYTE PTR 117[rbx], 7
.L14:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8072998[rip]
	mov	BYTE PTR 17[rsi], 15
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8072998[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	cmp	al, 4
	jne	.L14
	movsx	eax, WORD PTR 14[rsi]
	add	eax, DWORD PTR 4[rsi]
	xor	edx, 1
	mov	BYTE PTR 117[rbx], 1
	sal	eax, 8
	mov	DWORD PTR 36[rbx], edx
	mov	DWORD PTR 16[rbx], eax
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L10:
	movsx	eax, WORD PTR 10[rsi]
	add	eax, DWORD PTR 4[rsi]
	mov	BYTE PTR 117[rbx], 1
	sal	eax, 8
	mov	DWORD PTR 16[rbx], eax
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	movsx	eax, WORD PTR 10[rsi]
	add	eax, DWORD PTR 4[rsi]
	sal	eax, 8
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	sub_8072998;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072998
sub_8072998:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rdi]
	mov	r9d, DWORD PTR [rsi]
	mov	r10d, DWORD PTR 4[rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR [rbx]
	movzx	ecx, WORD PTR 4[rbx]
	movsx	edx, WORD PTR 12[rbx]
	movzx	r8d, BYTE PTR 17[rbx]
	sub	eax, r9d
	sub	ecx, r10d
	cwde
	add	edx, eax
	test	r8b, r8b
	jne	.L54
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r11d, DWORD PTR 36[rbp]
	test	r11b, -128
	je	.L32
.L53:
	mov	BYTE PTR 16[rbx], 0
.L31:
	cmp	edx, -128
	jl	.L49
	movsx	edx, WORD PTR 8[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L49
	movsx	eax, WORD PTR 14[rbx]
	movsx	ecx, cx
	add	eax, ecx
	cmp	eax, -128
	jl	.L49
	movsx	eax, WORD PTR 10[rbx]
	add	eax, ecx
	cmp	eax, 368
	jg	.L49
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	mov	rax, QWORD PTR 24[rbx]
	movzx	edx, BYTE PTR 32[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L32:
	movzx	r8d, WORD PTR 13[rbp]
	mov	r12d, DWORD PTR 16[rbp]
	sub	r8d, r9d
	movsx	r9d, WORD PTR 8[rbx]
	movsx	r8d, r8w
	add	r9d, eax
	cmp	r9d, r8d
	jg	.L53
	cmp	r8d, edx
	jg	.L53
	movsx	r8d, WORD PTR 10[rbx]
	sar	r12d, 8
	movsx	r9d, cx
	sub	r12d, r10d
	movsx	r12d, r12w
	add	r8d, r9d
	cmp	r8d, r12d
	jg	.L53
	movsx	r8d, WORD PTR 14[rbx]
	add	r8d, r9d
	cmp	r12d, r8d
	jg	.L53
	movzx	eax, WORD PTR 22[rbp]
	not	eax
	shr	ax, 15
	and	r11d, 2
	je	.L38
	add	eax, 1
.L39:
	mov	BYTE PTR 16[rbx], al
	mov	rcx, rbp
	mov	r12d, 3590
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbp
	call	Player_HandleSpriteYOffsetChange
	mov	WORD PTR 26[rbp], r12w
	call	Player_SetMovestate_IsInScriptedSequence
	mov	rcx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	r9d, DWORD PTR 36[rbp]
	mov	eax, DWORD PTR 48[rcx]
	mov	r8d, r9d
	or	r8d, 4194304
	mov	edx, eax
	and	ah, -49
	mov	DWORD PTR 36[rbp], r8d
	shr	edx, 12
	or	ah, 16
	and	edx, 3
	mov	BYTE PTR 18[rbx], dl
	mov	DWORD PTR 48[rcx], eax
	mov	ecx, DWORD PTR 4[rbx]
	lea	eax, 3[rcx]
	sal	eax, 8
	mov	DWORD PTR 16[rbp], eax
	movzx	eax, BYTE PTR 16[rbx]
	cmp	al, 3
	je	.L40
	ja	.L41
	cmp	al, 1
	je	.L42
	cmp	al, 2
	jne	.L44
	mov	r8d, 52
	xor	r9d, r9d
	mov	WORD PTR 108[rbp], r8w
	mov	WORD PTR 20[rbp], r9w
.L44:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, sub_8072650[rip]
	sub	cx, WORD PTR 4[rsi]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, DWORD PTR [rbx]
	movsx	edx, WORD PTR 12[rbx]
	sub	ax, WORD PTR [rsi]
	cwde
	add	edx, eax
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L54:
	sub	r8d, 1
	mov	BYTE PTR 16[rbx], 0
	mov	BYTE PTR 17[rbx], r8b
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L41:
	cmp	al, 4
	jne	.L44
	mov	eax, 54
	mov	WORD PTR 108[rbp], ax
	movzx	eax, WORD PTR 24[rbp]
	lea	edx, -320[rax]
	add	ax, 320
	and	r9d, 1
	cmovne	eax, edx
	xor	r8d, 1
	mov	DWORD PTR 36[rbp], r8d
	mov	WORD PTR 24[rbp], ax
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L42:
	mov	r10d, 51
	xor	r11d, r11d
	sub	WORD PTR 22[rbp], 1664
	mov	WORD PTR 108[rbp], r10w
	mov	WORD PTR 20[rbp], r11w
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L40:
	movzx	eax, WORD PTR 24[rbp]
	mov	edx, 53
	mov	WORD PTR 108[rbp], dx
	lea	edx, 640[rax]
	sub	ax, 640
	and	r9d, 1
	cmove	eax, edx
	mov	WORD PTR 24[rbp], ax
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L38:
	add	eax, 3
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_WindUpStick
	.def	CreateEntity_WindUpStick;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_WindUpStick
CreateEntity_WindUpStick:
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
	lea	rax, sub_80729D4[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 40
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, sub_8072998[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	mov	rdx, QWORD PTR 24[rax]
	mov	BYTE PTR 17[rdx], 0
	movzx	eax, BYTE PTR [rsi]
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	add	edi, eax
	mov	ecx, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edi, 3
	sal	r9d, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	add	ebp, eax
	movzx	eax, BYTE PTR 6[rsi]
	movzx	r10d, r10w
	mov	QWORD PTR 24[rdx], rsi
	sal	ebp, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], ebp
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 32[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
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
