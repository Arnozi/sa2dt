	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_807B7BC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807B7BC
sub_807B7BC:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	xor	eax, eax
	mov	BYTE PTR 117[rdx], 5
	movzx	r8d, BYTE PTR 92[rcx]
	and	DWORD PTR 36[rdx], -4194305
	lea	r9d, -65[r8]
	cmp	r9b, 126
	jbe	.L2
	mov	eax, 64
	sub	eax, r8d
	mov	BYTE PTR 92[rcx], al
	movzx	eax, al
	neg	eax
	sal	eax, 3
.L2:
	mov	WORD PTR 22[rdx], ax
	movzx	eax, WORD PTR 88[rcx]
	sar	ax
	mov	WORD PTR 20[rdx], ax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_GiantPropellerIdle[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_GiantPropeller;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_GiantPropeller
TaskDestructor_GiantPropeller:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_807B530;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807B530
sub_807B530:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rcx]
	test	BYTE PTR 36[rbx], -128
	je	.L7
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	lea	rax, Task_GiantPropellerIdle[rip]
	mov	edx, DWORD PTR 84[rsi]
	mov	QWORD PTR 40[rcx], rax
	mov	eax, DWORD PTR 80[rsi]
	sub	dx, WORD PTR 4[r8]
	sub	ax, WORD PTR [r8]
.L8:
	mov	rcx, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rcx]
	mov	rcx, QWORD PTR 24[rcx]
	add	WORD PTR 130[rcx], 1
	add	rcx, 64
	mov	WORD PTR 38[rcx], ax
	mov	WORD PTR 40[rcx], dx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	eax, DWORD PTR 36[rbx]
	mov	r9d, 3590
	mov	r10d, 44
	mov	WORD PTR 26[rbx], r9w
	mov	edx, eax
	mov	WORD PTR 108[rbx], r10w
	or	edx, 4194304
	mov	DWORD PTR 36[rbx], edx
	movzx	edx, WORD PTR 100[rbx]
	test	dl, 16
	jne	.L9
	movzx	ecx, WORD PTR 88[rsi]
.L10:
	and	edx, 32
	je	.L27
	lea	eax, -16[rcx]
	or	DWORD PTR 36[rbx], 1
	cmp	ax, -512
	jge	.L14
	mov	r8d, -512
	mov	ecx, -512
	mov	WORD PTR 88[rsi], r8w
