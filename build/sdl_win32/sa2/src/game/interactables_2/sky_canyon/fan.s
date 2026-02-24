	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	CreateEntity_Fan;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateEntity_Fan
CreateEntity_Fan:
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
	lea	rax, TaskDestructor_IA_Fan_UpdateRegular[rip]
	mov	ebp, DWORD PTR 144[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r13d, edx
	mov	r12d, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 112
	lea	rcx, Task_IA_Fan_UpdateRegular[rip]
	call	TaskCreate
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 256
	sal	r9d, 3
	sal	r8d, 3
	mov	WORD PTR 88[rbx], bp
	mov	WORD PTR 102[rbx], ax
	movzx	eax, r13w
	movzx	edx, BYTE PTR [rsi]
	sal	eax, 5
	add	eax, edx
	mov	ecx, edx
	movzx	edx, r12w
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 80[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edx
	movzx	edx, BYTE PTR 5[rsi]
	sal	eax, 3
	mov	DWORD PTR 84[rbx], eax
	movzx	eax, BYTE PTR 6[rsi]
	sal	edx, 3
	lea	r10d, [r8+rdx]
	movzx	r8d, r8w
	mov	WORD PTR 100[rbx], dx
	xor	edx, edx
	lea	eax, [r9+rax*8]
	movzx	r10d, r10w
	movzx	r9d, r9w
	mov	QWORD PTR [rbx], rsi
	movzx	eax, ax
	mov	WORD PTR 8[rbx], r13w
	sal	rax, 16
	mov	WORD PTR 10[rbx], r12w
	or	rax, r10
	mov	WORD PTR 32[rbx], dx
	sal	rax, 16
	mov	DWORD PTR 58[rbx], 1152
	or	rax, r9
	mov	BYTE PTR 69[rbx], 0
	sal	rax, 16
	mov	DWORD PTR 72[rbx], -1
	or	rax, r8
	mov	r8d, 4351
	mov	DWORD PTR 48[rbx], 8192
	mov	QWORD PTR 92[rbx], rax
	movzx	eax, cl
	mov	ecx, edi
	mov	ah, cl
	xor	ecx, ecx
	mov	WORD PTR 65[rbx], r8w
	mov	WORD PTR 52[rbx], cx
	mov	ecx, 12
	mov	WORD PTR 12[rbx], ax
	call	VramMalloc
	mov	r9d, 591
	and	ebp, -3
	mov	BYTE PTR 64[rbx], 2
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r9w
	jne	.L2
	or	DWORD PTR 48[rbx], 1024
.L2:
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_IA_Fan_UpdateRegular;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_IA_Fan_UpdateRegular
TaskDestructor_IA_Fan_UpdateRegular:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	UpdateFanSpritePosition;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateFanSpritePosition
UpdateFanSpritePosition:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rcx]
	mov	r8d, DWORD PTR [rdx]
	lea	rbx, 16[rcx]
	test	WORD PTR 88[rcx], -3
	jne	.L6
	add	ax, WORD PTR 96[rcx]
	sub	eax, r8d
.L7:
	mov	WORD PTR 54[rcx], ax
	movzx	eax, WORD PTR 98[rcx]
	add	ax, WORD PTR 84[rcx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rcx], ax
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L6:
	add	ax, WORD PTR 92[rcx]
	sub	eax, r8d
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	UpdateFanSpeed.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateFanSpeed.part.0
UpdateFanSpeed.part.0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, rcx
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	shr	eax, 2
	imul	rax, rax, 1308942415
	shr	rax, 37
	imul	r8d, eax, 420
	mov	eax, ecx
	sub	eax, r8d
	cmp	eax, 59
	jbe	.L11
	cmp	eax, 119
	ja	.L10
	sub	eax, 60
	mov	ecx, 2290649225
	sal	eax, 8
	imul	rax, rcx
	shr	rax, 37
	mov	ecx, eax
	sar	ax, 4
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L11:
	xor	ecx, ecx
	xor	eax, eax
.L9:
	mov	BYTE PTR 66[rdx], al
	mov	eax, 591
	mov	WORD PTR 102[rdx], cx
	mov	WORD PTR 34[rdx], ax
	mov	BYTE PTR 64[rdx], 2
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	cmp	eax, 359
	ja	.L13
	mov	ecx, 256
	mov	eax, 16
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L13:
	sub	eax, 360
	mov	ecx, 2290649225
	sal	eax, 8
	imul	rax, rcx
	mov	ecx, 256
	shr	rax, 37
	sub	ecx, eax
	mov	eax, ecx
	sar	ax, 4
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	IsPlayerInFanRegion.part.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	IsPlayerInFanRegion.part.0.isra.0
IsPlayerInFanRegion.part.0.isra.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCamera[rip]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	xor	esi, esi
	sub	cx, WORD PTR [rbx]
	movsx	ecx, cx
	movsx	eax, r8w
	add	ecx, eax
	movzx	eax, WORD PTR 13[r11]
	sub	ax, WORD PTR [rbx]
	cwde
	cmp	ecx, eax
	jg	.L14
	movzx	r10d, WORD PTR 56[rsp]
	sub	r10d, r8d
	movzx	r8d, r10w
	add	ecx, r8d
	cmp	eax, ecx
	jg	.L14
	mov	ecx, DWORD PTR 4[rbx]
	movsx	eax, r9w
	sub	edx, ecx
	movsx	edx, dx
	add	edx, eax
	movzx	eax, WORD PTR 17[r11]
	sub	eax, ecx
	cwde
	cmp	edx, eax
	jg	.L14
	movzx	ecx, WORD PTR 64[rsp]
	xor	esi, esi
	sub	ecx, r9d
	movzx	ecx, cx
	add	edx, ecx
	cmp	eax, edx
	setle	sil
.L14:
	mov	eax, esi
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IA_Fan_UpdateRegular;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IA_Fan_UpdateRegular
Task_IA_Fan_UpdateRegular:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR 24[r12]
	mov	esi, DWORD PTR 80[rbx]
	mov	ebp, DWORD PTR 84[rbx]
	movsx	edi, WORD PTR 96[rbx]
	test	BYTE PTR 36[rax], -128
	jne	.L20
	movzx	eax, WORD PTR 98[rbx]
	movzx	r9d, WORD PTR 94[rbx]
	mov	edx, ebp
	mov	ecx, esi
	movzx	r8d, WORD PTR 92[rbx]
	mov	WORD PTR 32[rsp], di
	mov	WORD PTR 40[rsp], ax
	call	IsPlayerInFanRegion.part.0.isra.0
	test	eax, eax
	je	.L20
	lea	rax, Task_IA_SmallPropeller_UpdateInFanRegion[rip]
	mov	QWORD PTR 40[r12], rax
.L20:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	si, WORD PTR [rax]
	mov	ecx, DWORD PTR 4[rax]
	movsx	eax, si
	add	edi, eax
	cmp	edi, -128
	jl	.L21
	movsx	edx, WORD PTR 92[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L21
	movsx	eax, WORD PTR 98[rbx]
	sub	ebp, ecx
	movsx	ebp, bp
	add	eax, ebp
	cmp	eax, -128
	jl	.L21
	movsx	eax, WORD PTR 94[rbx]
	add	eax, ebp
	cmp	eax, 368
	jg	.L21
	movzx	eax, WORD PTR 88[rbx]
	sub	eax, 2
	cmp	ax, 1
	jbe	.L28
	mov	eax, 256
	mov	WORD PTR 102[rbx], ax
.L24:
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateFanSpritePosition
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	rcx, r12
	mov	BYTE PTR [rax], dl
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, rbx
	call	UpdateFanSpeed.part.0
	jmp	.L24
	.seh_endproc
	.p2align 4
	.globl	Task_IA_SmallPropeller_UpdateInFanRegion
	.def	Task_IA_SmallPropeller_UpdateInFanRegion;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_IA_SmallPropeller_UpdateInFanRegion
Task_IA_SmallPropeller_UpdateInFanRegion:
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
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR [rax]
	mov	r8d, DWORD PTR 12[rcx]
	mov	rbx, QWORD PTR 24[rdi]
	movzx	esi, WORD PTR 88[rbx]
	mov	r10d, DWORD PTR 80[rbx]
	mov	r9d, esi
	and	r9w, -3
	jne	.L30
	movsx	edx, WORD PTR 96[rbx]
	add	edx, r10d
	sal	edx, 8
	sub	edx, r8d
.L31:
	movzx	r11d, WORD PTR 100[rbx]
	mov	eax, r11d
	sal	eax, 8
	sub	eax, edx
	cdq
	idiv	r11d
	mov	edx, 256
	cmp	eax, edx
	cmovg	eax, edx
	xor	edx, edx
	test	eax, eax
	cmovs	eax, edx
	movsx	edx, WORD PTR 102[rbx]
	sal	eax, 4
	cwde
	imul	eax, edx
	movzx	edx, WORD PTR 20[rcx]
	sar	eax, 8
	mov	WORD PTR 104[rbx], ax
	test	r9w, r9w
	jne	.L32
	test	dx, dx
	js	.L65
	cwde
	sub	r8d, eax
	movsx	eax, WORD PTR 96[rbx]
	mov	DWORD PTR 12[rcx], r8d
	lea	eax, -48[r10+rax]
	sal	eax, 8
	cmp	si, 2
	je	.L37
	cmp	r8d, eax
	jle	.L37
	mov	DWORD PTR 12[rcx], eax
.L37:
	mov	eax, DWORD PTR 36[rcx]
	test	BYTE PTR 102[rcx], 32
	je	.L36
	or	eax, 1
	neg	WORD PTR 24[rcx]
	mov	DWORD PTR 36[rcx], eax
	test	al, -128
	je	.L66
	.p2align 4,,10
	.p2align 3
.L42:
	lea	rax, Task_IA_Fan_UpdateRegular[rip]
	sub	esi, 2
	mov	QWORD PTR 40[rdi], rax
	cmp	si, 1
	ja	.L44
.L67:
	mov	rcx, rbx
	call	UpdateFanSpeed.part.0
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateFanSpritePosition
	.p2align 4,,10
	.p2align 3
.L65:
	movzx	eax, WORD PTR 24[rcx]
	sub	edx, 64
	sub	eax, 64
	cmp	BYTE PTR 98[rcx], 0
	jne	.L64
.L39:
	mov	r8d, -2304
	cmp	ax, r8w
	cmovl	eax, r8d
	mov	r8d, 2304
	cmp	ax, r8w
	cmovg	eax, r8d
	mov	r8d, -2304
	cmp	dx, r8w
	cmovl	edx, r8d
	mov	r8d, 2304
	cmp	dx, r8w
	cmovg	edx, r8d
.L40:
	mov	WORD PTR 20[rcx], dx
	mov	WORD PTR 24[rcx], ax
	mov	eax, DWORD PTR 36[rcx]
.L36:
	test	al, -128
	jne	.L42
.L66:
	movzx	eax, WORD PTR 98[rbx]
	movzx	r9d, WORD PTR 94[rbx]
	mov	ecx, r10d
	movzx	r8d, WORD PTR 92[rbx]
	mov	edx, DWORD PTR 84[rbx]
	mov	WORD PTR 40[rsp], ax
	movzx	eax, WORD PTR 96[rbx]
	mov	WORD PTR 32[rsp], ax
	call	IsPlayerInFanRegion.part.0.isra.0
	test	eax, eax
	je	.L42
	sub	esi, 2
	cmp	si, 1
	jbe	.L67
.L44:
	mov	eax, 256
	mov	rcx, rbx
	mov	WORD PTR 102[rbx], ax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateFanSpritePosition
	.p2align 4,,10
	.p2align 3
.L32:
	test	dx, dx
	jle	.L38
	movzx	eax, WORD PTR 24[rcx]
	add	edx, 64
	add	eax, 64
	cmp	BYTE PTR 98[rcx], 0
	je	.L39
.L64:
	mov	r8d, -3840
	cmp	ax, r8w
	cmovl	eax, r8d
	mov	r8d, 3840
	cmp	ax, r8w
	cmovg	eax, r8d
	mov	r8d, -3840
	cmp	dx, r8w
	cmovl	edx, r8d
	mov	r8d, 3840
	cmp	dx, r8w
	cmovg	edx, r8d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L30:
	movsx	eax, WORD PTR 92[rbx]
	mov	edx, r8d
	add	eax, r10d
	sal	eax, 8
	sub	edx, eax
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L38:
	movsx	edx, WORD PTR 92[rbx]
	cwde
	add	eax, r8d
	lea	edx, 48[r10+rdx]
	mov	DWORD PTR 12[rcx], eax
	sal	edx, 8
	cmp	eax, edx
	jge	.L41
	cmp	si, 3
	je	.L41
	mov	DWORD PTR 12[rcx], edx
.L41:
	mov	eax, DWORD PTR 36[rcx]
	test	BYTE PTR 102[rcx], 16
	je	.L36
	and	eax, -2
	neg	WORD PTR 24[rcx]
	mov	DWORD PTR 36[rcx], eax
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	DestroyTask_Interactable087
	.def	DestroyTask_Interactable087;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyTask_Interactable087
DestroyTask_Interactable087:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	movzx	edx, BYTE PTR 12[rcx]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Fan_Left
	.def	CreateEntity_Fan_Left;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Fan_Left
CreateEntity_Fan_Left:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Fan
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Fan_Right
	.def	CreateEntity_Fan_Right;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Fan_Right
CreateEntity_Fan_Right:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Fan
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Fan_Left_Periodic
	.def	CreateEntity_Fan_Left_Periodic;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Fan_Left_Periodic
CreateEntity_Fan_Left_Periodic:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 2
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Fan
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Fan_Right_Periodic
	.def	CreateEntity_Fan_Right_Periodic;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Fan_Right_Periodic
CreateEntity_Fan_Right_Periodic:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 3
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Fan
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	SetTaskMain_UpdateRegular
	.def	SetTaskMain_UpdateRegular;	.scl	2;	.type	32;	.endef
	.seh_proc	SetTaskMain_UpdateRegular
SetTaskMain_UpdateRegular:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_IA_Fan_UpdateRegular[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
