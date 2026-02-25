	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_AeroEggMain;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_AeroEggMain
TaskDestructor_AeroEggMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 400[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 144[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 216[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 280[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 344[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DeleteAeroEggBombTask;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteAeroEggBombTask
Task_DeleteAeroEggBombTask:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_8041880;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8041880
sub_8041880:
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
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 5[rcx]
	sub	ax, WORD PTR [r12]
	mov	WORD PTR 174[rcx], ax
	movzx	eax, WORD PTR 9[rcx]
	lea	rsi, 136[rcx]
	mov	rbx, rcx
	sub	ax, WORD PTR 4[r12]
	lea	rdi, 272[rbx]
	mov	WORD PTR 176[rcx], ax
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 208[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 5[rbx]
	sub	ax, WORD PTR [r12]
	mov	rcx, rsi
	mov	WORD PTR 246[rbx], ax
	mov	eax, -14
	sub	ax, WORD PTR 4[r12]
	add	ax, WORD PTR 9[rbx]
	mov	WORD PTR 248[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	xor	esi, esi
	call	DisplaySprite
	mov	rbp, QWORD PTR .refptr.gSineTable[rip]
	mov	r13, QWORD PTR .refptr.gStageTime[rip]
.L5:
	mov	eax, DWORD PTR 0[r13]
	mov	ecx, DWORD PTR 4[rbx]
	lea	edx, [rax+rax*2]
	mov	eax, esi
	add	esi, 1
	sar	ecx, 8
	sal	eax, 7
	sub	ecx, DWORD PTR [r12]
	lea	eax, [rax+rdx*4]
	and	eax, 1020
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sar	ax, 9
	lea	edx, 500[rax]
	and	edx, 1023
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	movsx	r8d, WORD PTR 0[rbp+rax*2]
	imul	edx, esi
	imul	r8d, esi
	mov	eax, r8d
	sal	eax, 4
	add	eax, r8d
	sar	eax, 14
	add	eax, ecx
	mov	ecx, DWORD PTR 8[rbx]
	mov	WORD PTR 310[rbx], ax
	mov	eax, edx
	sal	eax, 4
	sar	ecx, 8
	sub	ecx, DWORD PTR 4[r12]
	add	eax, edx
	sar	eax, 14
	lea	eax, 20[rcx+rax]
	mov	rcx, rdi
	mov	WORD PTR 312[rbx], ax
	call	DisplaySprite
	cmp	esi, 3
	jne	.L5
	mov	eax, DWORD PTR 0[r13]
	mov	ecx, DWORD PTR 4[rbx]
	lea	rsi, 336[rbx]
	lea	eax, [rax+rax*2]
	sar	ecx, 8
	sub	ecx, DWORD PTR [r12]
	lea	eax, 512[0+rax*4]
	and	eax, 1020
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sar	ax, 9
	lea	edx, 500[rax]
	and	edx, 1023
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	movsx	r8d, WORD PTR 0[rbp+rax*2]
	mov	eax, r8d
	sal	eax, 4
	sub	eax, r8d
	sar	eax, 12
	add	eax, ecx
	mov	ecx, DWORD PTR 8[rbx]
	mov	WORD PTR 374[rbx], ax
	mov	eax, edx
	sal	eax, 4
	sar	ecx, 8
	sub	ecx, DWORD PTR 4[r12]
	sub	eax, edx
	sar	eax, 12
	lea	eax, 20[rcx+rax]
	mov	rcx, rsi
	mov	WORD PTR 376[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	CreateAeroEggBombDebris;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateAeroEggBombDebris
CreateAeroEggBombDebris:
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
	mov	edi, DWORD PTR 128[rsp]
	mov	rbp, rcx
	mov	esi, edx
	mov	ebx, r8d
	mov	r12d, r9d
	mov	r8d, 24832
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, Task_AeroEggBombDebris[rip]
	call	TaskCreate
	movzx	edx, di
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, r12w
	lea	ecx, 256[rdx]
	mov	rax, QWORD PTR 24[rax]
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [r9+rcx*2]
	movsx	r9d, WORD PTR [r9+rdx*2]
	mov	DWORD PTR 4[rax], esi
	sar	esi, 8
	mov	DWORD PTR 8[rax], ebx
	sar	ebx, 8
	lea	rdi, 24[rax]
	imul	ecx, r8d
	mov	DWORD PTR [rax], 0
	imul	r9d, r8d
	mov	QWORD PTR 16[rax], rbp
	mov	WORD PTR 62[rax], si
	sar	ecx, 14
	mov	WORD PTR 64[rax], bx
	mov	WORD PTR 12[rax], cx
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	sar	r9d, 14
	mov	WORD PTR 14[rax], r9w
	imul	edx, DWORD PTR [rcx], 1663525
	add	edx, 1013904223
	mov	DWORD PTR [rcx], edx
	and	edx, 1
	mov	rdx, QWORD PTR 400[rbp]
	je	.L8
	add	rdx, 1024
	mov	ecx, 666
.L9:
	mov	r8d, -256
	mov	QWORD PTR 32[rax], rdx
	xor	edx, edx
	mov	WORD PTR 42[rax], cx
	xor	ecx, ecx
	mov	WORD PTR 40[rax], dx
	mov	WORD PTR 60[rax], cx
	mov	rcx, rdi
	mov	WORD PTR 72[rax], r8w
	mov	DWORD PTR 66[rax], 1280
	mov	BYTE PTR 74[rax], 16
	mov	BYTE PTR 77[rax], 0
	mov	DWORD PTR 80[rax], -1
	mov	DWORD PTR 56[rax], 8192
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L8:
	add	rdx, 1312
	mov	ecx, 667
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	Task_CreateAeroEggBombMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CreateAeroEggBombMain
Task_CreateAeroEggBombMain:
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
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rdi]
	mov	r8d, DWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR [rbx]
	mov	ecx, DWORD PTR 8[rbx]
	lea	rsi, 24[rbx]
	add	eax, 1
	mov	DWORD PTR [rbx], eax
	cmp	eax, 15
	ja	.L11
	mov	rdx, QWORD PTR 16[rbx]
	add	ecx, 256
	mov	DWORD PTR 8[rbx], ecx
	sar	ecx, 8
	movzx	edx, WORD PTR 5[rdx]
	mov	WORD PTR 64[rbx], cx
	sub	edx, r8d
	mov	WORD PTR 62[rbx], dx
	cmp	eax, 15
	je	.L12
	mov	edx, DWORD PTR 4[rbx]
	sar	edx, 8
.L13:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	ecx, DWORD PTR 4[rbp]
	add	edx, r8d
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 8
	mov	r8d, 1
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	js	.L20
.L16:
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 20[rax], 0
	jne	.L21
.L18:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	eax, WORD PTR 14[rbx]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 4[rbx]
	movsx	r10d, WORD PTR 12[rbx]
	add	eax, 16
	mov	WORD PTR 14[rbx], ax
	cwde
	test	BYTE PTR 36[r9], -128
	je	.L14
	add	edx, r10d
	add	ecx, eax
.L15:
	mov	DWORD PTR 8[rbx], ecx
	sar	ecx, 8
	mov	DWORD PTR 4[rbx], edx
	sar	edx, 8
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], cx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L21:
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	xor	r9d, r9d
	mov	rcx, rsi
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	sar	r8d, 8
	sar	edx, 8
	add	r8d, DWORD PTR 4[rbp]
	add	edx, DWORD PTR 0[rbp]
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L18
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 22[rax], 0
	jne	.L18
	mov	edx, 629
	mov	ecx, -255
	mov	BYTE PTR 21[rax], 30
	mov	WORD PTR 226[rax], dx
	mov	WORD PTR 256[rax], cx
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L20:
	mov	ecx, 249
	call	m4aSongNumStart
	xor	r8d, r8d
	mov	r9d, 663
	mov	BYTE PTR 72[rbx], 0
	mov	WORD PTR 12[rbx], r8w
	mov	edx, 16
	mov	ecx, 2048
	mov	r8d, 128
	mov	WORD PTR 42[rbx], r9w
	mov	r9d, 20
	mov	DWORD PTR 32[rsp], 131
	call	CreateScreenShake
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r9d, 1536
	mov	rcx, QWORD PTR 16[rbx]
	mov	DWORD PTR 32[rsp], 738
	call	CreateAeroEggBombDebris
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r9d, 1536
	mov	rcx, QWORD PTR 16[rbx]
	mov	DWORD PTR 32[rsp], 798
	call	CreateAeroEggBombDebris
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r9d, 1408
	mov	rcx, QWORD PTR 16[rbx]
	mov	DWORD PTR 32[rsp], 708
	call	CreateAeroEggBombDebris
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r9d, 1408
	mov	rcx, QWORD PTR 16[rbx]
	mov	DWORD PTR 32[rsp], 828
	call	CreateAeroEggBombDebris
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_AeroEggBombHitGround[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	mov	r9d, DWORD PTR 56[rbp]
	sal	r9d, 8
	add	r9d, r10d
	add	edx, r9d
	mov	r9d, DWORD PTR 60[rbp]
	sal	r9d, 8
	add	eax, r9d
	add	ecx, eax
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L12:
	mov	ecx, 248
	call	m4aSongNumStart
	mov	r8d, DWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rdx]
	mov	eax, r8d
	sal	eax, 8
	sar	ecx, 8
	sub	edx, eax
	mov	DWORD PTR 4[rbx], edx
	sar	edx, 8
	jmp	.L13
	.seh_endproc
	.p2align 4
	.def	Task_AeroEggBombHitGround;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AeroEggBombHitGround
Task_AeroEggBombHitGround:
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
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 4[rbx]
	movsx	r9d, WORD PTR 12[rbx]
	lea	rdi, 24[rbx]
	mov	r8d, DWORD PTR 8[rbx]
	test	BYTE PTR 36[rcx], -128
	je	.L23
	add	edx, r9d
.L24:
	mov	rax, QWORD PTR 16[rbx]
	mov	DWORD PTR 4[rbx], edx
	sar	r8d, 8
	sar	edx, 8
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], r8w
	cmp	BYTE PTR 20[rax], 0
	jne	.L29
.L26:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L28
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_DeleteAeroEggBombTask[rip]
	mov	QWORD PTR 40[rax], rsi
.L28:
	mov	rcx, rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L23:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 56[r10]
	sal	eax, 8
	add	eax, r9d
	add	edx, eax
	mov	eax, DWORD PTR 60[r10]
	sal	eax, 8
	add	r8d, eax
	mov	DWORD PTR 8[rbx], r8d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L29:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	add	r8d, DWORD PTR 4[rax]
	add	edx, DWORD PTR [rax]
	mov	QWORD PTR 32[rsp], rcx
	mov	rcx, rdi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L26
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 22[rax], 0
	jne	.L26
	mov	edx, 629
	mov	ecx, -255
	mov	BYTE PTR 21[rax], 30
	mov	WORD PTR 226[rax], dx
	mov	WORD PTR 256[rax], cx
	jmp	.L26
	.seh_endproc
	.p2align 4
	.def	Task_AeroEggBombDebris;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AeroEggBombDebris
Task_AeroEggBombDebris:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 14[rbx]
	mov	edx, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	movsx	r9d, WORD PTR 12[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	add	eax, 80
	mov	WORD PTR 14[rbx], ax
	cwde
	test	BYTE PTR 36[rdi], -128
	je	.L31
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	add	edx, r9d
	add	ecx, eax
.L32:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	DWORD PTR 8[rbx], ecx
	sar	ecx, 8
	mov	r9d, 8
	mov	DWORD PTR 4[rbx], edx
	sar	edx, 8
	mov	r8d, 1
	mov	WORD PTR 62[rbx], dx
	add	edx, DWORD PTR [r12]
	mov	WORD PTR 64[rbx], cx
	add	ecx, DWORD PTR 4[r12]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	js	.L37
.L33:
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 20[rax], 0
	jne	.L38
.L35:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L31:
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	r8d, DWORD PTR 56[r12]
	sal	r8d, 8
	add	r8d, r9d
	add	edx, r8d
	mov	r8d, DWORD PTR 60[r12]
	sal	r8d, 8
	add	eax, r8d
	add	ecx, eax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L37:
	cmp	WORD PTR 14[rbx], 0
	jle	.L33
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L38:
	mov	r8d, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	xor	r9d, r9d
	mov	rcx, rsi
	sar	r8d, 8
	sar	edx, 8
	add	r8d, DWORD PTR 4[r12]
	add	edx, DWORD PTR [r12]
	mov	QWORD PTR 32[rsp], rdi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L35
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 22[rax], 0
	jne	.L35
	mov	edx, 629
	mov	ecx, -255
	mov	BYTE PTR 21[rax], 30
	mov	WORD PTR 226[rax], dx
	mov	WORD PTR 256[rax], cx
	jmp	.L35
	.seh_endproc
	.p2align 4
	.def	sub_80424EC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80424EC
sub_80424EC:
	.seh_endprologue
	movzx	eax, BYTE PTR 22[rcx]
	test	al, al
	je	.L40
	sub	eax, 1
	mov	BYTE PTR 21[rcx], 0
	mov	BYTE PTR 22[rcx], al
	test	al, al
	jne	.L39
	cmp	BYTE PTR 20[rcx], 0
	mov	edx, 4
	mov	BYTE PTR 257[rcx], -1
	cmove	eax, edx
	cmp	BYTE PTR 20[rcx], 1
	sbb	edx, edx
	and	edx, 39
	mov	BYTE PTR 256[rcx], al
	add	dx, 629
	mov	WORD PTR 226[rcx], dx
.L39:
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	movzx	eax, BYTE PTR 21[rcx]
	test	al, al
	je	.L39
	sub	eax, 1
	mov	BYTE PTR 21[rcx], al
	test	al, al
	jne	.L39
	mov	eax, 629
	mov	edx, -256
	mov	WORD PTR 226[rcx], ax
	mov	WORD PTR 256[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8042560.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8042560.isra.0
sub_8042560.isra.0:
	.seh_endprologue
	test	cl, cl
	je	.L50
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rcx, sPalAeroEggHit[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR 256[rdx], xmm0
	mov	r8, QWORD PTR 16[rax]
	mov	r9, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR 272[rdx], r8
	or	DWORD PTR [rax], 2
	mov	QWORD PTR 280[rdx], r9
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	movdqu	xmm1, XMMWORD PTR sPalAeroEggHit[rip+32]
	movdqu	xmm2, XMMWORD PTR sPalAeroEggHit[rip+48]
	movups	XMMWORD PTR 256[rax], xmm1
	movups	XMMWORD PTR 272[rax], xmm2
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	ret
	.seh_endproc
	.p2align 4
	.def	Task_AeroEggMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AeroEggMain
Task_AeroEggMain:
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
	movsx	eax, WORD PTR 12[rbx]
	add	eax, DWORD PTR 4[rbx]
	mov	rcx, rbx
	add	eax, 576
	mov	DWORD PTR 4[rbx], eax
	call	sub_80424EC
	call	sub_8041880
	movzx	ecx, BYTE PTR 22[rbx]
	call	sub_8042560.isra.0
	sub	DWORD PTR [rbx], 1
	jne	.L52
	mov	eax, 180
	lea	rdx, Task_80426C4[rip]
	mov	WORD PTR 18[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L52:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80423EC.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80423EC.isra.0
sub_80423EC.isra.0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 20[rcx]
	mov	rbx, rcx
	test	al, al
	je	.L54
	sub	eax, 1
	mov	BYTE PTR 20[rcx], al
	test	al, 1
	jne	.L63
	mov	ecx, 235
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 20[rbx]
	mov	BYTE PTR 22[rbx], 30
	test	al, al
	jne	.L58
.L64:
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	r8d, 668
	mov	BYTE PTR 256[rbx], 4
	mov	WORD PTR 226[rbx], r8w
	mov	ecx, DWORD PTR [rax]
	lea	edx, 1000[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L59
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L59
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L59:
	mov	BYTE PTR 257[rbx], -1
.L54:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	mov	ecx, 143
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 20[rbx]
	mov	BYTE PTR 22[rbx], 30
	test	al, al
	je	.L64
.L58:
	mov	edx, 629
	mov	ecx, -254
	mov	WORD PTR 226[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 256[rbx], cx
	cmp	BYTE PTR [rdx], 28
	je	.L54
	cmp	al, 4
	jne	.L54
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DeleteAeroEggTask;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteAeroEggTask
Task_DeleteAeroEggTask:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateAeroEgg
	.def	CreateAeroEgg;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateAeroEgg
CreateAeroEgg:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 2097152
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_AeroEggMain[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	lea	rax, TaskDestructor_AeroEggMain[rip]
	mov	edx, 408
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	eax, 8
	cmp	BYTE PTR [rdx], 0
	je	.L67
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	lea	eax, 6[rax+rax]
.L67:
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 20[rbx], al
	mov	edx, 225280
	cmp	BYTE PTR [rcx], 28
	jne	.L68
	shr	al
	mov	edx, 4615680
	mov	BYTE PTR 20[rbx], al
.L68:
	xor	eax, eax
	mov	DWORD PTR 4[rbx], edx
	mov	ecx, 45
	mov	WORD PTR 21[rbx], ax
	movabs	rax, 5497558161920
	mov	DWORD PTR [rbx], 120
	mov	QWORD PTR 8[rbx], rax
	mov	DWORD PTR 16[rbx], 0
	mov	BYTE PTR 23[rbx], 0
	call	VramMalloc
	mov	ecx, 64
	mov	DWORD PTR 174[rbx], 0
	mov	QWORD PTR 400[rbx], rax
	call	VramMalloc
	movzx	esi, WORD PTR .LC0[rip]
	xor	edx, edx
	mov	DWORD PTR 152[rbx], 43319296
	mov	WORD PTR 172[rbx], dx
	mov	ecx, 12
	mov	QWORD PTR 144[rbx], rax
	mov	DWORD PTR 178[rbx], 1280
	mov	WORD PTR 184[rbx], si
	mov	BYTE PTR 186[rbx], 16
	mov	BYTE PTR 189[rbx], 0
	mov	DWORD PTR 192[rbx], -1
	mov	DWORD PTR 168[rbx], 9216
	mov	DWORD PTR 246[rbx], 0
	call	VramMalloc
	xor	ecx, ecx
	mov	DWORD PTR 224[rbx], 41222144
	mov	WORD PTR 244[rbx], cx
	mov	ecx, 8
	mov	QWORD PTR 216[rbx], rax
	mov	DWORD PTR 250[rbx], 1344
	mov	WORD PTR 256[rbx], si
	mov	BYTE PTR 258[rbx], 16
	mov	BYTE PTR 261[rbx], 0
	mov	DWORD PTR 264[rbx], -1
	mov	DWORD PTR 240[rbx], 9216
	mov	DWORD PTR 310[rbx], 0
	call	VramMalloc
	xor	r8d, r8d
	mov	DWORD PTR 288[rbx], 43581440
	lea	rcx, 272[rbx]
	mov	WORD PTR 308[rbx], r8w
	mov	QWORD PTR 280[rbx], rax
	mov	DWORD PTR 314[rbx], 1152
	mov	WORD PTR 320[rbx], si
	mov	BYTE PTR 322[rbx], 16
	mov	BYTE PTR 325[rbx], 0
	mov	DWORD PTR 328[rbx], -1
	mov	DWORD PTR 304[rbx], 8192
	call	UpdateSpriteAnimation
	mov	ecx, 25
	mov	DWORD PTR 374[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	mov	DWORD PTR 352[rbx], 43384832
	mov	QWORD PTR 344[rbx], rax
	mov	WORD PTR 372[rbx], r9w
	mov	DWORD PTR 378[rbx], 1088
	mov	WORD PTR 384[rbx], si
	mov	BYTE PTR 386[rbx], 16
	mov	BYTE PTR 389[rbx], 0
	mov	DWORD PTR 392[rbx], -1
	mov	DWORD PTR 368[rbx], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8041D34
	.def	sub_8041D34;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8041D34
sub_8041D34:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	movzx	eax, BYTE PTR 130[rcx]
	sub	eax, 1
	cmp	BYTE PTR 132[rcx], 0
	mov	BYTE PTR 130[rcx], al
	mov	rbx, rcx
	jne	.L72
	movzx	ebp, al
	imul	edx, ebp, -1431655765
	ror	edx, 2
	cmp	edx, 357913941
	jbe	.L87
	test	al, 3
	je	.L88
.L75:
	lea	rdi, 48[rbx]
	mov	esi, 4
.L78:
	mov	r8d, DWORD PTR 16[rdi]
	test	r8d, r8d
	jne	.L76
	cmp	ebp, esi
	je	.L77
	lea	eax, 26[rsi]
	cmp	ebp, eax
	je	.L77
.L76:
	add	esi, 1
	add	rdi, 20
	cmp	esi, 7
	jne	.L78
	cmp	ebp, 41
	je	.L82
	cmp	ebp, 18
	je	.L82
.L72:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r9d, 2863311531
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	DWORD PTR 40[rsp], 1
	movq	xmm0, QWORD PTR 28[rbx]
	imul	edx, DWORD PTR [r8], 1663525
	movq	xmm1, QWORD PTR [r10]
	psrad	xmm0, 8
	psubd	xmm0, xmm1
	add	edx, 1013904223
	mov	ecx, edx
	imul	edx, edx, 1663525
	and	ecx, 15
	mov	eax, ecx
	lea	edi, [rcx+rcx]
	imul	rax, r9
	add	edx, 1013904223
	movd	xmm1, edi
	lea	edi, 0[0+rcx*4]
	shr	rax, 34
	lea	r9d, [rax+rax*2]
	mov	eax, ecx
	add	r9d, r9d
	sub	eax, r9d
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 15
	cdqe
	lea	r10d, [r9+r9]
	sal	r9d, 2
	movd	xmm2, r10d
	mov	r10, QWORD PTR .refptr.gTileInfoBossScrews[rip]
	movd	xmm3, r9d
	mov	r9d, 64
	add	edx, 1013904223
	mov	WORD PTR 64[rsp], r9w
	punpckldq	xmm1, xmm2
	mov	r9, QWORD PTR .refptr.VRAM[rip]
	imul	ecx, edx, 1663525
	psubd	xmm0, xmm1
	and	edx, 1023
	movd	xmm1, edi
	punpckldq	xmm1, xmm3
	add	ecx, 1013904223
	paddd	xmm0, xmm1
	mov	DWORD PTR [r8], ecx
	lea	r8, [rax+rax*2]
	and	cx, 511
	lea	r8, [r10+r8*4]
	mov	eax, DWORD PTR [r8]
	movq	QWORD PTR 56[rsp], xmm0
	sal	eax, 5
	lea	rax, 65536[rax+r9]
	mov	QWORD PTR 32[rsp], rax
	mov	eax, 1792
	sub	eax, ecx
	lea	rcx, 32[rsp]
	movzx	eax, ax
	sal	rax, 16
	or	rax, rdx
	movzx	edx, WORD PTR 8[r8]
	sal	rax, 16
	or	rax, rdx
	movzx	edx, WORD PTR 4[r8]
	sal	rax, 16
	or	rax, rdx
	lea	rdx, 129[rbx]
	mov	QWORD PTR 44[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L87:
	mov	BYTE PTR 130[rcx], 48
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	xor	r11d, r11d
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 28[rbx]
	mov	WORD PTR 64[rsp], r11w
	imul	eax, DWORD PTR [rcx], 1663525
	sar	edx, 8
	sub	edx, DWORD PTR [r8]
	add	eax, 1013904223
	mov	r9d, eax
	imul	eax, eax, 1663525
	and	r9d, 31
	lea	edx, -31[rdx+r9]
	mov	DWORD PTR 56[rsp], edx
	mov	edx, DWORD PTR 32[rbx]
	add	eax, 1013904223
	sar	edx, 8
	sub	edx, DWORD PTR 4[r8]
	mov	r8d, eax
	imul	eax, eax, 1663525
	and	r8d, 63
	lea	edx, -48[rdx+r8]
	mov	DWORD PTR 60[rsp], edx
	mov	edx, 1000
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	and	r8d, 63
	sub	edx, r8d
	add	eax, 1013904223
	mov	WORD PTR 48[rsp], dx
	mov	edx, 1024
	mov	DWORD PTR [rcx], eax
	and	ax, 511
	lea	rcx, 32[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 50[rsp], dx
	lea	rdx, 129[rbx]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	movzx	eax, BYTE PTR 130[rbx]
	test	al, 3
	jne	.L75
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L82:
	mov	edx, DWORD PTR 124[rbx]
	test	edx, edx
	jne	.L72
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	edx, 1000
	movq	xmm0, QWORD PTR 108[rbx]
	movq	xmm1, QWORD PTR [rax]
	xor	eax, eax
	mov	WORD PTR 64[rsp], ax
	imul	eax, DWORD PTR [rcx], 1663525
	psrad	xmm0, 8
	psubd	xmm0, xmm1
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	movq	QWORD PTR 56[rsp], xmm0
	and	r8d, 63
	sub	edx, r8d
	add	eax, 1013904223
	mov	WORD PTR 48[rsp], dx
	mov	edx, 1024
	mov	DWORD PTR [rcx], eax
	and	ax, 511
	lea	rcx, 32[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 50[rsp], dx
	lea	rdx, 129[rbx]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	xor	ecx, ecx
	mov	edx, 1000
	movq	xmm0, QWORD PTR [rdi]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	WORD PTR 64[rsp], cx
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	movq	xmm1, QWORD PTR [rax]
	psrad	xmm0, 8
	imul	eax, DWORD PTR [rcx], 1663525
	psubd	xmm0, xmm1
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	movq	QWORD PTR 56[rsp], xmm0
	and	r8d, 63
	sub	edx, r8d
	add	eax, 1013904223
	mov	WORD PTR 48[rsp], dx
	mov	edx, 1152
	mov	DWORD PTR [rcx], eax
	and	ax, 511
	lea	rcx, 32[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 50[rsp], dx
	lea	rdx, 129[rbx]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L76
	.seh_endproc
	.p2align 4
	.def	Task_AeroEggExploding;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AeroEggExploding
Task_AeroEggExploding:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 24[rbx]
	movd	xmm1, DWORD PTR 40[rbx]
	mov	BYTE PTR 128[rbx], 1
	add	eax, 1
	mov	DWORD PTR 24[rbx], eax
	cmp	eax, 10
	jbe	.L90
	mov	r11d, DWORD PTR 44[rbx]
	test	r11d, r11d
	je	.L122
.L90:
	movd	xmm0, DWORD PTR 36[rbx]
	mov	rdi, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	r8d, 1
	punpckldq	xmm0, xmm1
	movq	xmm1, QWORD PTR 28[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 28[rbx], xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rdi
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 13
	call	sub_801E4E4
	test	eax, eax
	jle	.L123
.L91:
	mov	r10d, DWORD PTR 44[rbx]
	test	r10d, r10d
	jne	.L124
.L95:
	lea	r13, 48[rbx]
	lea	rsi, 108[rbx]
	mov	r12, r13
.L104:
	cmp	DWORD PTR 24[rbx], 10
	movd	xmm1, DWORD PTR 12[r12]
	jbe	.L97
	mov	r9d, DWORD PTR 16[r12]
	test	r9d, r9d
	jne	.L97
	movd	eax, xmm1
	add	eax, 16
	mov	DWORD PTR 12[r12], eax
	movd	xmm1, eax
.L97:
	movd	xmm0, DWORD PTR 8[r12]
	mov	r9d, 8
	mov	r8d, 1
	punpckldq	xmm0, xmm1
	movq	xmm1, QWORD PTR [r12]
	paddd	xmm0, xmm1
	movq	QWORD PTR [r12], xmm0
	pshufd	xmm2, xmm0, 0xe5
	movd	ecx, xmm2
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rdi
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 7
	call	sub_801E4E4
	test	eax, eax
	jle	.L125
.L98:
	mov	r8d, DWORD PTR 16[r12]
	test	r8d, r8d
	je	.L102
	sal	eax, 8
	add	DWORD PTR 4[r12], eax
.L102:
	add	r12, 20
	cmp	rsi, r12
	jne	.L104
	cmp	DWORD PTR 24[rbx], 10
	movd	xmm1, DWORD PTR 120[rbx]
	jbe	.L105
	mov	ecx, DWORD PTR 124[rbx]
	test	ecx, ecx
	je	.L126
.L105:
	movd	xmm0, DWORD PTR 116[rbx]
	mov	r9d, 8
	mov	r8d, 1
	punpckldq	xmm0, xmm1
	movq	xmm1, QWORD PTR 108[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 108[rbx], xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rdi
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 9
	call	sub_801E4E4
	test	eax, eax
	jle	.L127
.L106:
	mov	edx, DWORD PTR 124[rbx]
	test	edx, edx
	jne	.L128
.L110:
	mov	rcx, rbx
	lea	r12, 136[rbx]
	call	sub_80424EC
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 29[rbx]
	mov	rcx, r12
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 174[rbx], ax
	movzx	eax, WORD PTR 33[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 176[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	cmp	BYTE PTR 132[rbx], 0
	je	.L129
.L112:
	lea	r12, 272[rbx]
.L113:
	movzx	eax, WORD PTR 1[r13]
	sub	ax, WORD PTR [rdi]
	mov	rcx, r12
	add	r13, 20
	mov	WORD PTR 310[rbx], ax
	movzx	eax, WORD PTR -15[r13]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 312[rbx], ax
	call	DisplaySprite
	cmp	rsi, r13
	jne	.L113
	movzx	eax, WORD PTR 109[rbx]
	sub	ax, WORD PTR [rdi]
	lea	rsi, 336[rbx]
	mov	WORD PTR 374[rbx], ax
	movzx	eax, WORD PTR 113[rbx]
	mov	rcx, rsi
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 376[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	ecx, BYTE PTR 22[rbx]
	call	sub_8042560.isra.0
	mov	rcx, rbx
	call	sub_8041D34
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L130
.L114:
	mov	ecx, DWORD PTR 28[rbx]
	mov	r8d, DWORD PTR [rdi]
	sar	ecx, 8
	mov	eax, ecx
	sub	eax, r8d
	cmp	BYTE PTR 132[rbx], 0
	jne	.L115
	cmp	eax, 49
	jg	.L89
	cmp	BYTE PTR 128[rbx], 0
	jne	.L131
.L115:
	cmp	eax, -200
	jge	.L89
	cmp	BYTE PTR 132[rbx], 0
	jne	.L132
.L89:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	mov	edx, DWORD PTR 12[r12]
	test	edx, edx
	js	.L98
	sal	eax, 8
	add	DWORD PTR 4[r12], eax
	lea	eax, 0[0+rdx*4]
	sub	edx, eax
	add	edx, edx
	cmp	edx, -479
	jge	.L99
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1717986919
	sar	rax, 34
	sub	eax, edx
	mov	DWORD PTR 12[r12], eax
.L100:
	mov	eax, DWORD PTR 8[r12]
	mov	edx, 0
	sub	eax, 8
	cmovs	eax, edx
	mov	DWORD PTR 8[r12], eax
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L128:
	sal	eax, 8
	add	DWORD PTR 112[rbx], eax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L124:
	sal	eax, 8
	add	DWORD PTR 32[rbx], eax
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L99:
	mov	DWORD PTR 12[r12], 0
	mov	DWORD PTR 16[r12], 1
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L126:
	movd	eax, xmm1
	add	eax, 16
	mov	DWORD PTR 120[rbx], eax
	movd	xmm1, eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L122:
	movd	eax, xmm1
	add	eax, 16
	mov	DWORD PTR 40[rbx], eax
	movd	xmm1, eax
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L123:
	mov	edx, DWORD PTR 40[rbx]
	test	edx, edx
	js	.L91
	imul	edx, edx, -70
	sal	eax, 8
	add	DWORD PTR 32[rbx], eax
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	DWORD PTR 40[rbx], eax
	movzx	eax, BYTE PTR 131[rbx]
	test	al, al
	je	.L92
	sub	eax, 1
	mov	BYTE PTR 131[rbx], al
	test	al, al
	jne	.L93
	movabs	rax, 4294967296
	mov	QWORD PTR 40[rbx], rax
.L93:
	mov	r9d, 20
	mov	r8d, 128
	mov	edx, 32
	mov	DWORD PTR 32[rsp], 131
	mov	ecx, 1024
	call	CreateScreenShake
.L92:
	mov	eax, DWORD PTR 36[rbx]
	mov	edx, 0
	sub	eax, 8
	cmovs	eax, edx
	mov	DWORD PTR 36[rbx], eax
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L127:
	mov	edx, DWORD PTR 120[rbx]
	test	edx, edx
	js	.L106
	sal	eax, 8
	add	DWORD PTR 112[rbx], eax
	lea	eax, 0[0+rdx*4]
	sub	edx, eax
	add	edx, edx
	cmp	edx, -479
	jge	.L107
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1717986919
	sar	rax, 34
	sub	eax, edx
	mov	DWORD PTR 120[rbx], eax
.L108:
	mov	eax, DWORD PTR 116[rbx]
	mov	edx, 0
	sub	eax, 8
	cmovs	eax, edx
	mov	DWORD PTR 116[rbx], eax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L130:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L129:
	movzx	eax, WORD PTR 29[rbx]
	sub	ax, WORD PTR [rdi]
	lea	r12, 208[rbx]
	mov	WORD PTR 246[rbx], ax
	mov	eax, -14
	sub	ax, WORD PTR 4[rdi]
	mov	rcx, r12
	add	ax, WORD PTR 33[rbx]
	mov	WORD PTR 248[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L132:
	mov	r8d, 3
	mov	edx, 150
	mov	ecx, -40
	call	sub_802EF68
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, Task_DeleteAeroEggTask[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	movabs	rax, 4294967296
	mov	QWORD PTR 120[rbx], rax
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L131:
	mov	BYTE PTR 132[rbx], 1
	sub	ecx, r8d
	mov	edx, -15
	sub	dx, WORD PTR 4[rdi]
	add	dx, WORD PTR 33[rbx]
	movsx	ecx, cx
	mov	r8d, 8192
	movsx	edx, dx
	call	CreateEggmobileEscapeSequence
	mov	eax, DWORD PTR 28[rbx]
	sar	eax, 8
	sub	eax, DWORD PTR [rdi]
	jmp	.L115
	.seh_endproc
	.p2align 4
	.globl	AeroEgg_InitPartsDefeated
	.def	AeroEgg_InitPartsDefeated;	.scl	2;	.type	32;	.endef
	.seh_proc	AeroEgg_InitPartsDefeated
AeroEgg_InitPartsDefeated:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movq	xmm0, QWORD PTR .LC8[rip]
	movabs	rbx, 229683580995895296
	mov	rax, rcx
	mov	DWORD PTR 24[rcx], 0
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r11d, DWORD PTR 4[rax]
	mov	r10d, DWORD PTR 8[rax]
	mov	QWORD PTR 124[rax], rbx
	add	rax, 48
	mov	r8d, DWORD PTR [rcx]
	movsx	edx, WORD PTR 126[rax]
	mov	DWORD PTR -4[rax], 0
	mov	ecx, DWORD PTR 4[rcx]
	mov	BYTE PTR 84[rax], 0
	sar	r11d, 8
	sar	r10d, 8
	add	edx, r8d
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movq	QWORD PTR -12[rax], xmm0
	sal	edx, 8
	movq	QWORD PTR 68[rax], xmm0
	mov	DWORD PTR -20[rax], edx
	movsx	edx, WORD PTR 128[rax]
	add	edx, ecx
	sal	edx, 8
	mov	DWORD PTR -16[rax], edx
	movsx	edx, WORD PTR 326[rax]
	add	edx, r8d
	mov	r8d, 1
	sal	edx, 8
	mov	DWORD PTR 60[rax], edx
	movsx	edx, WORD PTR 328[rax]
	add	edx, ecx
	sal	edx, 8
	mov	DWORD PTR 64[rax], edx
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	edx, DWORD PTR [rdx]
	lea	r9d, [rdx+rdx*2]
	sal	r9d, 2
.L134:
	mov	edx, r9d
	mov	DWORD PTR 16[rax], 0
	sub	r9d, -128
	add	rax, 20
	and	edx, 1023
	movq	QWORD PTR -12[rax], xmm0
	movzx	edx, WORD PTR [rbx+rdx*2]
	sar	dx, 9
	lea	ecx, 500[rdx]
	and	ecx, 1023
	lea	edx, 256[rcx]
	movsx	rdx, edx
	movsx	esi, WORD PTR [rbx+rdx*2]
	imul	esi, r8d
	mov	edx, esi
	sal	edx, 4
	add	edx, esi
	movsx	esi, WORD PTR [rbx+rcx*2]
	sar	edx, 14
	imul	esi, r8d
	add	edx, r11d
	add	r8, 1
	sal	edx, 8
	mov	DWORD PTR -20[rax], edx
	mov	ecx, esi
	sal	ecx, 4
	add	ecx, esi
	sar	ecx, 14
	lea	edx, 20[r10+rcx]
	sal	edx, 8
	mov	DWORD PTR -16[rax], edx
	cmp	r8, 4
	jne	.L134
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	AeroEggMove
	.def	AeroEggMove;	.scl	2;	.type	32;	.endef
	.seh_proc	AeroEggMove
AeroEggMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	movd	xmm2, edx
	mov	rdx, QWORD PTR 24[rax]
	movd	xmm1, ecx
	punpckldq	xmm1, xmm2
	movq	xmm0, QWORD PTR 4[rdx]
	lea	rax, 48[rdx]
	lea	rcx, 108[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rdx], xmm0
	movq	xmm0, QWORD PTR 28[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 28[rdx], xmm0
.L137:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 20
	paddd	xmm0, xmm1
	movq	QWORD PTR -20[rax], xmm0
	cmp	rax, rcx
	jne	.L137
	movq	xmm0, QWORD PTR 108[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 108[rdx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateAeroEggBomb
	.def	CreateAeroEggBomb;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateAeroEggBomb
CreateAeroEggBomb:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	rsi, rcx
	mov	edi, edx
	mov	ebx, r8d
	mov	edx, 88
	mov	r8d, 24832
	lea	rcx, Task_CreateAeroEggBombMain[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rdx]
	mov	QWORD PTR 16[rax], rsi
	sal	edx, 8
	mov	r8d, ecx
	mov	DWORD PTR 12[rax], 16778496
	sub	ebx, edx
	movzx	edx, WORD PTR 5[rsi]
	sal	r8d, 8
	mov	DWORD PTR [rax], 0
	sub	edi, r8d
	mov	r8d, ebx
	mov	DWORD PTR 8[rax], ebx
	lea	rbx, 24[rax]
	sub	edx, ecx
	sar	r8d, 8
	mov	ecx, -256
	mov	DWORD PTR 4[rax], edi
	mov	WORD PTR 62[rax], dx
	mov	rdx, QWORD PTR 400[rsi]
	mov	WORD PTR 64[rax], r8w
	mov	QWORD PTR 32[rax], rdx
	xor	edx, edx
	mov	WORD PTR 60[rax], dx
	mov	WORD PTR 72[rax], cx
	mov	rcx, rbx
	mov	DWORD PTR 40[rax], 43515904
	mov	DWORD PTR 66[rax], 1344
	mov	BYTE PTR 74[rax], 16
	mov	BYTE PTR 77[rax], 0
	mov	DWORD PTR 80[rax], -1
	mov	DWORD PTR 56[rax], 8192
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_80426C4;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_80426C4
Task_80426C4:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movsx	eax, WORD PTR 12[rbx]
	movq	xmm1, QWORD PTR 4[rbx]
	cmp	BYTE PTR 22[rbx], 0
	movd	xmm0, eax
	movsx	eax, WORD PTR 14[rbx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rbx], xmm0
	jne	.L142
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	movd	ebp, xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	esi, xmm3
	sar	ebp, 8
	sar	esi, 8
	lea	r13, 136[rbx]
	test	BYTE PTR 36[r12], -128
	je	.L163
.L143:
	mov	edx, esi
	mov	ecx, ebp
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 22[rbx], 0
	je	.L164
.L142:
	mov	rcx, rbx
	call	sub_80424EC
	movzx	eax, WORD PTR 18[rbx]
	test	ax, ax
	je	.L148
	sub	eax, 1
	mov	WORD PTR 18[rbx], ax
.L149:
	mov	rcx, rbx
	call	sub_8041880
	movzx	ecx, BYTE PTR 22[rbx]
	call	sub_8042560.isra.0
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8d, DWORD PTR 4[rbx]
	mov	r9d, DWORD PTR 8[rbx]
	mov	eax, DWORD PTR [rax]
	lea	eax, [rax+rax*2]
	lea	eax, 512[0+rax*4]
	and	eax, 1020
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 9
	add	eax, 500
	and	eax, 1023
	cmp	BYTE PTR 23[rbx], 0
	lea	ecx, 256[rax]
	movsx	eax, WORD PTR [rdx+rax*2]
	movsx	ecx, WORD PTR [rdx+rcx*2]
	jne	.L151
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	cmp	WORD PTR 22[rsi], 0
	jle	.L162
	test	BYTE PTR 36[rsi], 2
	jne	.L156
.L162:
	movzx	eax, WORD PTR 16[rbx]
	add	eax, 1
	mov	WORD PTR 16[rbx], ax
	cmp	ax, 300
	jbe	.L154
.L155:
	mov	r9d, 662
	mov	r10d, -254
	cmp	BYTE PTR 20[rbx], 0
	mov	BYTE PTR 23[rbx], 1
	mov	r11d, 300
	mov	WORD PTR 354[rbx], r9w
	mov	WORD PTR 384[rbx], r10w
	mov	WORD PTR 16[rbx], r11w
	jne	.L140
.L166:
	mov	eax, 661
	mov	edx, -253
	mov	WORD PTR 154[rbx], ax
	mov	WORD PTR 184[rbx], dx
	call	Player_DisableInputAndBossTimer
	mov	rcx, rbx
	call	AeroEgg_InitPartsDefeated
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_AeroEggExploding[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	movzx	eax, WORD PTR 16[rbx]
	sub	eax, 1
	mov	WORD PTR 16[rbx], ax
	cmp	ax, 18
	je	.L165
	test	ax, ax
	jne	.L154
	mov	BYTE PTR 23[rbx], 0
.L154:
	cmp	BYTE PTR 20[rbx], 0
	je	.L166
.L140:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	mov	eax, DWORD PTR 8[rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r13d, 661
	lea	r8d, 6656[rax]
	call	CreateAeroEggBomb
	cmp	BYTE PTR 20[rbx], 5
	mov	WORD PTR 154[rbx], r13w
	sbb	eax, eax
	and	eax, -60
	add	ax, 140
	mov	WORD PTR 18[rbx], ax
	mov	eax, -254
	mov	WORD PTR 184[rbx], ax
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L165:
	mov	ecx, 662
	mov	r8d, -253
	mov	WORD PTR 354[rbx], cx
	mov	WORD PTR 384[rbx], r8w
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L163:
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	mov	r8d, esi
	mov	edx, ebp
	mov	rcx, r13
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	jne	.L144
	mov	eax, DWORD PTR 16[r12]
	sar	eax, 8
	cmp	esi, eax
	jge	.L145
	cmp	BYTE PTR 22[rbx], 0
	mov	BYTE PTR 21[rbx], 30
	jne	.L146
	mov	eax, 629
	mov	WORD PTR 226[rbx], ax
	mov	eax, -255
	mov	WORD PTR 256[rbx], ax
.L146:
	mov	rcx, r12
	call	Coll_DamagePlayer
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L164:
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	mov	r8d, esi
	mov	edx, ebp
	mov	rcx, r13
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L142
	mov	rcx, rbx
	call	sub_80423EC.isra.0
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L156:
	mov	edx, eax
	mov	r10d, r9d
	sar	r8d, 8
	mov	r9, rsi
	sal	edx, 4
	sar	r10d, 8
	sub	edx, eax
	mov	eax, edx
	mov	edx, ecx
	sal	edx, 4
	sar	eax, 12
	sub	edx, ecx
	lea	rcx, 336[rbx]
	sar	edx, 12
	add	edx, r8d
	lea	r8d, 20[r10+rax]
	call	Coll_Player_Entity_Intersection
	test	eax, eax
	je	.L162
	mov	ebp, -1216
	mov	r12d, 11
	mov	BYTE PTR 117[rsi], 5
	and	DWORD PTR 36[rsi], -265
	mov	WORD PTR 22[rsi], bp
	mov	QWORD PTR 64[rsi], 0
	mov	WORD PTR 108[rsi], r12w
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L144:
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	mov	r8d, esi
	mov	edx, ebp
	mov	rcx, r13
	call	Coll_Player_Enemy
	mov	QWORD PTR 32[rsp], r12
	mov	r8d, esi
	mov	edx, ebp
	mov	r9d, 1
	mov	rcx, r13
	call	Coll_Player_Enemy
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L145:
	mov	rcx, rbx
	call	sub_80423EC.isra.0
	jmp	.L143
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sPalAeroEggHit:
	.word	27039
	.word	19263
	.word	16958
	.word	16606
	.word	23487
	.word	31678
	.word	16408
	.word	32506
	.word	21183
	.word	32313
	.word	31768
	.word	32088
	.word	17561
	.word	20827
	.word	24124
	.word	27390
	.word	10848
	.word	27840
	.word	32198
	.word	32548
	.word	19520
	.word	2116
	.word	32767
	.word	277
	.word	23874
	.word	475
	.word	1023
	.word	703
	.word	30585
	.word	24243
	.word	17868
	.word	10502
	.align 2
.LC0:
	.byte	0
	.byte	-1
	.align 8
.LC8:
	.long	1472
	.long	0
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gTileInfoBossScrews, "dr"
	.globl	.refptr.gTileInfoBossScrews
	.linkonce	discard
.refptr.gTileInfoBossScrews:
	.quad	gTileInfoBossScrews
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
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
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
