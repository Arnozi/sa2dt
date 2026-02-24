	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable_SpecialRing;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable_SpecialRing
TaskDestructor_Interactable_SpecialRing:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_SpecialRingVisible;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpecialRingVisible
Task_SpecialRingVisible:
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
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	cmp	BYTE PTR 141[rsi], 1
	mov	rbx, QWORD PTR 24[rax]
	je	.L19
.L4:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	r8d, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 80[rbx]
	mov	rbp, QWORD PTR [rax]
	test	BYTE PTR 36[rsi], -128
	je	.L20
.L5:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	lea	eax, 128[rdx]
	lea	ecx, 128[r8]
	mov	r10d, DWORD PTR [r9]
	mov	r9d, DWORD PTR 4[r9]
	sub	eax, r10d
	cmp	ax, 682
	ja	.L8
	sub	ecx, r9d
	cmp	cx, 496
	ja	.L8
	sub	edx, r10d
	sub	r8d, r9d
	lea	rsi, 16[rbx]
	mov	WORD PTR 54[rbx], dx
	mov	rcx, rsi
	mov	WORD PTR 56[rbx], r8w
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L8:
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
.L20:
	lea	rcx, 16[rbx]
	mov	r9, rsi
	call	Coll_Player_Entity_Intersection
	test	eax, 983040
	jne	.L6
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	test	rbp, rbp
	je	.L5
	mov	eax, DWORD PTR 0[rbp]
	mov	ecx, DWORD PTR 4[rbp]
	sar	eax, 8
	sar	ecx, 8
	add	eax, 16
	add	ecx, 32
	sub	eax, edx
	cmp	ax, 32
	ja	.L5
	sub	ecx, r8d
	cmp	cx, 32
	ja	.L5
	mov	rax, QWORD PTR [rdi]
	mov	BYTE PTR 61[rax], 0
.L6:
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	mov	BYTE PTR 64[rbx], 1
	mov	ecx, 298
	add	BYTE PTR [rax], 1
	mov	eax, 730
	mov	WORD PTR 34[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_SpecialRingCollected[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	edx, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 80[rbx]
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	Task_SpecialRingCollected;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpecialRingCollected
Task_SpecialRingCollected:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	test	BYTE PTR 49[rax], 64
	jne	.L22
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, DWORD PTR 80[rax]
	mov	r8d, DWORD PTR 84[rax]
	mov	ebx, DWORD PTR [r11]
	lea	edx, 128[r9]
	mov	r11d, DWORD PTR 4[r11]
	lea	r10d, 128[r8]
	sub	edx, ebx
	cmp	dx, 682
	ja	.L22
	sub	r10d, r11d
	cmp	r10w, 496
	ja	.L22
	sub	r9d, ebx
	sub	r8d, r11d
	lea	rsi, 16[rax]
	mov	WORD PTR 54[rax], r9w
	mov	rcx, rsi
	mov	WORD PTR 56[rax], r8w
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L22:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SpecialRing
	.def	CreateEntity_SpecialRing;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SpecialRing
CreateEntity_SpecialRing:
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
	cmp	BYTE PTR [rax], 2
	mov	rsi, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	r12d, r9d
	jbe	.L25
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	lea	rax, TaskDestructor_Interactable_SpecialRing[rip]
	xor	r9d, r9d
	mov	r8d, 16448
	mov	edx, 88
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_SpecialRingVisible[rip]
	call	TaskCreate
	movzx	edx, BYTE PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, bp
	sal	eax, 5
	mov	ecx, edx
	add	eax, edx
	movzx	edx, di
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 80[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	WORD PTR 8[rbx], bp
	add	eax, edx
	mov	edx, r12d
	mov	WORD PTR 10[rbx], di
	sal	eax, 3
	mov	QWORD PTR [rbx], rsi
	mov	DWORD PTR 84[rbx], eax
	movzx	eax, cl
	mov	ecx, 4351
	mov	ah, dl
	xor	edx, edx
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 9
	mov	WORD PTR 12[rbx], ax
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 730
	mov	BYTE PTR 64[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
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
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
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
