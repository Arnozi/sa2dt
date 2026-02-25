	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_MonMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MonMain
Task_MonMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	ecx, edx
	sub	cx, WORD PTR [rax]
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L8
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L3
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L3:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L8:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 12[rax]
	lea	r9d, -54527[rcx]
	cmp	r9d, edx
	jg	.L5
	lea	r9d, 54527[rcx]
	cmp	edx, r9d
	jg	.L5
	mov	eax, DWORD PTR 16[rax]
	lea	r9d, -12799[r8]
	cmp	r9d, eax
	jg	.L5
	lea	r9d, 12799[r8]
	cmp	eax, r9d
	jg	.L5
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Mon_2[rip]
	mov	r9d, -254
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 478
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], r9w
.L5:
	mov	eax, DWORD PTR 48[rbx]
	mov	r9d, eax
	or	ah, 4
	and	r9d, -1025
	cmp	ecx, edx
	mov	edx, r8d
	cmovg	eax, r9d
	mov	DWORD PTR 48[rbx], eax
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Mon_2;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Mon_2
Task_Mon_2:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	ecx, edx
	sub	cx, WORD PTR [rax]
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L15
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L12
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L13
.L12:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L15:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	mov	ecx, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L14
	mov	rax, QWORD PTR .LC2[rip]
	mov	edx, -255
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 88[rbx], rax
	mov	eax, 478
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Mon_3[rip]
	mov	QWORD PTR 40[rax], rsi
.L14:
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Mon_3;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Mon_3
Task_Mon_3:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 80[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	lea	r8d, 52[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	DWORD PTR 92[rbx], r8d
	add	r8d, DWORD PTR 88[rbx]
	mov	ecx, edx
	mov	DWORD PTR 88[rbx], r8d
	add	r8d, DWORD PTR 84[rbx]
	sub	cx, WORD PTR [rax]
	sar	r8d, 8
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L21
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L18
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L19
.L18:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L21:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L19:
	mov	edx, DWORD PTR 88[rbx]
	test	edx, edx
	js	.L20
	mov	eax, 478
	mov	ecx, -253
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Mon_4[rip]
	mov	WORD PTR 64[rbx], cx
	mov	QWORD PTR 40[rax], rsi
.L20:
	mov	ecx, DWORD PTR 80[rbx]
	add	edx, DWORD PTR 84[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Mon_4;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Mon_4
Task_Mon_4:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	ecx, edx
	sub	cx, WORD PTR [rax]
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L30
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L24
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L25
.L24:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L30:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L25:
	mov	ecx, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L26
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 80[rbx]
	mov	eax, DWORD PTR 12[rcx]
	lea	r8d, -54527[rdx]
	cmp	r8d, eax
	jg	.L27
	lea	r8d, 54527[rdx]
	cmp	eax, r8d
	jg	.L27
	mov	r8d, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 16[rcx]
	lea	r9d, -12799[r8]
	cmp	r9d, ecx
	jg	.L27
	add	r8d, 12799
	cmp	ecx, r8d
	jg	.L27
	mov	ecx, DWORD PTR 48[rbx]
	mov	r8d, ecx
	or	ch, 4
	and	r8d, -1025
	cmp	edx, eax
	mov	eax, r8d
	mov	r8d, -254
	cmovle	eax, ecx
	mov	ecx, 478
	mov	WORD PTR 64[rbx], r8w
	mov	WORD PTR 34[rbx], cx
	mov	DWORD PTR 48[rbx], eax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Mon_2[rip]
	mov	QWORD PTR 40[rax], rsi
.L26:
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L27:
	mov	eax, 478
	mov	edx, -256
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_MonMain[rip]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rsi
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Mon
	.def	CreateEntity_Mon;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Mon
CreateEntity_Mon:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16400
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_MonMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 10[rbx], bp
	movzx	ebp, bp
	mov	WORD PTR 8[rbx], si
	sal	ebp, 5
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, al
	mov	dh, cl
	mov	WORD PTR 12[rbx], dx
	movzx	edx, si
	movsx	r9d, BYTE PTR 3[rdi]
	sal	edx, 5
	add	edx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r8d, r9d
	sal	edx, 11
	neg	r8d
	mov	DWORD PTR 80[rbx], edx
	movzx	ecx, BYTE PTR 1[rdi]
	or	r8d, r9d
	sar	edx, 8
	mov	r9d, 8
	shr	r8d, 31
	add	ecx, ebp
	sal	ecx, 11
	mov	DWORD PTR 84[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	DWORD PTR 54[rbx], 0
	mov	ecx, 25
	sal	eax, 8
	add	DWORD PTR 84[rbx], eax
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 58[rbx], 1152
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	rax, QWORD PTR .LC2[rip]
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	QWORD PTR 88[rbx], rax
	mov	DWORD PTR 32[rbx], 31326208
	mov	WORD PTR 64[rbx], dx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.long	0
	.long	-1408
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
