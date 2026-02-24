	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable078;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable078
TaskDestructor_Interactable078:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_807ACF4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807ACF4
sub_807ACF4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r9d, 3844446251
	mov	eax, DWORD PTR [rax]
	mov	r8, rax
	imul	rax, r9
	mov	rbx, rcx
	lea	rcx, 16[rcx]
	shr	rax, 40
	imul	r9d, eax, 286
	mov	eax, r8d
	sub	eax, r9d
	cmp	eax, 119
	ja	.L4
	test	edx, edx
	je	.L5
	mov	r11d, 596
	mov	WORD PTR 34[rbx], r11w
	test	al, 8
	jne	.L26
.L25:
	mov	BYTE PTR 64[rbx], 8
	call	UpdateSpriteAnimation
.L14:
	xor	eax, eax
	mov	DWORD PTR 88[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	and	eax, 15
	je	.L30
	cmp	eax, 8
	jne	.L14
	mov	r9d, 596
	mov	WORD PTR 34[rbx], r9w
.L26:
	mov	BYTE PTR 64[rbx], 9
	call	UpdateSpriteAnimation
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L4:
	cmp	eax, 184
	ja	.L10
	sub	eax, 120
	mov	edx, 1
	lea	r9, gUnknown_080E00FC[rip]
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	r8d, WORD PTR [r9+rdx*4]
	cmp	eax, r8d
	jb	.L20
	add	rdx, 1
	cmp	rdx, 10
	jne	.L12
.L29:
	mov	eax, 2
	mov	edx, 596
.L22:
	mov	WORD PTR 34[rbx], dx
	mov	BYTE PTR 64[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L10:
	cmp	eax, 244
	jbe	.L31
	sub	eax, 245
	mov	edx, 1
	lea	r9, gUnknown_080E00D4[rip]
	.p2align 4,,10
	.p2align 3
.L21:
	movzx	r8d, WORD PTR [r9+rdx*4]
	cmp	eax, r8d
	jb	.L20
	add	rdx, 1
	cmp	rdx, 10
	jne	.L21
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L31:
	sub	eax, 185
	test	edx, edx
	je	.L16
	mov	r8d, 596
	mov	WORD PTR 34[rbx], r8w
	test	al, 8
	jne	.L27
.L28:
	mov	BYTE PTR 64[rbx], 2
	call	UpdateSpriteAnimation
.L18:
	mov	eax, 1
	mov	DWORD PTR 88[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	mov	r10d, 596
	mov	WORD PTR 34[rbx], r10w
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L20:
	sub	edx, 1
	lea	rax, gUnknown_080E00B4[rip]
	movzx	edx, dl
	movzx	r8d, WORD PTR 2[r9+rdx*4]
	movzx	edx, WORD PTR [rax+r8*4]
	movzx	eax, BYTE PTR 2[rax+r8*4]
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L16:
	and	eax, 15
	je	.L32
	cmp	eax, 8
	jne	.L18
	mov	eax, 596
	mov	WORD PTR 34[rbx], ax
.L27:
	mov	BYTE PTR 64[rbx], 3
	call	UpdateSpriteAnimation
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L32:
	mov	edx, 596
	mov	WORD PTR 34[rbx], dx
	jmp	.L28
	.seh_endproc
	.p2align 4
	.def	Task_Interactable078;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable078
Task_Interactable078:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	xor	edx, edx
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_807ACF4
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rsi], -128
	je	.L58
.L34:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	sub	eax, DWORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	lea	ecx, 128[rax]
	cmp	cx, 682
	ja	.L42
	sub	edx, r8d
	lea	ecx, 128[rdx]
	cmp	cx, 496
	ja	.L42
	lea	rcx, 16[rbx]
	mov	WORD PTR 54[rbx], ax
	mov	WORD PTR 56[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L42:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L58:
	lea	rbp, 16[rbx]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	mov	r9, rsi
	mov	rcx, rbp
	call	Coll_Player_Platform
	test	eax, eax
	je	.L35
	test	eax, 65536
	jne	.L56
	test	eax, 262144
	jne	.L57
	test	eax, 524288
	jne	.L57
	test	eax, 131072
	jne	.L56
	.p2align 4,,10
	.p2align 3
.L35:
	mov	eax, DWORD PTR 88[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 80[rbx]
	test	eax, eax
	je	.L34
	test	BYTE PTR 36[rsi], -128
	jne	.L34
	sub	BYTE PTR 77[rbx], 16
	mov	r9, rsi
	mov	rcx, rbp
	add	BYTE PTR 79[rbx], 16
	call	Coll_Player_Interactable
	add	BYTE PTR 77[rbx], 16
	sub	BYTE PTR 79[rbx], 16
	test	eax, eax
	je	.L34
	test	eax, 65536
	jne	.L41
	test	eax, 262144
	jne	.L34
	test	eax, 655360
	je	.L34
.L41:
	mov	rcx, rsi
	call	Coll_DamagePlayer
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L56:
	sal	eax, 8
	xor	edx, edx
	cwde
	mov	WORD PTR 22[rsi], dx
	add	DWORD PTR 16[rsi], eax
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L57:
	xor	al, al
	xor	ecx, ecx
	cwde
	mov	WORD PTR 20[rsi], cx
	add	DWORD PTR 12[rsi], eax
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SpikePlatform
	.def	CreateEntity_SpikePlatform;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SpikePlatform
CreateEntity_SpikePlatform:
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
	lea	rax, TaskDestructor_Interactable078[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_Interactable078[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 4351
	mov	WORD PTR 12[rbx], dx
	xor	edx, edx
	mov	DWORD PTR 80[rbx], esi
	movzx	eax, BYTE PTR 1[rbp]
	mov	WORD PTR 52[rbx], dx
	add	eax, edi
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 42
	sal	eax, 3
	mov	DWORD PTR 58[rbx], 1152
	mov	DWORD PTR 84[rbx], eax
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, -1
	mov	BYTE PTR 64[rbx], -1
	mov	rcx, rbx
	mov	QWORD PTR 24[rbx], rax
	mov	edx, 1
	mov	WORD PTR 34[rbx], r8w
	call	sub_807ACF4
	mov	BYTE PTR 0[rbp], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080E00FC:
	.word	0
	.word	0
	.word	6
	.word	4
	.word	8
	.word	6
	.word	38
	.word	0
	.word	44
	.word	6
	.word	47
	.word	0
	.word	53
	.word	6
	.word	59
	.word	4
	.word	51
	.word	2
	.word	53
	.word	0
	.align 32
gUnknown_080E00D4:
	.word	0
	.word	0
	.word	2
	.word	2
	.word	4
	.word	4
	.word	6
	.word	6
	.word	12
	.word	0
	.word	18
	.word	6
	.word	21
	.word	0
	.word	27
	.word	6
	.word	33
	.word	4
	.word	35
	.word	0
	.align 32
gUnknown_080E00B4:
	.word	596
	.word	2
	.word	596
	.word	3
	.word	596
	.word	4
	.word	596
	.word	5
	.word	596
	.word	6
	.word	596
	.word	7
	.word	596
	.word	8
	.word	596
	.word	9
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
