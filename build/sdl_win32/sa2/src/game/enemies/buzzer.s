	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Buzzer;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Buzzer
TaskDestructor_Buzzer:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_BuzzerMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BuzzerMain
Task_BuzzerMain:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 96[rbx]
	mov	edi, DWORD PTR 92[rbx]
	lea	rbp, 16[rbx]
	mov	rcx, rbp
	mov	r12, QWORD PTR [rbx]
	lea	edx, 192[rax]
	sub	eax, 192
	test	BYTE PTR 49[rbx], 4
	mov	r15d, edi
	cmovne	eax, edx
	sar	r15d, 8
	xor	r9d, r9d
	mov	r8d, r15d
	mov	DWORD PTR 96[rbx], eax
	add	eax, DWORD PTR 88[rbx]
	mov	r14d, eax
	mov	esi, eax
	sar	r14d, 8
	mov	eax, r14d
	sub	ax, WORD PTR 0[r13]
	mov	edx, r14d
	mov	WORD PTR 54[rbx], ax
	mov	eax, r15d
	sub	ax, WORD PTR 4[r13]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L45
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR 0[r13]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L46
.L7:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L9
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L8
.L9:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
.L45:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 40
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
.L46:
	add	edx, -128
	cmp	eax, edx
	jl	.L7
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r13]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L7
	add	edx, -128
	cmp	eax, edx
	jl	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	movzx	eax, BYTE PTR 124[rbx]
	test	al, al
	je	.L10
	sub	eax, 1
	mov	BYTE PTR 124[rbx], al
	test	al, al
	je	.L10
	mov	eax, DWORD PTR 96[rbx]
	movsx	r9d, BYTE PTR 3[r12]
	sar	eax, 8
	lea	edx, 0[0+r9*8]
	cmp	eax, edx
	jle	.L47
.L18:
	movzx	r8d, BYTE PTR 5[r12]
	mov	ecx, esi
	mov	edx, edi
	xor	cl, cl
	xor	dl, dl
	add	r8d, r9d
	sal	r8d, 3
	cmp	r8d, eax
	jg	.L13
	test	BYTE PTR 49[rbx], 4
	je	.L13
	.p2align 4,,10
	.p2align 3
.L20:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rcx, sub_80533B4[rip]
	mov	edx, -254
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rcx
	mov	eax, 482
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
.L44:
	xor	sil, sil
	xor	dil, dil
	mov	ecx, esi
	mov	edx, edi
.L13:
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 40
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
.L10:
	mov	ecx, esi
	mov	edx, edi
	xor	cl, cl
	xor	dl, dl
	test	BYTE PTR 49[rbx], 4
	jne	.L48
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	lea	r11d, -59[r14]
	mov	r8d, DWORD PTR 12[r9]
	mov	eax, r8d
	sar	eax, 8
	cmp	r11d, eax
	jg	.L12
	cmp	r14d, eax
	jg	.L49
.L12:
	cmp	BYTE PTR 124[rbx], 0
	jne	.L50
	mov	edx, DWORD PTR 96[rbx]
	movsx	eax, BYTE PTR 3[r12]
	sar	edx, 8
	sal	eax, 3
	cmp	edx, eax
	jg	.L44
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L48:
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	mov	r9d, DWORD PTR 12[r8]
	mov	eax, r9d
	sar	eax, 8
	cmp	r14d, eax
	jge	.L16
	add	r14d, 59
	cmp	eax, r14d
	jg	.L16
	mov	eax, DWORD PTR 16[r8]
	mov	r8d, eax
	sar	r8d, 8
	cmp	r15d, r8d
	jge	.L16
	add	r15d, 79
	cmp	r8d, r15d
	jg	.L16
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r10d, -255
	lea	rdi, sub_80534F0[rip]
	mov	r8, QWORD PTR [rsi]
	mov	QWORD PTR 40[r8], rdi
	mov	r8d, 482
	mov	WORD PTR 64[rbx], r10w
	mov	r10d, ecx
	sub	r10d, r9d
	mov	WORD PTR 34[rbx], r8w
	lea	r8d, 31[r10]
	mov	DWORD PTR 112[rbx], eax
	cmovns	r8d, r10d
	sar	r8d, 5
	neg	r8d
.L43:
	sub	eax, edx
	mov	WORD PTR 120[rbx], r8w
	lea	r8d, 31[rax]
	cmovs	eax, r8d
	sar	eax, 5
	mov	WORD PTR 122[rbx], ax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, DWORD PTR 96[rbx]
	movsx	r9d, BYTE PTR 3[r12]
	sar	eax, 8
	lea	edx, 0[0+r9*8]
	cmp	eax, edx
	jg	.L18
