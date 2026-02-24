	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
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
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	r14, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	edi, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	r13, 16[rbx]
	mov	r12, QWORD PTR [rbx]
	movzx	esi, WORD PTR 10[rbx]
	sal	edi, 5
	add	edi, eax
	movzx	eax, BYTE PTR 1[r12]
	sal	esi, 5
	lea	ecx, 0[0+rdi*8]
	add	esi, eax
	mov	eax, ecx
	sub	ax, WORD PTR [rdx]
	lea	r15d, 0[0+rsi*8]
	mov	WORD PTR 54[rbx], ax
	mov	r10d, r15d
	sub	r10w, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], r10w
	test	DWORD PTR 36[r14], 4194432
	je	.L15
.L2:
	sub	ax, -128
	cmp	ax, 682
	ja	.L11
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L10
.L11:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
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
.L3:
	mov	rcx, r14
	call	Player_TransitionCancelFlyingAndBoost
	movzx	ecx, WORD PTR 22[r14]
	xor	edx, edx
	mov	r8d, DWORD PTR 48[rbx]
	mov	WORD PTR 80[rbx], dx
	movzx	edx, WORD PTR 20[r14]
	mov	eax, ecx
	neg	ax
	cmovs	eax, ecx
	mov	ecx, edx
	neg	cx
	cmovs	ecx, edx
	add	eax, ecx
	mov	ecx, 384
	cmp	ax, cx
	cmovle	ecx, eax
	cmp	ax, 223
	mov	eax, 224
	cmovg	eax, ecx
	mov	ecx, DWORD PTR 16[r14]
	mov	WORD PTR 82[rbx], ax
	sar	ecx, 8
	mov	eax, DWORD PTR 36[r14]
	test	dx, dx
	jle	.L6
	and	eax, -2
	cmp	r15d, ecx
	jge	.L7
	or	r8d, 1024
	mov	ecx, 45
	xor	edx, edx
.L8:
	mov	DWORD PTR 48[rbx], r8d
	sal	edi, 11
	sal	esi, 11
	mov	WORD PTR 108[r14], cx
	mov	ecx, 155
	mov	BYTE PTR 84[rbx], dl
	mov	DWORD PTR 36[r14], eax
	xor	eax, eax
	mov	WORD PTR 114[r14], ax
	mov	DWORD PTR 12[r14], edi
	mov	DWORD PTR 16[r14], esi
	mov	BYTE PTR 116[r14], 1
	call	m4aSongNumStart
	mov	rax, QWORD PTR 0[rbp]
	mov	BYTE PTR 106[r14], 0
	lea	rdx, Task_Rotating[rip]
	or	DWORD PTR 36[r14], 4194304
	mov	QWORD PTR 40[rax], rdx
.L10:
	mov	rcx, r13
	call	UpdateSpriteAnimation
	mov	rcx, r13
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
.L15:
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	edx, ecx
	mov	r8d, r15d
	mov	QWORD PTR 32[rsp], r14
	mov	rcx, r13
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L3
	movzx	eax, WORD PTR 54[rbx]
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L6:
	or	eax, 1
	cmp	r15d, ecx
	jge	.L9
	and	r8d, -1025
	mov	ecx, 45
	mov	edx, 2
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L7:
	and	r8d, -1025
	mov	ecx, 46
	mov	edx, 1
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L9:
	or	r8d, 1024
	mov	ecx, 46
	mov	edx, 3
	jmp	.L8
	.seh_endproc
	.p2align 4
	.def	Task_AfterJump;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AfterJump
