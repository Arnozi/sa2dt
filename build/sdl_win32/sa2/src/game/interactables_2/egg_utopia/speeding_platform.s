	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable097;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable097
TaskDestructor_Interactable097:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_807FD0C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807FD0C
sub_807FD0C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rbx], -128
	je	.L4
.L6:
	xor	eax, eax
.L3:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	r8d, DWORD PTR 92[rcx]
	mov	edx, DWORD PTR 88[rcx]
	lea	rax, 16[rcx]
	mov	r9, rbx
	sar	r8d, 8
	sar	edx, 8
	add	r8d, DWORD PTR 84[rcx]
	add	edx, DWORD PTR 80[rcx]
	mov	rcx, rax
	call	Coll_Player_Platform
	test	eax, eax
	je	.L6
	test	eax, 65536
	jne	.L18
	test	eax, 262144
	jne	.L17
	test	eax, 524288
	jne	.L17
	test	eax, 131072
	je	.L6
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L17:
	xor	al, al
	xor	edx, edx
	xor	ecx, ecx
	or	DWORD PTR 36[rbx], 32
	cwde
	add	DWORD PTR 12[rbx], eax
	mov	WORD PTR 20[rbx], dx
	mov	WORD PTR 24[rbx], cx
.L9:
	mov	eax, 1
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L18:
	sal	eax, 8
	xor	r8d, r8d
	cwde
	mov	WORD PTR 22[rbx], r8w
	add	DWORD PTR 16[rbx], eax
	mov	eax, 2
	jmp	.L3
	.seh_endproc
	.p2align 4
	.def	sub_807FB1C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807FB1C
sub_807FB1C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 104[rcx]
	mov	rbx, rcx
	test	eax, eax
	jne	.L20
	movsx	ecx, WORD PTR 112[rcx]
	mov	eax, 3840
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	cmp	cx, ax
	cmovg	ecx, eax
	movzx	eax, BYTE PTR 114[rbx]
	lea	r8d, 256[0+rax*4]
	mov	WORD PTR 112[rbx], cx
	movsx	rax, r8d
	sub	r8d, 256
	movzx	eax, WORD PTR [r9+rax*2]
	movsx	r8, r8d
	sar	ax, 6
	cwde
	imul	eax, ecx
	sar	eax, 8
	mov	WORD PTR 108[rbx], ax
	mov	edx, eax
	movzx	eax, WORD PTR [r9+r8*2]
	sar	ax, 6
	cwde
	imul	eax, ecx
	sar	eax, 8
.L21:
	movsx	esi, dx
	mov	WORD PTR 110[rbx], ax
	cwde
	movq	xmm1, QWORD PTR 88[rbx]
	movd	xmm0, esi
	movd	xmm2, eax
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 96[rbx]
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	mov	edx, DWORD PTR 36[rsi]
	movq	QWORD PTR 88[rbx], xmm0
	test	dl, -128
	jne	.L22
	test	eax, eax
	je	.L24
	mov	eax, DWORD PTR 80[rbx]
	movd	ecx, xmm0
	movd	xmm1, DWORD PTR 100[rbx]
	pshufd	xmm3, xmm0, 0xe5
	movd	xmm0, DWORD PTR 20[rsi]
	sal	eax, 8
	add	eax, ecx
	movsx	ecx, WORD PTR 100[rbx]
	add	eax, ecx
	mov	ecx, DWORD PTR 84[rbx]
	mov	DWORD PTR 12[rsi], eax
	movd	eax, xmm3
	sal	ecx, 8
	add	eax, ecx
	pextrw	ecx, xmm1, 1
	paddw	xmm1, xmm0
	movsx	ecx, cx
	add	eax, ecx
	movsx	ecx, BYTE PTR 27[rsi]
	movd	DWORD PTR 100[rbx], xmm1
	sal	ecx, 8
	sub	eax, ecx
	mov	DWORD PTR 16[rsi], eax
	test	edx, 20971650
	je	.L27
.L34:
	mov	eax, edx
	mov	QWORD PTR 64[rsi], 0
	and	eax, -9
	mov	DWORD PTR 36[rsi], eax
.L24:
	xor	eax, eax
