	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	CreateEntity_Spring;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring
CreateEntity_Spring:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_Spring[rip]
	mov	r14d, DWORD PTR 144[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rdx
	mov	esi, r8d
	mov	edi, r9d
	mov	r12d, ecx
	mov	edx, 88
	xor	r9d, r9d
	mov	r8d, 8208
	lea	rcx, Task_Spring_Idle[rip]
	call	TaskCreate
	mov	ecx, r14d
	movzx	r14d, r12b
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	r13, 16[rbx]
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	movzx	edx, al
	add	esi, eax
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 4351
	mov	WORD PTR 12[rbx], dx
	xor	edx, edx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	xor	eax, eax
	mov	BYTE PTR 0[rbp], -2
	mov	WORD PTR 32[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 52[rbx], dx
	movzx	eax, BYTE PTR [rax]
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 65[rbx], cx
	sar	al, 2
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8704
	cmp	al, 2
	je	.L9
	cmp	al, 5
	sete	al
	movzx	eax, al
	lea	esi, [rax+rax]
.L3:
	movsx	rsi, esi
	lea	rdi, sSpringAnimationData[rip]
	lea	rax, [rsi+rsi*4]
	lea	rax, [r14+rax*2]
	movzx	ecx, WORD PTR 4[rdi+rax*8]
	call	VramMalloc
	mov	edx, DWORD PTR 48[rbx]
	mov	QWORD PTR 24[rbx], rax
.L5:
	lea	rax, [rsi+rsi*4]
	mov	BYTE PTR 80[rbx], r12b
	lea	rax, [r14+rax*2]
	movzx	ecx, WORD PTR [rdi+rax*8]
	mov	WORD PTR 34[rbx], cx
	movzx	ecx, WORD PTR 2[rdi+rax*8]
	movzx	eax, WORD PTR 6[rdi+rax*8]
	mov	BYTE PTR 64[rbx], cl
	mov	rcx, r13
	or	eax, edx
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, BYTE PTR 3[rbp]
	and	eax, 3
	mov	BYTE PTR 81[rbx], al
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L9:
	cmp	r12b, 1
	ja	.L10
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 8704
	mov	esi, 1
	lea	rdi, sSpringAnimationData[rip]
	add	rax, 76160
	mov	QWORD PTR 24[rbx], rax
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L10:
	mov	esi, 1
	jmp	.L3
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_Spring;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Spring
TaskDestructor_Spring:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	rdx, QWORD PTR 24[rcx]
	sar	al, 2
	cmp	al, 2
	jne	.L12
	cmp	BYTE PTR 80[rdx], 1
	jbe	.L11
.L12:
	mov	rcx, QWORD PTR 24[rdx]
	jmp	VramFree
	.p2align 4,,10
	.p2align 3
.L11:
	ret
	.seh_endproc
	.p2align 4
	.def	CheckSpringPlayerCollisions.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	CheckSpringPlayerCollisions.constprop.0.isra.0
CheckSpringPlayerCollisions.constprop.0.isra.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 8[r8]
	sal	eax, 5
	mov	r10, rcx
	movzx	ecx, BYTE PTR 12[r8]
	movzx	edx, dl
	mov	rbx, r8
	add	eax, ecx
	movzx	ecx, WORD PTR 10[r8]
	sal	eax, 3
	sal	ecx, 5
	mov	r8d, eax
	add	ecx, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sal	ecx, 3
	mov	esi, ecx
	sub	si, WORD PTR 4[rdx]
	sub	r8w, WORD PTR [rdx]
	mov	WORD PTR 40[r10], si
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 38[r10], r8w
	test	BYTE PTR 38[rsi], 64
	je	.L15
.L17:
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movsx	r8d, cx
	movsx	edx, ax
	mov	r9, rsi
	mov	rcx, r10
	call	Coll_Player_Interactable
	test	eax, eax
	je	.L17
	movzx	eax, BYTE PTR 80[rbx]
	lea	rdx, sSpringDirToPlayerTransition[rip]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR 117[rsi], al
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR 81[rbx]
	mov	BYTE PTR 116[rsi], 1
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 118[rsi], dl
	sar	al, 2
	cmp	al, 2
	je	.L23
	mov	ecx, 153
	call	m4aSongNumStart
.L19:
	mov	eax, 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	lea	rax, sSpring_MusicPlant_Soundeffects[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStart
	jmp	.L19
	.seh_endproc
	.p2align 4
	.def	Task_Spring_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Spring_Idle
Task_Spring_Idle:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	lea	rbp, 16[rbx]
	mov	r8, rbx
	mov	rcx, rbp
	movzx	edx, BYTE PTR 1[rdi]
	call	CheckSpringPlayerCollisions.constprop.0.isra.0
	test	eax, eax
	je	.L26
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_Spring_Activated[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	add	BYTE PTR 64[rbx], 1
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	je	.L30
.L26:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L28
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L29
.L28:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L30:
	cmp	BYTE PTR 80[rbx], 1
	ja	.L26
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76544
	mov	QWORD PTR 24[rbx], rax
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L29:
	mov	rcx, rbp
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Spring_Activated;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Spring_Activated
Task_Spring_Activated:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	lea	rbp, 16[rbx]
	mov	r8, rbx
	mov	rcx, rbp
	movzx	edx, BYTE PTR 1[rdi]
	call	CheckSpringPlayerCollisions.constprop.0.isra.0
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L32
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L33
.L32:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L34
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	sub	BYTE PTR 64[rbx], 1
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	je	.L36
.L35:
	mov	rcx, rbp
	lea	rdi, Task_Spring_Idle[rip]
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
.L34:
	mov	rcx, rbp
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L36:
	cmp	BYTE PTR 80[rbx], 1
	ja	.L35
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76160
	mov	QWORD PTR 24[rbx], rax
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Big_DownLeft
	.def	CreateEntity_Spring_Big_DownLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Big_DownLeft
CreateEntity_Spring_Big_DownLeft:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 6
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Normal_Down
	.def	CreateEntity_Spring_Normal_Down;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Normal_Down
CreateEntity_Spring_Normal_Down:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 1
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Big_DownRight
	.def	CreateEntity_Spring_Big_DownRight;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Big_DownRight
CreateEntity_Spring_Big_DownRight:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 7
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Normal_Left
	.def	CreateEntity_Spring_Normal_Left;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Normal_Left
CreateEntity_Spring_Normal_Left:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 2
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Normal_Right
	.def	CreateEntity_Spring_Normal_Right;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Normal_Right
CreateEntity_Spring_Normal_Right:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 3
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Big_UpLeft
	.def	CreateEntity_Spring_Big_UpLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Big_UpLeft
CreateEntity_Spring_Big_UpLeft:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 4
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Normal_Up
	.def	CreateEntity_Spring_Normal_Up;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Normal_Up
CreateEntity_Spring_Normal_Up:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	xor	ecx, ecx
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Big_UpRight
	.def	CreateEntity_Spring_Big_UpRight;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Big_UpRight
CreateEntity_Spring_Big_UpRight:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 5
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Small_UpLeft
	.def	CreateEntity_Spring_Small_UpLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Small_UpLeft
CreateEntity_Spring_Small_UpLeft:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 8
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spring_Small_UpRight
	.def	CreateEntity_Spring_Small_UpRight;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spring_Small_UpRight
CreateEntity_Spring_Small_UpRight:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	r9d, r9b
	mov	DWORD PTR 32[rsp], r9d
	movzx	r9d, r8w
	movzx	r8d, dx
	mov	rdx, rcx
	mov	ecx, 9
	call	CreateEntity_Spring
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
sSpring_MusicPlant_Soundeffects:
	.word	300
	.word	301
	.word	302
	.word	303
	.word	0
	.align 8
sSpringDirToPlayerTransition:
	.ascii "\16\17\20\21\22\23\24\25\22\23"
	.align 32
sSpringAnimationData:
	.word	536
	.word	0
	.word	20
	.word	0
	.word	536
	.word	0
	.word	20
	.word	2048
	.word	536
	.word	2
	.word	20
	.word	1024
	.word	536
	.word	2
	.word	20
	.word	0
	.word	536
	.word	4
	.word	20
	.word	1024
	.word	536
	.word	4
	.word	20
	.word	0
	.word	536
	.word	4
	.word	20
	.word	3072
	.word	536
	.word	4
	.word	20
	.word	2048
	.word	536
	.word	6
	.word	15
	.word	1024
	.word	536
	.word	6
	.word	15
	.word	0
	.word	572
	.word	0
	.word	20
	.word	0
	.word	572
	.word	0
	.word	20
	.word	2048
	.word	573
	.word	0
	.word	20
	.word	1024
	.word	573
	.word	0
	.word	20
	.word	0
	.word	573
	.word	2
	.word	25
	.word	1024
	.word	573
	.word	2
	.word	25
	.word	0
	.word	573
	.word	2
	.word	25
	.word	3072
	.word	573
	.word	2
	.word	25
	.word	2048
	.word	573
	.word	4
	.word	20
	.word	1024
	.word	573
	.word	4
	.word	20
	.word	0
	.word	604
	.word	0
	.word	20
	.word	0
	.word	604
	.word	0
	.word	20
	.word	2048
	.word	604
	.word	2
	.word	20
	.word	1024
	.word	604
	.word	2
	.word	20
	.word	0
	.word	604
	.word	4
	.word	16
	.word	1024
	.word	604
	.word	4
	.word	16
	.word	0
	.word	604
	.word	4
	.word	16
	.word	3072
	.word	604
	.word	4
	.word	16
	.word	2048
	.word	604
	.word	6
	.word	12
	.word	1024
	.word	604
	.word	6
	.word	12
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