.L13:
	movsx	eax, WORD PTR 90[rsi]
	mov	r8d, DWORD PTR 16[rbx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	rbp, QWORD PTR .refptr.sub_801EB44[rip]
	sub	r8d, eax
	movzx	eax, BYTE PTR 92[rsi]
	add	ecx, DWORD PTR 12[rbx]
	mov	DWORD PTR 12[rbx], ecx
	sar	ecx, 8
	lea	rdx, 0[0+rax*4]
	sub	eax, 4
	add	ecx, 8
	and	edx, 1020
	mov	BYTE PTR 92[rsi], al
	movzx	edx, WORD PTR [r9+rdx*2]
	mov	r9d, 8
	sar	dx, 6
	sal	edx, 4
	mov	WORD PTR 90[rsi], dx
	movsx	edx, dx
	add	edx, r8d
	movzx	r8d, BYTE PTR 60[rbx]
	mov	DWORD PTR 16[rbx], edx
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rbp
	call	sub_801F100
	test	eax, eax
	js	.L16
	mov	eax, DWORD PTR 12[rbx]
.L17:
	sar	eax, 8
	mov	edx, DWORD PTR 16[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	mov	r9d, -8
	lea	ecx, -2[rax]
	movsx	eax, BYTE PTR 26[rbx]
	mov	QWORD PTR 32[rsp], rbp
	sar	edx, 8
	sub	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L18
	mov	edx, DWORD PTR 12[rbx]
.L19:
	mov	ecx, DWORD PTR 16[rbx]
	movsx	eax, BYTE PTR 27[rbx]
	sar	edx, 8
	mov	r9d, 8
	mov	rbp, QWORD PTR .refptr.sub_801EC3C[rip]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], rbp
	add	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L20
	mov	eax, DWORD PTR 16[rbx]
.L21:
	movsx	r9d, BYTE PTR 27[rbx]
	mov	edx, DWORD PTR 12[rbx]
	sar	eax, 8
	movzx	r8d, BYTE PTR 60[rbx]
	mov	QWORD PTR 32[rsp], rbp
	sub	eax, r9d
	sar	edx, 8
	mov	r9d, -8
	mov	ecx, eax
	call	sub_801F100
	test	eax, eax
	jns	.L22
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
.L22:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r10d, DWORD PTR [rax]
	mov	r11d, DWORD PTR 4[rax]
	test	BYTE PTR 36[rbx], -128
	jne	.L25
	movzx	eax, WORD PTR 80[rsi]
	movzx	edx, WORD PTR 13[rbx]
	sub	eax, r10d
	sub	edx, r10d
	movsx	ecx, ax
	movsx	edx, dx
	lea	r8d, -74[rcx]
	cmp	r8d, edx
	jg	.L25
	add	ecx, 74
	cmp	edx, ecx
	jle	.L24
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rcx, rsi
	call	sub_807B7BC
	movzx	eax, WORD PTR 80[rsi]
	mov	edx, DWORD PTR 84[rsi]
	sub	eax, r10d
	sub	edx, r11d
.L30:
	mov	rcx, QWORD PTR [rdi]
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L9:
	and	eax, -2
	or	eax, 4194304
	mov	DWORD PTR 36[rbx], eax
	movzx	eax, WORD PTR 88[rsi]
	lea	ecx, 16[rax]
	cmp	cx, 512
	jg	.L28
	add	eax, 47
	cmp	ax, 62
	ja	.L31
	mov	eax, 32
	mov	ecx, 32
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L27:
	movsx	ecx, cx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L20:
	sal	eax, 8
	add	eax, DWORD PTR 16[rbx]
	mov	DWORD PTR 16[rbx], eax
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L18:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	sub	edx, eax
	mov	eax, -32
	mov	DWORD PTR 12[rbx], edx
	mov	WORD PTR 88[rsi], ax
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L16:
	sal	eax, 8
	mov	edx, 32
	add	eax, DWORD PTR 12[rbx]
	mov	DWORD PTR 12[rbx], eax
	mov	WORD PTR 88[rsi], dx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L24:
	movzx	edx, WORD PTR 84[rsi]
	movzx	ecx, WORD PTR 17[rbx]
	sub	edx, r11d
	sub	ecx, r11d
	movsx	r8d, dx
	movsx	ecx, cx
	lea	r9d, -96[r8]
	cmp	r9d, ecx
	jg	.L25
	add	r8d, 64
	cmp	ecx, r8d
	jg	.L25
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L28:
	mov	eax, 512
	mov	ecx, 512
.L11:
	and	edx, 32
	mov	WORD PTR 88[rsi], ax
	je	.L27
	or	DWORD PTR 36[rbx], 1
	lea	eax, -16[rcx]
.L14:
	add	ecx, 15
	cmp	cx, 62
	ja	.L32
	mov	ecx, -32
	mov	WORD PTR 88[rsi], cx
	mov	ecx, -32
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L32:
	mov	WORD PTR 88[rsi], ax
	movsx	ecx, ax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L31:
	mov	WORD PTR 88[rsi], cx
	jmp	.L10
	.seh_endproc
	.p2align 4
	.def	Task_PlayerFloating;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerFloating
Task_PlayerFloating:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbp, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], -128
	je	.L34
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	lea	rdi, Task_GiantPropellerIdle[rip]
	mov	QWORD PTR 40[rax], rdi
	movzx	r11d, WORD PTR [r10]
.L35:
	mov	rcx, rbp
	call	sub_807B7BC
	movzx	edx, WORD PTR 80[rbp]
	sub	edx, r11d
