	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Chord;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Chord
TaskDestructor_Chord:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	HandleBounce;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleBounce
HandleBounce:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rsi, rcx
	test	BYTE PTR 36[rbx], -128
	je	.L12
	movzx	eax, WORD PTR 22[rbx]
	mov	edx, 1024
	add	eax, eax
	cmp	ax, dx
	cmovl	eax, edx
.L7:
	mov	WORD PTR 128[rsi], ax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rsi, Task_Bounce[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	call	Player_SetMovestate_IsInScriptedSequence
	mov	eax, 4
	xor	edx, edx
	or	DWORD PTR 36[rbx], 4194304
	mov	WORD PTR 108[rbx], ax
	movsx	eax, WORD PTR 22[rbx]
	mov	WORD PTR 20[rbx], dx
	lea	eax, [rax+rax*2]
	sar	eax
	cmp	ax, 1023
	jg	.L13
	mov	edx, 1024
	mov	eax, 2048
.L5:
	mov	WORD PTR 22[rbx], dx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L13:
	cmp	ax, 3072
	jg	.L9
	mov	WORD PTR 22[rbx], ax
	add	eax, eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edx, 3072
	mov	eax, 6144
	jmp	.L5
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCamera[rip]
	xor	ebp, ebp
	mov	rdi, rcx
	lea	rsi, 56[rcx]
	mov	r12, rcx
	.p2align 4,,10
	.p2align 3
.L17:
	movzx	eax, WORD PTR 2[r12]
	mov	r8d, DWORD PTR 120[rdi]
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	movzx	edx, dx
	sar	edx, 3
	mov	ecx, edx
	neg	ecx
	cmp	bpl, 2
	cmova	edx, ecx
	movsx	ecx, WORD PTR [r12]
	sar	ax, 8
	add	ebp, 1
	cwde
	add	eax, DWORD PTR 124[rdi]
	sub	eax, DWORD PTR 4[rbx]
	movsx	edx, dx
	mov	WORD PTR 96[rdi], ax
	add	r12, 6
	add	edx, ecx
	mov	rcx, rsi
	sar	edx, 8
	lea	edx, 4[r8+rdx]
	sub	edx, DWORD PTR [rbx]
	mov	WORD PTR 94[rdi], dx
	call	DisplaySprite
	cmp	bpl, 6
	jne	.L17
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	PlayerIsHittingChord.part.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerIsHittingChord.part.0.isra.0
PlayerIsHittingChord.part.0.isra.0:
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	xor	r10d, r10d
	movzx	eax, WORD PTR 13[r8]
	sub	cx, WORD PTR [r9]
	sub	ax, WORD PTR [r9]
	cmp	cx, ax
	jg	.L19
	movsx	ecx, cx
	cwde
	add	ecx, 48
	cmp	ecx, eax
	jl	.L19
	mov	ecx, DWORD PTR 4[r9]
	movzx	eax, WORD PTR 17[r8]
	sub	edx, ecx
	sub	eax, ecx
	movsx	edx, dx
	cwde
	lea	ecx, -9[rdx]
	cmp	ecx, eax
	jg	.L19
	add	edx, 9
	xor	r10d, r10d
	cmp	eax, edx
	setle	r10b
.L19:
	mov	eax, r10d
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Vibrate;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Vibrate
Task_Vibrate:
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
	xor	r8d, r8d
	xor	r10d, r10d
	mov	edi, -256
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	lea	rax, 2[rbx]
	lea	r9, 38[rbx]
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L39:
	add	rax, 6
	add	r8d, 1
	cmp	r9, rax
	je	.L38
.L29:
	movsx	edx, WORD PTR [rax]
	test	dx, dx
	je	.L39
	jle	.L27
	sub	edx, 256
	mov	ecx, edx
	neg	ecx
	test	edx, edx
	cmovs	ecx, r10d
	mov	edx, ecx
.L28:
	mov	WORD PTR [rax], dx
	add	rax, 6
	cmp	r9, rax
	jne	.L29
.L38:
	cmp	r8b, 6
	jne	.L30
	lea	rax, Task_Idle[rip]
	mov	QWORD PTR 40[rsi], rax
.L30:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L31
	cmp	WORD PTR 22[rax], 0
	jle	.L31
	mov	edx, DWORD PTR 124[rbx]
	mov	ecx, DWORD PTR 120[rbx]
	call	PlayerIsHittingChord.part.0.isra.0
	test	eax, eax
	je	.L31
	xor	ecx, ecx
	xor	eax, eax
	xor	edx, edx
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	mov	WORD PTR 14[rbx], cx
	mov	rcx, rbx
	mov	WORD PTR 2[rbx], ax
	mov	WORD PTR 8[rbx], dx
	mov	WORD PTR 20[rbx], r8w
	mov	WORD PTR 26[rbx], r9w
	mov	WORD PTR 32[rbx], r10w
	call	HandleBounce
.L31:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L27:
	lea	r11d, 256[rdx]
	mov	ecx, edi
	sub	ecx, edx
	test	r11w, r11w
	cmovg	ecx, r10d
	mov	edx, ecx
	jmp	.L28
	.seh_endproc
	.p2align 4
	.def	Task_Bounce;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Bounce
Task_Bounce:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rbp, QWORD PTR [rbx]
	mov	r11d, DWORD PTR 36[rdi]
	mov	rsi, QWORD PTR 24[rbp]
	and	r11d, 128
	jne	.L42
	mov	eax, DWORD PTR 120[rsi]
	mov	edx, DWORD PTR 12[rdi]
	add	eax, 24
	sal	eax, 8
	cmp	edx, eax
	je	.L42
	jle	.L44
	add	edx, -128
	cmp	edx, eax
	cmovl	edx, eax
	mov	DWORD PTR 12[rdi], edx
	.p2align 4,,10
	.p2align 3
.L42:
	movsx	r10d, WORD PTR 128[rsi]
	lea	rdx, 2[rsi]
	lea	r9, 38[rsi]
	xor	r8d, r8d
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L59:
	add	rdx, 6
	add	r8d, 1
	cmp	rdx, r9
	je	.L58
.L49:
	movsx	r12d, WORD PTR [rdx]
	movsx	r13d, WORD PTR 2[rdx]
	mov	eax, r10d
	sub	eax, r12d
	mov	ecx, r12d
	imul	eax, r13d
	sar	eax, 8
	cmp	r12w, ax
	jge	.L59
	cwde
	sub	eax, r12d
	mov	r12d, 128
	sar	eax, 2
	cmp	eax, r12d
	cmovl	eax, r12d
	add	rdx, 6
	add	ecx, eax
	mov	WORD PTR -6[rdx], cx
	cmp	rdx, r9
	jne	.L49
.L58:
	test	r11d, r11d
	jne	.L60
	mov	eax, DWORD PTR 124[rsi]
	movsx	edx, WORD PTR 14[rsi]
	mov	BYTE PTR 40[rdi], 64
	sub	eax, 16
	sal	eax, 8
	add	eax, edx
	mov	DWORD PTR 16[rdi], eax
	cmp	r8b, 6
	je	.L61
.L52:
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L60:
	cmp	r8b, 6
	jne	.L52
.L51:
	lea	rax, Task_Vibrate[rip]
	mov	QWORD PTR 40[rbp], rax
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L44:
	sub	edx, -128
	cmp	edx, eax
	cmovg	edx, eax
	mov	DWORD PTR 12[rdi], edx
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L61:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	ecx, 324
	and	DWORD PTR 36[rdi], -4194305
	neg	WORD PTR 22[rdi]
	mov	BYTE PTR 117[rdi], 5
	call	m4aSongNumStart
	mov	rbp, QWORD PTR [rbx]
	jmp	.L51
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r11d, DWORD PTR 120[rbx]
	mov	esi, DWORD PTR 124[rbx]
	test	BYTE PTR 36[rax], -128
	jne	.L63
	cmp	WORD PTR 22[rax], 0
	jle	.L63
	mov	edx, esi
	mov	ecx, r11d
	call	PlayerIsHittingChord.part.0.isra.0
	test	eax, eax
	je	.L63
	mov	rcx, rbx
	call	HandleBounce
	mov	r11d, DWORD PTR 120[rbx]
	mov	esi, DWORD PTR 124[rbx]
.L63:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	r11d, DWORD PTR [rax]
	mov	edx, DWORD PTR 4[rax]
	add	r11w, 140
	cmp	r11w, 706
	ja	.L64
	sub	esi, edx
	sub	si, -128
	cmp	si, 496
	ja	.L64
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L64:
	mov	rax, QWORD PTR 40[rbx]
	movzx	edx, BYTE PTR 52[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Chord
	.def	CreateEntity_Chord;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Chord
CreateEntity_Chord:
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
	lea	rax, TaskDestructor_Chord[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 136
	lea	rcx, Task_Idle[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 50[rbx], di
	movzx	edi, di
	mov	WORD PTR 48[rbx], si
	sal	edi, 5
	mov	QWORD PTR 40[rbx], rbp
	movzx	edx, BYTE PTR 0[rbp]
	mov	DWORD PTR 98[rbx], 1152
	movzx	eax, dl
	mov	BYTE PTR 106[rbx], 16
	mov	ah, cl
	mov	ecx, -241
	mov	BYTE PTR 109[rbx], 0
	mov	WORD PTR 52[rbx], ax
	xor	eax, eax
	mov	WORD PTR 92[rbx], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 104[rbx], cx
	lea	rcx, 56[rbx]
	add	rax, 79616
	mov	DWORD PTR 112[rbx], -1
	mov	QWORD PTR 64[rbx], rax
	movzx	eax, si
	sal	eax, 5
	mov	DWORD PTR 88[rbx], 8192
	add	eax, edx
	mov	DWORD PTR 72[rbx], 37683200
	sal	eax, 3
	mov	DWORD PTR 120[rbx], eax
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	DWORD PTR 124[rbx], eax
	mov	BYTE PTR 0[rbp], -2
	call	UpdateSpriteAnimation
	movdqu	xmm0, XMMWORD PTR .LC2[rip]
	mov	DWORD PTR 32[rbx], 0
	movups	XMMWORD PTR [rbx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	movups	XMMWORD PTR 16[rbx], xmm0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC2:
	.word	0
	.word	0
	.word	0
	.word	2048
	.word	0
	.word	128
	.word	4096
	.word	0
	.align 16
.LC3:
	.word	256
	.word	6144
	.word	0
	.word	256
	.word	8192
	.word	0
	.word	128
	.word	10240
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
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