Task_AfterJump:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ebx, 224
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r9]
	movzx	ecx, WORD PTR 8[rdx]
	movzx	eax, BYTE PTR 12[rdx]
	mov	r11, QWORD PTR [rdx]
	movzx	r8d, WORD PTR 10[rdx]
	sal	ecx, 5
	mov	r10d, eax
	add	ecx, eax
	movzx	eax, BYTE PTR 1[r11]
	sal	r8d, 5
	sal	ecx, 3
	add	r8d, eax
	movzx	eax, WORD PTR 82[rdx]
	sal	r8d, 3
	sub	eax, 1
	cmp	ax, bx
	cmovl	eax, ebx
	mov	ebx, ecx
	sub	bx, WORD PTR [rsi]
	sub	r8w, WORD PTR 4[rsi]
	lea	ecx, 128[rbx]
	mov	WORD PTR 82[rdx], ax
	add	ax, WORD PTR 80[rdx]
	and	ax, 16368
	mov	WORD PTR 80[rdx], ax
	sar	ax, 4
	movzx	eax, ax
	imul	eax, eax, 49345
	shr	eax, 22
	cmp	cx, 682
	seta	cl
	cmp	r8w, -128
	setl	sil
	or	ecx, esi
	cmp	r8w, 368
	setg	sil
	or	ecx, esi
	mov	esi, 546
	mov	WORD PTR 34[rdx], si
	cmp	ax, 12
	je	.L17
	mov	BYTE PTR 64[rdx], al
	mov	BYTE PTR 65[rdx], -1
	mov	WORD PTR 54[rdx], bx
	mov	WORD PTR 56[rdx], r8w
	test	cl, cl
	je	.L18
.L21:
	mov	rcx, r9
	mov	BYTE PTR [r11], r10b
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L18:
	test	ax, ax
	jne	.L20
	lea	rax, Task_Idle[rip]
	mov	DWORD PTR 80[rdx], 0
	mov	QWORD PTR 40[r9], rax
.L20:
	lea	rbx, 16[rdx]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L17:
	mov	eax, -245
	mov	WORD PTR 54[rdx], bx
	mov	WORD PTR 64[rdx], ax
	mov	WORD PTR 56[rdx], r8w
	test	cl, cl
	jne	.L21
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	Task_Rotating
	.def	Task_Rotating;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Rotating
Task_Rotating:
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
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	r10, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[r10]
	movzx	ecx, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	movzx	edx, WORD PTR 10[rbx]
	sal	ecx, 5
	mov	r9d, eax
	add	ecx, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	edx, 5
	lea	r8d, 0[0+rcx*8]
	sub	r8w, WORD PTR [r11]
	add	edx, eax
	movzx	eax, WORD PTR 82[rbx]
	add	ax, WORD PTR 80[rbx]
	mov	WORD PTR 54[rbx], r8w
	and	ax, 16368
	mov	WORD PTR 80[rbx], ax
	sar	ax, 4
	mov	esi, eax
	lea	eax, 0[0+rdx*8]
	sub	ax, WORD PTR 4[r11]
	mov	WORD PTR 56[rbx], ax
	test	BYTE PTR 36[rdi], -128
	jne	.L37
	mov	r10, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rdi]
	and	ax, WORD PTR [r10]
	jne	.L38
	movzx	eax, si
	mov	r9d, 546
	sal	ecx, 11
	mov	BYTE PTR 65[rbx], -1
	imul	eax, eax, 48771
	sal	edx, 11
	mov	WORD PTR 34[rbx], r9w
	mov	DWORD PTR 12[rdi], ecx
	mov	DWORD PTR 16[rdi], edx
	shr	eax, 22
	mov	DWORD PTR 20[rdi], 0
	mov	BYTE PTR 64[rbx], al
	mov	WORD PTR 114[rdi], ax
	mov	BYTE PTR 116[rdi], 1
.L32:
	sub	r8w, -128
	cmp	r8w, 682
	ja	.L33
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L34
.L33:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L34:
	mov	rcx, r12
	call	UpdateSpriteAnimation