.L48:
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 40[rax]
	mov	rcx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 84[rbp]
	sub	ax, WORD PTR 4[r10]
	add	WORD PTR 130[rcx], 1
	add	rcx, 64
	mov	WORD PTR 38[rcx], dx
	mov	WORD PTR 40[rcx], ax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L34:
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, DWORD PTR 36[rbx]
	mov	eax, 3590
	mov	edx, 44
	mov	WORD PTR 26[rbx], ax
	mov	eax, ecx
	mov	WORD PTR 108[rbx], dx
	or	eax, 4194304
	mov	DWORD PTR 36[rbx], eax
	mov	eax, DWORD PTR 16[rbx]
	lea	edx, -1024[rax]
	mov	eax, DWORD PTR 84[rbp]
	mov	DWORD PTR 16[rbx], edx
	sar	edx, 8
	lea	r8d, -47[rax]
	cmp	r8d, edx
	jg	.L58
.L36:
	movzx	eax, WORD PTR 100[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	test	al, 16
	je	.L39
	sub	ecx, -128
	mov	DWORD PTR 12[rbx], ecx
.L39:
	test	al, 32
	je	.L40
	add	ecx, -128
	mov	DWORD PTR 12[rbx], ecx
.L40:
	mov	rdi, QWORD PTR .refptr.sub_801EB44[rip]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	mov	r9d, 8
	add	ecx, 8
	mov	QWORD PTR 32[rsp], rdi
	call	sub_801F100
	test	eax, eax
	js	.L41
	mov	eax, DWORD PTR 12[rbx]
.L42:
	sar	eax, 8
	mov	edx, DWORD PTR 16[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	mov	r9d, -8
	lea	ecx, -2[rax]
	movsx	eax, BYTE PTR 26[rbx]
	mov	QWORD PTR 32[rsp], rdi
	sar	edx, 8
	sub	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L43
	mov	edx, DWORD PTR 12[rbx]
.L44:
	mov	ecx, DWORD PTR 16[rbx]
	movsx	eax, BYTE PTR 27[rbx]
	sar	edx, 8
	mov	r9d, 8
	mov	rdi, QWORD PTR .refptr.sub_801EC3C[rip]
	movzx	r8d, BYTE PTR 60[rbx]
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], rdi
	add	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L45
	mov	eax, DWORD PTR 16[rbx]
.L46:
	movsx	r9d, BYTE PTR 27[rbx]
	mov	edx, DWORD PTR 12[rbx]
	sar	eax, 8
	movzx	r8d, BYTE PTR 60[rbx]
	mov	QWORD PTR 32[rsp], rdi
	sub	eax, r9d
	sar	edx, 8
	mov	r9d, -8
	mov	ecx, eax
	call	sub_801F100
	test	eax, eax
	jns	.L47
	sal	eax, 8
	sub	DWORD PTR 16[rbx], eax
.L47:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR [r10]
	mov	r11d, ecx
	test	BYTE PTR 36[rbx], -128
	jne	.L35
	movzx	edx, WORD PTR 80[rbp]
	movzx	eax, WORD PTR 13[rbx]
	sub	edx, ecx
	sub	eax, ecx
	movsx	r8d, dx
	cwde
	lea	ecx, -74[r8]
	cmp	ecx, eax
	jg	.L35
	add	r8d, 74
	cmp	eax, r8d
	jg	.L35
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L41:
	sal	eax, 8
	add	eax, DWORD PTR 12[rbx]
	mov	DWORD PTR 12[rbx], eax
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L45:
	sal	eax, 8
	add	eax, DWORD PTR 16[rbx]
	mov	DWORD PTR 16[rbx], eax
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L43:
	mov	edx, DWORD PTR 12[rbx]
	sal	eax, 8
	sub	edx, eax
	mov	DWORD PTR 12[rbx], edx
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L58:
	lea	edx, -48[rax]
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	mov	BYTE PTR 92[rbp], 0
	sal	edx, 8
	movzx	eax, WORD PTR [rax]
	mov	DWORD PTR 16[rbx], edx
	sar	ax, 6
	sal	eax, 4
	cmp	WORD PTR 20[rbx], 0
	mov	WORD PTR 90[rbp], ax
	mov	eax, 32
	jle	.L59
.L37:
	mov	WORD PTR 88[rbp], ax
	mov	rax, QWORD PTR [rsi]
	lea	rdi, sub_807B530[rip]
	sar	edx, 8
	mov	QWORD PTR 40[rax], rdi
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L59:
	mov	eax, -32
	jne	.L37
	and	ecx, 1
	cmp	ecx, 1
	sbb	eax, eax
	and	eax, 64
	sub	eax, 32
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	IsPlayerInteracting
	.def	IsPlayerInteracting;	.scl	2;	.type	32;	.endef
	.seh_proc	IsPlayerInteracting
IsPlayerInteracting:
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r9]
	and	eax, 128
	jne	.L62
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, WORD PTR 80[rcx]
	movzx	r8d, WORD PTR 13[r9]
	sub	dx, WORD PTR [r10]
	sub	r8w, WORD PTR [r10]
	movsx	edx, dx
	movsx	r8d, r8w
	lea	r11d, -74[rdx]
	cmp	r11d, r8d
	jg	.L60
	add	edx, 74
	cmp	r8d, edx
	jg	.L60
	mov	r8d, DWORD PTR 4[r10]
	mov	edx, DWORD PTR 84[rcx]
	movzx	ecx, WORD PTR 17[r9]
	sub	edx, r8d
	sub	ecx, r8d
	movsx	edx, dx
	movsx	ecx, cx
	lea	r8d, -64[rdx]
	cmp	r8d, ecx
	jg	.L60
	add	edx, 64
	xor	eax, eax
	cmp	ecx, edx
	setle	al
