	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Keyboard;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Keyboard
TaskDestructor_Keyboard:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Keyboard;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Keyboard
Task_Keyboard:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	edx, DWORD PTR [rdi]
	mov	r8d, DWORD PTR 4[rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 4[rbx]
	movzx	ecx, WORD PTR 8[rbx]
	sub	eax, edx
	sub	ecx, r8d
	cwde
	test	BYTE PTR 36[rsi], -128
	jne	.L5
	movzx	r9d, BYTE PTR 1[rbx]
	test	r9b, r9b
	jne	.L6
	movzx	r9d, WORD PTR 13[rsi]
	sub	r9d, edx
	movsx	edx, r9w
	movsx	r9d, WORD PTR 12[rbx]
	add	r9d, eax
	cmp	r9d, edx
	jg	.L5
	movsx	r9d, WORD PTR 16[rbx]
	add	r9d, eax
	cmp	edx, r9d
	jg	.L5
	movzx	edx, WORD PTR 17[rsi]
	movsx	r9d, cx
	sub	edx, r8d
	movsx	r8d, WORD PTR 14[rbx]
	movsx	edx, dx
	add	r8d, r9d
	cmp	r8d, edx
	jg	.L5
	movsx	r8d, WORD PTR 18[rbx]
	add	r8d, r9d
	cmp	edx, r8d
	jg	.L5
	mov	r12, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	eax, 4
	mov	BYTE PTR 1[rbx], 8
	mov	WORD PTR 108[rsi], ax
	movzx	eax, BYTE PTR [r12]
	mov	BYTE PTR 117[rsi], 5
	sar	al, 2
	cmp	al, 5
	je	.L44
	mov	ecx, 325
	call	m4aSongNumStart
.L10:
	movzx	eax, BYTE PTR [r12]
	movzx	edx, BYTE PTR [rbx]
	sar	al, 2
	cmp	dl, 1
	je	.L11
	cmp	dl, 2
	je	.L12
	test	dl, dl
	jne	.L13
	movzx	ecx, WORD PTR 12[rbx]
	test	cx, cx
	jle	.L14
	cmp	al, 5
	je	.L26
	mov	ecx, 768
	mov	edx, -1024
	mov	r12d, -1152
	.p2align 4,,10
	.p2align 3
.L16:
	mov	WORD PTR 20[rsi], cx
	mov	WORD PTR 22[rsi], dx
.L25:
	mov	edx, DWORD PTR 16[rsi]
	mov	ecx, DWORD PTR 12[rsi]
	mov	DWORD PTR 48[rsp], 0
	mov	r9d, 30
	mov	DWORD PTR 40[rsp], r12d
	mov	r8d, 5
	mov	DWORD PTR 32[rsp], 224
	sar	edx, 8
	sar	ecx, 8
	call	CreateNoteParticle
	mov	edx, DWORD PTR 16[rsi]
	mov	ecx, DWORD PTR 12[rsi]
	mov	DWORD PTR 48[rsp], 1
	mov	DWORD PTR 40[rsp], r12d
	mov	r9d, 30
	mov	r8d, 5
	mov	DWORD PTR 32[rsp], -224
	sar	edx, 8
	sar	ecx, 8
	call	CreateNoteParticle
.L35:
	mov	eax, DWORD PTR 4[rbx]
	sub	ax, WORD PTR [rdi]
	mov	ecx, DWORD PTR 8[rbx]
	cwde
	sub	cx, WORD PTR 4[rdi]
.L5:
	movsx	edx, WORD PTR 24[rbx]
	add	edx, eax
	cmp	edx, -128
	jl	.L23
	movsx	edx, WORD PTR 20[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L23
	movsx	eax, WORD PTR 26[rbx]
	movsx	ecx, cx
	add	eax, ecx
	cmp	eax, -128
	jl	.L23
	movsx	eax, WORD PTR 22[rbx]
	add	eax, ecx
	cmp	eax, 368
	jg	.L23
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	sub	r9d, 1
	mov	BYTE PTR 1[rbx], r9b
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L44:
	mov	ecx, 294
	call	m4aSongNumStart
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L13:
	cmp	al, 5
	je	.L35
	xor	r12d, r12d
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	edx, WORD PTR 14[rbx]
	mov	ecx, 1280
	test	dx, dx
	jle	.L20
.L39:
	mov	edx, 2048
	xor	r12d, r12d
	cmp	al, 5
	jne	.L16
.L15:
	mov	WORD PTR 20[rsi], cx
	mov	WORD PTR 22[rsi], dx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	edx, WORD PTR 14[rbx]
	mov	ecx, -1280
	test	dx, dx
	jg	.L39
.L20:
	je	.L21
	mov	edx, -2048
	cmp	al, 5
	je	.L15
.L36:
	mov	r12d, -1152
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	je	.L17
	cmp	al, 5
	je	.L27
	mov	ecx, -768
	mov	edx, -1024
	mov	r12d, -1152
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L21:
	cmp	al, 5
	jne	.L36
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L17:
	cmp	al, 5
	je	.L28
	mov	edx, -1024
	mov	r12d, -1152
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L26:
	mov	ecx, 1920
	mov	edx, -1920
	jmp	.L15
.L27:
	mov	ecx, -1920
	mov	edx, -1920
	jmp	.L15
.L28:
	mov	edx, -1920
	jmp	.L15
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Keyboard
	.def	CreateEntity_Keyboard;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Keyboard
CreateEntity_Keyboard:
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
	lea	rax, TaskDestructor_Keyboard[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, r9d
	mov	ebx, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 48
	movzx	ebx, bx
	mov	r8d, 8208
	lea	rcx, Task_Keyboard[rip]
	sal	ebx, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	xor	edx, edx
	mov	r8, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 128[rsp]
	mov	BYTE PTR 1[r8], 0
	mov	BYTE PTR [r8], al
	movzx	eax, BYTE PTR [rdi]
	movsx	r11w, BYTE PTR 4[rdi]
	movzx	ecx, BYTE PTR 5[rdi]
	add	ebx, eax
	mov	r10d, eax
	sal	ebx, 3
	sal	r11d, 3
	mov	DWORD PTR 4[r8], ebx
	movzx	eax, BYTE PTR 1[rdi]
	movzx	ebx, BYTE PTR 6[rdi]
	add	ebp, eax
	movsx	ax, BYTE PTR 3[rdi]
	mov	QWORD PTR 32[r8], rdi
	sal	ebp, 3
	lea	ebx, [r11+rbx*8]
	sal	eax, 3
	mov	DWORD PTR 8[r8], ebp
	test	ax, ax
	lea	ecx, [rax+rcx*8]
	movd	xmm0, eax
	cmovle	edx, eax
	xor	r12d, r12d
	test	r11w, r11w
	movzx	eax, r10b
	movd	xmm3, ecx
	pinsrw	xmm0, r11d, 1
	cmovle	r12d, r11d
	movd	xmm1, edx
	xor	r9d, r9d
	test	cx, cx
	cmovns	r9d, ecx
	xor	ebp, ebp
	test	bx, bx
	mov	edx, esi
	cmovns	ebp, ebx
	pinsrw	xmm3, ebx, 1
	mov	ah, dl
	movd	xmm2, r9d
	pinsrw	xmm1, r12d, 1
	mov	WORD PTR 40[r8], ax
	pinsrw	xmm2, ebp, 1
	punpckldq	xmm0, xmm3
	punpckldq	xmm1, xmm2
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 12[r8], xmm0
	mov	BYTE PTR [rdi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Keyboard_Vertical
	.def	CreateEntity_Keyboard_Vertical;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Keyboard_Vertical
CreateEntity_Keyboard_Vertical:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Keyboard
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Keyboard_Horizontal_PushLeft
	.def	CreateEntity_Keyboard_Horizontal_PushLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Keyboard_Horizontal_PushLeft
CreateEntity_Keyboard_Horizontal_PushLeft:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Keyboard
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Keyboard_Horizontal_PushRight
	.def	CreateEntity_Keyboard_Horizontal_PushRight;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Keyboard_Horizontal_PushRight
CreateEntity_Keyboard_Horizontal_PushRight:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 2
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Keyboard
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.globl	sKeyboardAccelTechnoBase
	.section .rdata,"dr"
	.align 8
sKeyboardAccelTechnoBase:
	.word	1920
	.word	1920
	.word	1280
	.word	2048
	.word	1280
	.word	2048
	.globl	sKeyboardAccelMusicPlant
	.align 8
sKeyboardAccelMusicPlant:
	.word	768
	.word	1024
	.word	1280
	.word	2048
	.word	1280
	.word	2048
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateNoteParticle;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