.L36:
	mov	rcx, r12
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L38:
	mov	BYTE PTR 117[rdi], 5
	mov	rcx, rdi
	mov	BYTE PTR 0[r13], r9b
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 9
	mov	rcx, rdi
	call	Player_HandleSpriteYOffsetChange
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, Task_AfterJump[rip]
	mov	r11d, 2310
	and	DWORD PTR 36[rdi], -4194305
	mov	QWORD PTR 40[rax], rdx
	movzx	eax, BYTE PTR 84[rbx]
	mov	WORD PTR 26[rdi], r11w
	cmp	al, 2
	je	.L26
	ja	.L27
	test	al, al
	je	.L39
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, rsi
	lea	edx, 32[rsi]
	and	eax, 1023
	and	edx, 1023
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	add	DWORD PTR 12[rdi], eax
	lea	rax, 256[rsi]
	and	eax, 2047
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	sub	DWORD PTR 16[rdi], eax
	lea	eax, 256[rdx]
.L31:
	cdqe
	movsx	edx, WORD PTR [r8+rdx*2]
	mov	r10d, 50
	mov	BYTE PTR 116[rdi], 1
	movsx	ecx, WORD PTR [r8+rax*2]
	movzx	r8d, WORD PTR 54[rbx]
	mov	WORD PTR 108[rdi], r10w
	add	edx, edx
	add	ecx, ecx
	movsx	rax, ecx
	sar	ecx, 31
	imul	rax, rax, 2021161081
	sar	rax, 35
	sub	eax, ecx
	mov	WORD PTR 20[rdi], ax
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 2021161081
	sar	rax, 35
	sub	eax, edx
	mov	WORD PTR 22[rdi], ax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L37:
	lea	rax, Task_AfterJump[rip]
	mov	QWORD PTR 40[r10], rax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L27:
	cmp	al, 3
	jne	.L40
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, rsi
	mov	edx, 544
	and	eax, 1023
	sub	edx, esi
	movsx	eax, WORD PTR [r8+rax*2]
	and	edx, 1023
	sar	eax
	sub	DWORD PTR 12[rdi], eax
	lea	rax, 256[rsi]
	and	eax, 2047
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	sub	DWORD PTR 16[rdi], eax
	lea	eax, 256[rdx]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L26:
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, rsi
	lea	edx, 480[rsi]
	and	eax, 1023
	and	edx, 1023
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	sub	DWORD PTR 12[rdi], eax
	lea	rax, 256[rsi]
	and	eax, 2047
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	add	DWORD PTR 16[rdi], eax
	lea	eax, 256[rdx]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L39:
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, rsi
	mov	edx, 32
	and	eax, 1023
	sub	edx, esi
	movsx	eax, WORD PTR [r8+rax*2]
	and	edx, 1023
	sar	eax
	add	DWORD PTR 12[rdi], eax
	lea	rax, 256[rsi]
	and	eax, 2047
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax
	add	DWORD PTR 16[rdi], eax
	lea	eax, 256[rdx]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L40:
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, 256
	xor	edx, edx
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_RotatingHandle
	.def	CreateEntity_RotatingHandle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_RotatingHandle
CreateEntity_RotatingHandle:
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
	cmp	BYTE PTR 3[rcx], 0
	mov	rsi, rcx
	mov	r12d, edx
	mov	edi, r8d
	mov	ebp, r9d
	js	.L41
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	mov	edx, 88
	lea	rcx, Task_Idle[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, ebp
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 10[rbx], di
	movzx	edi, di
	mov	WORD PTR 8[rbx], r12w
	sal	edi, 5
	mov	QWORD PTR [rbx], rsi
	movzx	edx, BYTE PTR [rsi]
	mov	DWORD PTR 80[rbx], 0
	movzx	eax, dl
	mov	BYTE PTR 84[rbx], 0
	mov	ah, cl
	mov	ecx, 9
	mov	WORD PTR 12[rbx], ax
	movzx	eax, r12w
	sal	eax, 5
	add	eax, edx
	sal	eax, 3
	mov	WORD PTR 54[rbx], ax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [rsi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 35782656
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
.L41:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