.L60:
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.def	Task_GiantPropellerIdle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GiantPropellerIdle
Task_GiantPropellerIdle:
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
	mov	rsi, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	IsPlayerInteracting
	test	eax, eax
	jne	.L69
.L64:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	sub	ax, WORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	lea	ecx, 128[rax]
	cmp	cx, 682
	ja	.L65
	sub	edx, r8d
	lea	ecx, 128[rdx]
	cmp	cx, 496
	ja	.L65
	mov	rcx, QWORD PTR [rsi]
	mov	rcx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rcx]
	mov	rcx, QWORD PTR 24[rcx]
	add	WORD PTR 130[rcx], 1
	add	rcx, 64
	mov	WORD PTR 38[rcx], ax
	mov	WORD PTR 40[rcx], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L65:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	rcx, rsi
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, rsi
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rsi
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	edx, 44
	or	DWORD PTR 36[rsi], 4194304
	mov	WORD PTR 26[rsi], ax
	lea	rax, Task_PlayerFloating[rip]
	mov	WORD PTR 108[rsi], dx
	mov	rsi, QWORD PTR [rdi]
	mov	QWORD PTR 40[rsi], rax
	jmp	.L64
	.seh_endproc
	.p2align 4
	.globl	sub_807BA54
	.def	sub_807BA54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807BA54
sub_807BA54:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 40[rax]
	mov	rax, QWORD PTR 24[rax]
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Propeller
	.def	CreateEntity_Propeller;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Propeller
CreateEntity_Propeller:
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
	lea	rax, TaskDestructor_GiantPropeller[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	esi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_GiantPropellerIdle[rip]
	call	TaskCreate
	movzx	ecx, BYTE PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, bp
	sal	eax, 5
	mov	r8d, ecx
	add	eax, ecx
	movzx	ecx, di
	sal	eax, 3
	sal	ecx, 5
	mov	DWORD PTR 80[rdx], eax
	movzx	eax, BYTE PTR 1[rbx]
	mov	WORD PTR 8[rdx], bp
	add	eax, ecx
	mov	ecx, esi
	mov	WORD PTR 10[rdx], di
	sal	eax, 3
	mov	QWORD PTR [rdx], rbx
	mov	DWORD PTR 84[rdx], eax
	movzx	eax, r8b
	mov	ah, cl
	mov	WORD PTR 12[rdx], ax
	mov	BYTE PTR [rbx], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.sub_801EB44, "dr"
	.globl	.refptr.sub_801EB44
	.linkonce	discard
.refptr.sub_801EB44:
	.quad	sub_801EB44
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