.L28:
	mov	DWORD PTR 96[rbx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	eax, WORD PTR 110[rcx]
	mov	edx, 2048
	add	eax, 42
	cmp	ax, dx
	cmovg	eax, edx
	movzx	edx, WORD PTR 108[rcx]
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L22:
	test	eax, eax
	je	.L24
	test	edx, 20971650
	jne	.L34
.L27:
	mov	rcx, rbx
	call	sub_807FD0C
	mov	edx, eax
	mov	eax, 1
	cmp	edx, 2
	je	.L28
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, WORD PTR 13[rsi]
	mov	ecx, DWORD PTR [rax]
	mov	eax, -27
	sub	eax, ecx
	sub	edx, ecx
	add	ax, WORD PTR 80[rbx]
	add	ax, WORD PTR 89[rbx]
	cmp	ax, dx
	jg	.L24
	cwde
	movsx	edx, dx
	add	eax, 54
	cmp	eax, edx
	setge	al
	movzx	eax, al
	mov	DWORD PTR 96[rbx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	RenderPlatform;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderPlatform
RenderPlatform:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	edx, DWORD PTR 84[rcx]
	mov	rbx, rcx
	lea	rsi, 16[rcx]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	sub	dx, WORD PTR 4[rcx]
	sub	ax, WORD PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 2
	jbe	.L36
	add	ax, WORD PTR 125[rbx]
	add	dx, WORD PTR 129[rbx]
.L37:
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, rsi
	mov	WORD PTR 56[rbx], dx
	mov	WORD PTR 54[rbx], ax
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L36:
	add	ax, WORD PTR 89[rbx]
	add	dx, WORD PTR 93[rbx]
	jmp	.L37
	.seh_endproc
	.p2align 4
	.def	sub_807F9F0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807F9F0
sub_807F9F0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L39
	mov	rax, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 88[rbx]
	movd	xmm3, DWORD PTR 92[rbx]
	mov	QWORD PTR 132[rbx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L39:
	mov	rcx, rbx
	call	sub_807FB1C
	mov	eax, DWORD PTR 96[rbx]
	test	eax, eax
	je	.L41
	cmp	WORD PTR 110[rbx], 0
	mov	r8d, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	eax, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	jns	.L44
.L41:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 192
	mov	edx, DWORD PTR 84[rbx]
	mov	r8d, DWORD PTR 92[rbx]
	sub	ax, WORD PTR [rcx]
	add	ax, WORD PTR 80[rbx]
	add	ax, WORD PTR 89[rbx]
	mov	r9d, DWORD PTR 4[rcx]
	cmp	ax, 810
	ja	.L43
	sub	edx, r9d
	sar	r8d, 8
	lea	edx, 160[rdx+r8]
	cmp	dx, 560
	ja	.L43
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	RenderPlatform
	.p2align 4,,10
	.p2align 3
.L43:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L44:
	sar	ecx, 8
	sar	edx, 8
	mov	r9d, 8
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	add	edx, r8d
	mov	r8d, 1
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L41
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 96[rbx], 0
	and	DWORD PTR 36[rax], -9
	mov	BYTE PTR 117[rax], 3
	mov	QWORD PTR 64[rax], 0
	jmp	.L41
	.seh_endproc
	.p2align 4
	.def	sub_807FF20;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807FF20
sub_807FF20:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L46
	mov	rax, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 88[rbx]
	movd	xmm3, DWORD PTR 92[rbx]
	mov	QWORD PTR 132[rbx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L46:
	add	WORD PTR 112[rbx], 32
	mov	rcx, rbx
	call	sub_807FB1C
	mov	eax, DWORD PTR 88[rbx]
	cmp	eax, 151039
	jg	.L47
	sar	eax, 8
	movzx	r8d, WORD PTR 93[rbx]
	mov	edx, eax
.L48:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 192
	mov	r9d, DWORD PTR 84[rbx]
	sub	ax, WORD PTR [rcx]
	add	ax, WORD PTR 80[rbx]
	add	eax, edx
	mov	r10d, DWORD PTR 4[rcx]
	cmp	ax, 810
	ja	.L49
	sub	r9d, r10d
	lea	r8d, 160[r8+r9]
	cmp	r8w, 560
	ja	.L49
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderPlatform
	.p2align 4,,10
	.p2align 3
.L49:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L47:
	mov	rax, QWORD PTR .LC0[rip]
	mov	BYTE PTR 114[rbx], 0
	lea	rdx, sub_807FFB0[rip]
	mov	r8d, 576
	mov	QWORD PTR 88[rbx], rax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	mov	edx, 590
	jmp	.L48
	.seh_endproc
	.p2align 4
	.def	sub_807FFB0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807FFB0
sub_807FFB0:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L51
	mov	rax, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 88[rbx]
	movd	xmm3, DWORD PTR 92[rbx]
	mov	QWORD PTR 132[rbx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L51:
	mov	rcx, rbx
	call	sub_807FB1C
	mov	edx, DWORD PTR 88[rbx]
	cmp	edx, 208383
	jg	.L54
.L52:
	mov	eax, 192
	sar	edx, 8
	mov	ecx, DWORD PTR 84[rbx]
	mov	r9d, DWORD PTR 92[rbx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	sub	ax, WORD PTR [r8]
	add	ax, WORD PTR 80[rbx]
	add	eax, edx
	mov	r10d, DWORD PTR 4[r8]
	cmp	ax, 810
	ja	.L53
	sub	ecx, r10d
	sar	r9d, 8
	lea	ecx, 160[rcx+r9]
	cmp	cx, 560
	ja	.L53
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderPlatform
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L54:
	mov	rax, QWORD PTR .LC2[rip]
	mov	BYTE PTR 114[rbx], -32
	mov	ecx, 288
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 104[rbx], 1
	mov	QWORD PTR 88[rbx], rax
	mov	eax, 2048
	mov	WORD PTR 112[rbx], ax
	movzx	eax, WORD PTR 2304[rdx]
	sar	ax, 6
	sal	eax, 3
	mov	WORD PTR 108[rbx], ax
	movzx	eax, WORD PTR 1792[rdx]
	sar	ax, 6
	cwde
	sal	eax, 3
	mov	WORD PTR 110[rbx], ax
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_807F9F0[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	edx, DWORD PTR 88[rbx]
	jmp	.L52
	.seh_endproc
	.p2align 4
	.def	Task_Interactable097;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable097
Task_Interactable097:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L56
	mov	rax, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 88[rbx]
	movd	xmm3, DWORD PTR 92[rbx]
	mov	QWORD PTR 132[rbx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L56:
	mov	rcx, rbx
	call	sub_807FD0C
	cmp	eax, 2
	je	.L59
.L57:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 192
	mov	edx, DWORD PTR 84[rbx]
	mov	r8d, DWORD PTR 92[rbx]
	sub	ax, WORD PTR [rcx]
	add	ax, WORD PTR 80[rbx]
	add	ax, WORD PTR 89[rbx]
	mov	r9d, DWORD PTR 4[rcx]
	cmp	ax, 810
	ja	.L58
	sub	edx, r9d
	sar	r8d, 8
	lea	edx, 160[rdx+r8]
	cmp	dx, 560
	ja	.L58
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderPlatform
	.p2align 4,,10
	.p2align 3
.L58:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L59:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	ecx, WORD PTR 80[rbx]
	mov	DWORD PTR 96[rbx], 1
	mov	eax, DWORD PTR 12[rdx]
	sal	ecx, 8
	sub	ax, WORD PTR 88[rbx]
	sub	eax, ecx
	mov	ecx, 288
	mov	WORD PTR 100[rbx], ax
	movsx	ax, BYTE PTR 27[rdx]
	sal	eax, 8
	add	ax, WORD PTR 16[rdx]
	movzx	edx, WORD PTR 84[rbx]
	sub	ax, WORD PTR 92[rbx]
	sal	edx, 8
	sub	eax, edx
	mov	WORD PTR 102[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_807FF20[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SpeedingPlatform
	.def	CreateEntity_SpeedingPlatform;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SpeedingPlatform
CreateEntity_SpeedingPlatform:
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
	lea	rax, TaskDestructor_Interactable097[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r12d, edx
	mov	ebp, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 144
	lea	rcx, Task_Interactable097[rip]
	call	TaskCreate
	mov	r8d, 4351
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 112[rbx], ax
	movzx	eax, r12w
	mov	QWORD PTR 104[rbx], 0
	sal	eax, 5
	mov	BYTE PTR 114[rbx], 32
	movzx	edx, BYTE PTR [rsi]
	add	eax, edx
	mov	ecx, edx
	movzx	edx, bp
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 80[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	WORD PTR 65[rbx], r8w
	add	eax, edx
	mov	rdx, QWORD PTR .LC4[rip]
	mov	WORD PTR 8[rbx], r12w
	sal	eax, 3
	mov	WORD PTR 10[rbx], bp
	mov	DWORD PTR 84[rbx], eax
	movzx	eax, cl
	mov	ecx, edi
	mov	QWORD PTR 88[rbx], rdx
	mov	ah, cl
	xor	ecx, ecx
	mov	QWORD PTR 132[rbx], rdx
	xor	edx, edx
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 52[rbx], cx
	mov	ecx, 16
	mov	QWORD PTR [rbx], rsi
	mov	WORD PTR 12[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	movups	XMMWORD PTR 116[rbx], xmm0
	call	VramMalloc
	mov	r9d, 612
	mov	BYTE PTR 64[rbx], 0
	lea	rcx, 16[rbx]
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r9w
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
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	151040
	.long	147456
	.align 8
.LC2:
	.long	208384
	.long	147456
	.set	.LC4,.LC5
	.align 16
.LC5:
	.long	8192
	.long	4608
	.long	8192
	.long	4608
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