.L19:
	movzx	edx, BYTE PTR 5[r12]
	add	edx, r9d
	sal	edx, 3
	cmp	eax, edx
	jge	.L20
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L47:
	test	BYTE PTR 49[rbx], 4
	je	.L20
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L49:
	mov	eax, DWORD PTR 16[r9]
	mov	r9d, eax
	sar	r9d, 8
	cmp	r15d, r9d
	jge	.L12
	add	r15d, 79
	cmp	r9d, r15d
	jg	.L12
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	sub	r8d, ecx
	lea	rdi, sub_80534F0[rip]
	mov	r11d, 482
	mov	r9, QWORD PTR [rsi]
	mov	esi, -255
	mov	QWORD PTR 40[r9], rdi
	lea	r9d, 31[r8]
	cmovs	r8d, r9d
	mov	WORD PTR 34[rbx], r11w
	mov	WORD PTR 64[rbx], si
	mov	DWORD PTR 112[rbx], eax
	sar	r8d, 5
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L50:
	mov	eax, DWORD PTR 96[rbx]
	movsx	r9d, BYTE PTR 3[r12]
	sar	eax, 8
	lea	edx, 0[0+r9*8]
	cmp	eax, edx
	jle	.L20
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	sub_80533B4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80533B4
sub_80533B4:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 96[rbx]
	mov	r14d, DWORD PTR 92[rbx]
	lea	r12, 16[rbx]
	add	esi, DWORD PTR 88[rbx]
	mov	rcx, r12
	mov	r13, QWORD PTR [rbx]
	mov	edx, esi
	mov	r8d, r14d
	sar	edx, 8
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L59
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [rdi]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L60
.L53:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L55
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L54
.L55:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L59:
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L60:
	add	edx, -128
	cmp	eax, edx
	jl	.L53
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[rdi]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L53
	add	edx, -128
	cmp	eax, edx
	jl	.L53
	.p2align 4,,10
	.p2align 3
.L54:
	xor	sil, sil
	mov	edx, r14d
	xor	dl, dl
	mov	ecx, esi
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L56
	mov	edx, DWORD PTR 48[rbx]
	lea	rdi, Task_BuzzerMain[rip]
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 482
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
.L56:
	mov	rcx, r12
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	sub_80534F0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80534F0
sub_80534F0:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movsx	edx, WORD PTR 120[rbx]
	mov	edi, DWORD PTR 96[rbx]
	lea	r12, 16[rbx]
	add	edx, DWORD PTR 104[rbx]
	add	edi, DWORD PTR 88[rbx]
	mov	rcx, r12
	add	edi, edx
	movsx	eax, WORD PTR 122[rbx]
	add	eax, DWORD PTR 108[rbx]
	mov	DWORD PTR 104[rbx], edx
	mov	DWORD PTR 108[rbx], eax
	mov	edx, edi
	add	eax, DWORD PTR 92[rbx]
	sar	edx, 8
	mov	r8d, eax
	mov	esi, eax
	mov	r13, QWORD PTR [rbx]
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR [r14]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L67
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L68
.L63:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L65
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L64
.L65:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L67:
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L68:
	add	edx, -128
	cmp	eax, edx
	jl	.L63
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L63
	add	edx, -128
	cmp	eax, edx
	jl	.L63
	.p2align 4,,10
	.p2align 3
.L64:
	xor	sil, sil
	xor	dil, dil
	mov	ecx, edi
	mov	edx, esi
	call	Player_UpdateHomingPosition
	cmp	esi, DWORD PTR 112[rbx]
	jle	.L66
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, sub_8053620[rip]
	mov	QWORD PTR 40[rax], rsi
.L66:
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	sub_8053620;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8053620
sub_8053620:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movsx	edx, WORD PTR 120[rbx]
	mov	eax, DWORD PTR 104[rbx]
	lea	r12, 16[rbx]
	movsx	ecx, WORD PTR 122[rbx]
	mov	edi, DWORD PTR 96[rbx]
	sub	eax, edx
	mov	edx, DWORD PTR 108[rbx]
	add	edi, DWORD PTR 88[rbx]
	mov	esi, DWORD PTR 92[rbx]
	add	edi, eax
	mov	r13, QWORD PTR [rbx]
	mov	DWORD PTR 104[rbx], eax
	sub	edx, ecx
	mov	eax, edi
	mov	rcx, r12
	add	esi, edx
	sar	eax, 8
	mov	DWORD PTR 108[rbx], edx
	mov	r8d, esi
	mov	edx, eax
	sub	dx, WORD PTR [r14]
	sar	r8d, 8
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L75
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L76
.L71:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L73
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L72
.L73:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L75:
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L76:
	add	edx, -128
	cmp	eax, edx
	jl	.L71
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L71
	add	edx, -128
	cmp	eax, edx
	jl	.L71
	.p2align 4,,10
	.p2align 3
.L72:
	xor	sil, sil
	xor	dil, dil
	mov	ecx, edi
	mov	edx, esi
	call	Player_UpdateHomingPosition
	mov	ecx, DWORD PTR 108[rbx]
	test	ecx, ecx
	jle	.L77
.L74:
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L77:
	mov	eax, 482
	mov	edx, -256
	mov	BYTE PTR 124[rbx], 60
	lea	rsi, Task_BuzzerMain[rip]
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 104[rbx], 0
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rsi
	jmp	.L74
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Buzzer
	.def	CreateEntity_Buzzer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Buzzer
CreateEntity_Buzzer:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	je	.L79
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 3
	jle	.L82
.L79:
	lea	rax, TaskDestructor_Buzzer[rip]
	xor	r9d, r9d
	mov	r8d, 16432
	mov	edx, 128
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_BuzzerMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	pxor	xmm0, xmm0
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	sal	ebp, 5
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 20
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	movups	XMMWORD PTR 96[rbx], xmm0
	lea	r8d, [rax+rbp]
	mov	DWORD PTR 120[rbx], 0
	mov	eax, r8d
	sal	r8d, 16
	mov	QWORD PTR 112[rbx], 0
	or	r8d, esi
	sal	eax, 11
	mov	BYTE PTR 124[rbx], 0
	movd	xmm0, r8d
	mov	DWORD PTR 92[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 31588352
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	jne	.L79
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
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
