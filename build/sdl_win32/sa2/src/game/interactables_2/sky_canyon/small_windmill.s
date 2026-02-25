	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable_SkyCanyon_SmallSpinnyWindmill;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable_SkyCanyon_SmallSpinnyWindmill
TaskDestructor_Interactable_SkyCanyon_SmallSpinnyWindmill:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_SmallSpinnyWindmill;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SmallSpinnyWindmill
Task_SmallSpinnyWindmill:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	r12d, DWORD PTR [rsi]
	mov	r13d, DWORD PTR 4[rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r14d, r12d
	mov	r15d, r13d
	mov	r10d, DWORD PTR 84[rbx]
	mov	r9d, DWORD PTR 88[rbx]
	mov	eax, r10d
	mov	edx, r9d
	test	BYTE PTR 36[rdi], -128
	jne	.L6
	mov	r8d, DWORD PTR 12[rdi]
	mov	r11d, DWORD PTR 16[rdi]
	mov	ecx, r10d
	sar	r8d, 8
	sar	r11d, 8
	mov	DWORD PTR 44[rsp], r8d
	mov	r8d, r9d
	sub	cx, WORD PTR 44[rsp]
	sub	r8d, r11d
	movsx	ecx, cx
	movsx	r8d, r8w
	imul	ecx, ecx
	imul	r8d, r8d
	add	ecx, r8d
	cmp	ecx, 1024
	jle	.L33
.L6:
	mov	BYTE PTR 81[rbx], 0
.L15:
	add	ax, 160
	sub	eax, r14d
	cmp	ax, 746
	ja	.L25
	add	dx, 160
	sub	edx, r15d
	cmp	dx, 560
	ja	.L25
	lea	rdi, 16[rbx]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR [rsi]
	mov	rcx, rdi
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 88[rbx]
	and	DWORD PTR 48[rbx], -3073
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 3072
	mov	rcx, rdi
	add	rsp, 56
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
.L25:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 56
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
.L33:
	movzx	r8d, WORD PTR 44[rsp]
	sub	r10d, r12d
	movzx	ecx, BYTE PTR 80[rbx]
	sub	r9d, r13d
	sub	r11d, r13d
	sub	r8d, r12d
	cmp	r10w, r8w
	jl	.L7
	cmp	r9w, r11w
	jl	.L8
	and	ecx, 1
	je	.L6
	movzx	edx, WORD PTR 20[rdi]
	movzx	r8d, WORD PTR 22[rdi]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, r8d
	neg	dx
	cmovs	edx, r8d
	cmp	dx, ax
	mov	eax, 2
	cmovnb	ecx, eax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L7:
	cmp	r9w, r11w
	jl	.L12
	and	ecx, 2
	je	.L6
	movzx	edx, WORD PTR 20[rdi]
	movzx	ecx, WORD PTR 22[rdi]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, ax
	setb	cl
	add	ecx, 3
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L12:
	and	ecx, 8
	je	.L6
	movzx	edx, WORD PTR 20[rdi]
	movzx	ecx, WORD PTR 22[rdi]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, ax
	setnb	cl
	add	ecx, 7
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	and	ecx, 4
	je	.L6
	movzx	edx, WORD PTR 20[rdi]
	movzx	ecx, WORD PTR 22[rdi]
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	mov	edx, ecx
	neg	dx
	cmovs	edx, ecx
	cmp	dx, ax
	setb	cl
	add	ecx, 5
.L10:
	mov	BYTE PTR 81[rbx], cl
	call	Player_SetMovestate_IsInScriptedSequence
	mov	ecx, 4
	or	DWORD PTR 36[rdi], 4194304
	mov	WORD PTR 108[rdi], cx
	mov	ecx, 109
	call	m4aSongNumStart
	movzx	ecx, BYTE PTR 81[rbx]
	cmp	cl, 6
	ja	.L16
	cmp	cl, 4
	ja	.L17
	cmp	cl, 2
	jbe	.L18
	mov	BYTE PTR 82[rbx], -32
	mov	edx, 896
	mov	eax, 1152
	mov	r8d, -32
.L19:
	mov	BYTE PTR 83[rbx], r8b
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movsx	rdx, edx
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 6
	cwde
	lea	r9d, [rax+rax*2]
	mov	eax, DWORD PTR 84[rbx]
	sal	eax, 8
	lea	eax, [rax+r9*8]
	mov	DWORD PTR 12[rdi], eax
	movzx	eax, WORD PTR [r8+rdx*2]
	sar	ax, 6
	cwde
	lea	edx, [rax+rax*2]
	mov	eax, DWORD PTR 88[rbx]
	sal	eax, 8
	lea	eax, [rax+rdx*8]
	mov	DWORD PTR 16[rdi], eax
	cmp	cl, 8
	ja	.L23
	mov	eax, 1
	sal	rax, cl
	test	eax, 340
	jne	.L24
	test	al, -86
	je	.L23
	mov	edx, 585
	mov	BYTE PTR 64[rbx], 0
	mov	WORD PTR 34[rbx], dx
.L23:
	mov	BYTE PTR 66[rbx], 32
	lea	rcx, 16[rbx]
	lea	rdi, Task_RotateSequence[rip]
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 0[rbp]
	movzx	r14d, WORD PTR [rsi]
	movzx	edx, WORD PTR 88[rbx]
	movzx	r15d, WORD PTR 4[rsi]
	mov	QWORD PTR 40[rax], rdi
	movzx	eax, WORD PTR 84[rbx]
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	mov	eax, 585
	mov	BYTE PTR 64[rbx], 1
	mov	WORD PTR 34[rbx], ax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L16:
	lea	eax, -7[rcx]
	cmp	al, 1
	ja	.L21
	mov	BYTE PTR 82[rbx], 32
	mov	edx, 128
	mov	eax, 384
	mov	r8d, 32
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L18:
	test	cl, cl
	je	.L21
	mov	BYTE PTR 82[rbx], -96
	mov	edx, 640
	mov	eax, 896
	mov	r8d, -96
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L17:
	mov	BYTE PTR 82[rbx], 96
	mov	edx, 384
	mov	eax, 640
	mov	r8d, 96
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L21:
	movzx	edx, BYTE PTR 82[rbx]
	mov	r8d, edx
	lea	eax, 256[0+rdx*4]
	lea	edx, 0[0+rdx*4]
	jmp	.L19
	.seh_endproc
	.p2align 4
	.def	SlowWindmillToStop;	.scl	3;	.type	32;	.endef
	.seh_proc	SlowWindmillToStop
SlowWindmillToStop:
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
	mov	eax, DWORD PTR 48[rbx]
	lea	rsi, 16[rbx]
	test	ah, 64
	je	.L36
	and	ah, -65
	mov	edx, -1
	mov	BYTE PTR 65[rbx], -1
	lea	rsi, 16[rbx]
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, BYTE PTR 66[rbx]
	mov	WORD PTR 62[rbx], dx
	sub	eax, 8
	mov	BYTE PTR 66[rbx], al
	test	al, al
	je	.L39
.L36:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 84[rbx]
	mov	rcx, rsi
	and	DWORD PTR 48[rbx], -3073
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 88[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 3072
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L39:
	mov	eax, 585
	mov	BYTE PTR 64[rbx], 2
	mov	rcx, rsi
	mov	WORD PTR 34[rbx], ax
	mov	BYTE PTR 66[rbx], 16
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_SmallSpinnyWindmill[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L36
	.seh_endproc
	.p2align 4
	.def	Task_RotateSequence;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_RotateSequence
Task_RotateSequence:
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
	movzx	ecx, BYTE PTR 81[rbx]
	movzx	eax, BYTE PTR 83[rbx]
	cmp	cl, 8
	ja	.L41
	mov	edx, 1
	sal	rdx, cl
	test	edx, 340
	jne	.L42
	and	edx, 170
	je	.L41
	add	eax, 8
	mov	BYTE PTR 83[rbx], al
.L41:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rsi], -128
	jne	.L43
	movzx	edx, al
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, 256[0+rdx*4]
	movsx	rcx, edx
	sub	edx, 256
	movzx	ecx, WORD PTR [r8+rcx*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	cx, 6
	movsx	ecx, cx
	sar	dx, 6
	lea	r9d, [rcx+rcx*2]
	mov	ecx, DWORD PTR 84[rbx]
	movsx	edx, dx
	sal	ecx, 8
	lea	ecx, [rcx+r9*8]
	mov	DWORD PTR 12[rsi], ecx
	lea	ecx, [rdx+rdx*2]
	mov	edx, DWORD PTR 88[rbx]
	sal	edx, 8
	lea	edx, [rdx+rcx*8]
	mov	DWORD PTR 16[rsi], edx
.L43:
	cmp	al, BYTE PTR 82[rbx]
	je	.L58
.L44:
	mov	eax, DWORD PTR 48[rbx]
	test	ah, 64
	je	.L51
	and	ah, -65
	mov	BYTE PTR 65[rbx], -1
	mov	DWORD PTR 48[rbx], eax
	mov	eax, -1
	mov	WORD PTR 62[rbx], ax
.L51:
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 84[rbx]
	mov	rcx, rsi
	and	DWORD PTR 48[rbx], -3073
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 88[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 3072
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L42:
	sub	eax, 8
	mov	BYTE PTR 83[rbx], al
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L58:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	eax, DWORD PTR 36[rsi]
	test	al, -128
	jne	.L45
	mov	ecx, eax
	mov	BYTE PTR 117[rsi], 5
	and	ecx, -4194305
	cmp	BYTE PTR 81[rbx], 8
	mov	DWORD PTR 36[rsi], ecx
	ja	.L45
	movzx	edx, BYTE PTR 81[rbx]
	lea	r8, .L47[rip]
	movsx	rdx, DWORD PTR [r8+rdx*4]
	add	rdx, r8
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L47:
	.long	.L45-.L47
	.long	.L50-.L47
	.long	.L49-.L47
	.long	.L46-.L47
	.long	.L50-.L47
	.long	.L49-.L47
	.long	.L48-.L47
	.long	.L48-.L47
	.long	.L46-.L47
	.text
	.p2align 4,,10
	.p2align 3
.L49:
	or	ecx, 1
	mov	DWORD PTR 20[rsi], 63488
	mov	DWORD PTR 36[rsi], ecx
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, SlowWindmillToStop[rip]
	mov	BYTE PTR 83[rbx], 0
	mov	QWORD PTR 40[rax], rdi
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L48:
	mov	DWORD PTR 20[rsi], 134217728
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	and	eax, -4194306
	mov	DWORD PTR 20[rsi], 2048
	mov	DWORD PTR 36[rsi], eax
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L50:
	mov	DWORD PTR 20[rsi], -134217728
	jmp	.L45
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SmallWindmill
	.def	CreateEntity_SmallWindmill;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SmallWindmill
CreateEntity_SmallWindmill:
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
	lea	rax, TaskDestructor_Interactable_SkyCanyon_SmallSpinnyWindmill[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r12d, edx
	mov	ebp, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_SmallSpinnyWindmill[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 3[rsi]
	mov	BYTE PTR 80[rbx], al
	movzx	eax, r12w
	movzx	edx, BYTE PTR [rsi]
	sal	eax, 5
	add	eax, edx
	mov	ecx, edx
	movzx	edx, bp
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 84[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	WORD PTR 8[rbx], r12w
	add	eax, edx
	mov	edx, edi
	mov	WORD PTR 10[rbx], bp
	sal	eax, 3
	mov	QWORD PTR [rbx], rsi
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, cl
	mov	ecx, 4351
	mov	ah, dl
	xor	edx, edx
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 32
	mov	WORD PTR 12[rbx], ax
	xor	eax, eax
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 32[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 585
	mov	BYTE PTR 64[rbx], 2
	lea	rcx, 16[rbx]
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
	call	UpdateSpriteAnimation
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
