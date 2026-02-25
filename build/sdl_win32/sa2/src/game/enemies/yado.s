	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_YadoMain
	.def	Task_YadoMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_YadoMain
Task_YadoMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 88[rbx]
	mov	r8d, DWORD PTR 92[rbx]
	lea	r12, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	sar	esi, 8
	sar	r8d, 8
	mov	edx, esi
	mov	ecx, r8d
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	edx, esi
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r12
	mov	DWORD PTR 40[rsp], 0
	mov	QWORD PTR 32[rsp], rbp
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L10
.L2:
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
	mov	BYTE PTR 0[r13], al
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L4:
	sub	BYTE PTR 96[rbx], 1
	jne	.L5
	mov	rax, QWORD PTR [rdi]
	mov	ecx, 497
	lea	rdi, Task_8055084[rip]
	mov	BYTE PTR 96[rbx], 120
	mov	r8d, -255
	mov	QWORD PTR 40[rax], rdi
	mov	WORD PTR 34[rbx], cx
	mov	WORD PTR 64[rbx], r8w
.L6:
	mov	edx, DWORD PTR 92[rbx]
	mov	ecx, DWORD PTR 88[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L10:
	mov	ecx, 153
	call	m4aSongNumStart
	mov	r9d, -2304
	mov	r10d, 50
	mov	r11d, 1281
	mov	ecx, 153
	mov	WORD PTR 22[rbp], r9w
	mov	WORD PTR 108[rbp], r10w
	mov	WORD PTR 116[rbp], r11w
	call	m4aSongNumStart
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L5:
	mov	eax, DWORD PTR 12[rbp]
	sar	eax, 8
	cmp	esi, eax
	jle	.L7
	test	BYTE PTR 49[rbx], 4
	je	.L6
.L8:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_8055378[rip]
	mov	edx, -253
	mov	QWORD PTR 40[rax], rdi
	mov	eax, 497
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	jge	.L6
	test	BYTE PTR 49[rbx], 4
	jne	.L6
	jmp	.L8
	.seh_endproc
	.p2align 4
	.globl	Task_8055378
	.def	Task_8055378;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8055378
Task_8055378:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	r8d, DWORD PTR 92[rbx]
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
	mov	DWORD PTR 40[rsp], 0
	mov	QWORD PTR 32[rsp], r12
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L20
.L12:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L13
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L14
.L13:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L14:
	mov	edx, DWORD PTR 92[rbx]
	mov	ecx, DWORD PTR 88[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	test	eax, eax
	jne	.L15
	call	DisplaySprite
	mov	edx, DWORD PTR 48[rbx]
	lea	rdi, Task_YadoMain[rip]
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 497
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	mov	ecx, -2304
	mov	r8d, 50
	mov	r9d, 1281
	mov	WORD PTR 22[r12], cx
	mov	ecx, 153
	mov	WORD PTR 108[r12], r8w
	mov	WORD PTR 116[r12], r9w
	call	m4aSongNumStart
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L15:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_8055084
	.def	Task_8055084;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8055084
Task_8055084:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 88[rbx]
	mov	edi, DWORD PTR 92[rbx]
	lea	rbp, 16[rbx]
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	edx, esi
	mov	ecx, edi
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	WORD PTR 56[rbx], cx
	test	BYTE PTR 36[r12], 2
	jne	.L22
	mov	r9d, 1
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, rbp
	call	Coll_Player_Enemy_Attack
	cmp	eax, 1
	je	.L45
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	QWORD PTR 32[rsp], r12
	mov	rcx, rbp
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L26
.L25:
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
	mov	BYTE PTR [r14], al
.L45:
	mov	rcx, QWORD PTR 0[r13]
	add	rsp, 80
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
.L22:
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	QWORD PTR 32[rsp], r12
	mov	rcx, rbp
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L26
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L25
	mov	rdx, QWORD PTR 0[r13]
	cmp	DWORD PTR 96[rax], -1
	mov	r12, QWORD PTR 24[rdx]
	je	.L25
	mov	r8d, DWORD PTR [rax]
	movsx	ecx, BYTE PTR 76[rbx]
	movsx	edx, BYTE PTR 100[rax]
	sar	r8d, 8
	add	ecx, esi
	add	edx, r8d
	cmp	ecx, edx
	jle	.L46
.L27:
	movsx	edx, BYTE PTR 102[rax]
	add	edx, r8d
	cmp	ecx, edx
	jg	.L25
.L28:
	mov	r8d, DWORD PTR 4[rax]
	movsx	ecx, BYTE PTR 77[rbx]
	movsx	edx, BYTE PTR 101[rax]
	sar	r8d, 8
	add	ecx, edi
	add	edx, r8d
	cmp	ecx, edx
	jg	.L29
	movsx	r9d, BYTE PTR 79[rbx]
	add	r9d, edi
	cmp	edx, r9d
	jle	.L30
	cmp	ecx, edx
	jne	.L25
	.p2align 4,,10
	.p2align 3
.L29:
	movsx	eax, BYTE PTR 103[rax]
	add	eax, r8d
	cmp	ecx, eax
	jg	.L25
.L30:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L47
.L31:
	movsx	edi, di
	movsx	esi, si
	mov	edx, edi
	mov	ecx, esi
	call	CreateDustCloud
	mov	edx, edi
	mov	ecx, esi
	call	CreateTrappedAnimal
	mov	edx, edi
	mov	ecx, esi
	call	CreateEnemyDefeatScoreAndManageLives
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L33:
	mov	edx, DWORD PTR 92[rbx]
	mov	ecx, DWORD PTR 88[rbx]
	call	Player_UpdateHomingPosition
	movzx	eax, BYTE PTR 96[rbx]
	sub	eax, 1
	mov	BYTE PTR 96[rbx], al
	test	al, al
	jne	.L34
	mov	rax, QWORD PTR 0[r13]
	mov	r8d, 497
	mov	BYTE PTR 96[rbx], 120
	mov	r9d, -256
	lea	rdi, Task_YadoMain[rip]
	mov	WORD PTR 34[rbx], r8w
	mov	WORD PTR 64[rbx], r9w
	mov	QWORD PTR 40[rax], rdi
.L35:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 80
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
.L34:
	cmp	al, 60
	je	.L48
	cmp	al, 6
	jne	.L35
	mov	eax, 497
	mov	edx, -254
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L26:
	mov	r10d, -2304
	mov	r11d, 50
	mov	eax, 1281
	mov	ecx, 153
	mov	WORD PTR 22[r12], r10w
	mov	WORD PTR 108[r12], r11w
	mov	WORD PTR 116[r12], ax
	call	m4aSongNumStart
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L46:
	movsx	r9d, BYTE PTR 78[rbx]
	add	r9d, esi
	cmp	edx, r9d
	jle	.L28
	cmp	ecx, edx
	jne	.L25
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L48:
	mov	DWORD PTR 48[rsp], 32636932
	mov	BYTE PTR 52[rsp], 0
	test	BYTE PTR 49[rbx], 4
	je	.L37
	add	esi, 6
	xor	eax, eax
	sal	esi, 8
.L38:
	sub	edi, 6
	mov	ecx, 384
	mov	WORD PTR 54[rsp], ax
	mov	WORD PTR 56[rsp], cx
	sal	edi, 8
	lea	rcx, 48[rsp]
	mov	DWORD PTR 60[rsp], esi
	mov	DWORD PTR 64[rsp], edi
	call	CreateProjectile
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L37:
	sub	esi, 5
	mov	eax, 512
	sal	esi, 8
	jmp	.L38
.L47:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 3
	movzx	edx, WORD PTR 8[r12]
	mov	BYTE PTR 1[rax], dl
	movzx	edx, WORD PTR 10[r12]
	mov	BYTE PTR 2[rax], dl
	movzx	edx, BYTE PTR 13[r12]
	mov	BYTE PTR 3[rax], dl
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_Yado
	.def	TaskDestructor_Yado;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Yado
TaskDestructor_Yado:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Yado
	.def	CreateEntity_Yado;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Yado
CreateEntity_Yado:
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
	lea	rax, TaskDestructor_Yado[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16528
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_YadoMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR 96[rbx], 120
	movzx	edx, al
	mov	dh, cl
	mov	ecx, 12
	mov	WORD PTR 12[rbx], dx
	cmp	BYTE PTR 4[rdi], 0
	setne	BYTE PTR 97[rbx]
	sal	esi, 5
	add	esi, eax
	sal	ebp, 5
	mov	eax, esi
	movzx	esi, si
	sal	eax, 11
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	lea	r8d, [rax+rbp]
	mov	eax, r8d
	sal	r8d, 16
	or	r8d, esi
	sal	eax, 11
	movd	xmm0, r8d
	mov	DWORD PTR 92[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 32571392
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
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	CreateDustCloud;	.scl	2;	.type	32;	.endef
	.def	CreateTrappedAnimal;	.scl	2;	.type	32;	.endef
	.def	CreateEnemyDefeatScoreAndManageLives;	.scl	2;	.type	32;	.endef
	.def	CreateProjectile;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
