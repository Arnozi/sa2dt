	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_PlatformThin;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_PlatformThin
TaskDestructor_PlatformThin:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_PlatformBreakParticles;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_PlatformBreakParticles
TaskDestructor_PlatformBreakParticles:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 136[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	CreatePlatformBreakParticles;	.scl	3;	.type	32;	.endef
	.seh_proc	CreatePlatformBreakParticles
CreatePlatformBreakParticles:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_PlatformBreakParticles[rip]
	xor	r9d, r9d
	mov	r8d, 8209
	lea	rdi, sPlatformBreakAnimations[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	esi, edx
	mov	ebp, ecx
	mov	edx, 304
	lea	rcx, Task_PlatformBreakParticlesMain[rip]
	lea	r12d, -50[rsi]
	add	ebp, -128
	sub	esi, 66
	call	TaskCreate
	mov	r14, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [r14]
	lea	r15, 266[rbx]
	lea	r13, 276[rbx]
	mov	DWORD PTR 296[rbx], -33554432
	sar	al, 2
	movsx	rax, al
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR [rdi+rax*4]
	call	VramMalloc
	xor	r8d, r8d
	mov	BYTE PTR 53[rbx], 0
	mov	ecx, 4351
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, BYTE PTR [r14]
	mov	WORD PTR 49[rbx], cx
	mov	rcx, rbx
	sar	al, 2
	mov	WORD PTR 256[rbx], r8w
	movsx	rax, al
	mov	WORD PTR 262[rbx], bp
	lea	rbp, 128[rbx]
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 42[rbx], 512
	lea	rax, [rdi+rax*4]
	mov	DWORD PTR 32[rbx], 112
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	DWORD PTR 258[rbx], 16777472
	mov	WORD PTR 264[rbx], r12w
	mov	WORD PTR 18[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 48[rbx], al
	xor	eax, eax
	mov	WORD PTR 36[rbx], dx
	mov	WORD PTR 16[rbx], ax
	call	UpdateSpriteAnimation
	lea	r8, 64[rbx]
	mov	rdx, rbx
	mov	r9d, -2147483616
	mov	ecx, 3
	call	DmaSet
	lea	rdx, 256[rbx]
	mov	r8, r15
	mov	r9d, -2147483643
	mov	ecx, 3
	call	DmaSet
	mov	r8, r13
	mov	rdx, r15
	mov	ecx, 3
	mov	DWORD PTR 96[rbx], 113
	mov	r9d, -2147483643
	mov	WORD PTR 274[rbx], si
	call	DmaSet
	movzx	eax, BYTE PTR [r14]
	sar	al, 2
	movsx	rax, al
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR 6[rdi+rax*4]
	call	VramMalloc
	xor	r10d, r10d
	xor	r9d, r9d
	mov	rcx, rbp
	mov	QWORD PTR 136[rbx], rax
	movzx	eax, BYTE PTR [r14]
	mov	r11d, 4351
	mov	WORD PTR 164[rbx], r10w
	sar	al, 2
	mov	WORD PTR 177[rbx], r11w
	movsx	rax, al
	mov	WORD PTR 144[rbx], r9w
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 170[rbx], 512
	lea	rax, [rdi+rax*4]
	mov	BYTE PTR 181[rbx], 0
	movzx	edx, WORD PTR 8[rax]
	movzx	eax, WORD PTR 10[rax]
	mov	DWORD PTR 160[rbx], 114
	mov	WORD PTR 284[rbx], r12w
	mov	WORD PTR 146[rbx], dx
	mov	BYTE PTR 176[rbx], al
	call	UpdateSpriteAnimation
	lea	r8, 192[rbx]
	mov	rdx, rbp
	mov	r9d, -2147483616
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2147483643
	mov	rdx, r13
	lea	r8, 286[rbx]
	mov	ecx, 3
	call	DmaSet
	mov	ecx, 278
	mov	DWORD PTR 224[rbx], 115
	mov	WORD PTR 294[rbx], si
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.def	Task_PlatformBreakParticlesMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlatformBreakParticlesMain
Task_PlatformBreakParticlesMain:
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
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, WORD PTR 296[rbx]
	lea	ecx, 1[rax]
	mov	WORD PTR 296[rbx], cx
	cmp	ax, 60
	ja	.L7
	movzx	eax, WORD PTR 298[rbx]
	movzx	r8d, WORD PTR 262[rbx]
	lea	r13, 64[rbx]
	movzx	edi, WORD PTR 258[rbx]
	mov	r12, QWORD PTR .refptr.gOamMatrixIndex[rip]
	add	eax, 40
	mov	edx, r8d
	mov	WORD PTR 298[rbx], ax
	sar	ax, 8
	lea	ebp, 8[rdi]
	add	ax, WORD PTR 264[rbx]
	mov	esi, eax
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	sal	esi, 16
	or	esi, r8d
	mov	r8d, 512
	cmp	bp, r8w
	cmovg	ebp, r8d
	sub	dx, WORD PTR [rdi]
	sub	ax, WORD PTR 4[rdi]
	add	ecx, ecx
	sub	edx, ecx
	movzx	eax, ax
	sub	WORD PTR 256[rbx], 42
	movzx	edx, dx
	sal	rax, 16
	movzx	ebp, bp
	or	rax, rdx
	mov	edx, DWORD PTR 32[rbx]
	sal	rax, 16
	or	rax, rbp
	and	edx, -32
	sal	rax, 16
	or	rax, rbp
	mov	QWORD PTR 258[rbx], rax
	movzx	eax, BYTE PTR [r12]
	lea	ecx, 1[rax]
	or	eax, edx
	lea	rdx, 256[rbx]
	mov	DWORD PTR 32[rbx], eax
	mov	BYTE PTR [r12], cl
	mov	rcx, rbx
	call	sub_8004E14
	mov	rcx, rbx
	call	DisplaySprite
	movzx	ecx, WORD PTR 272[rbx]
	movsx	ax, BYTE PTR 299[rbx]
	mov	DWORD PTR 262[rbx], esi
	add	ax, WORD PTR 274[rbx]
	add	WORD PTR 266[rbx], 42
	mov	esi, eax
	sub	ax, WORD PTR 4[rdi]
	mov	edx, ecx
	add	dx, WORD PTR 296[rbx]
	movzx	eax, ax
	sub	dx, WORD PTR [rdi]
	sal	esi, 16
	movzx	edx, dx
	sal	rax, 16
	or	esi, ecx
	or	rax, rdx
	mov	edx, DWORD PTR 96[rbx]
	sal	rax, 16
	or	rax, rbp
	and	edx, -32
	sal	rax, 16
	or	rax, rbp
	mov	QWORD PTR 268[rbx], rax
	movzx	eax, BYTE PTR [r12]
	lea	ecx, 1[rax]
	or	eax, edx
	lea	rdx, 266[rbx]
	mov	DWORD PTR 96[rbx], eax
	mov	BYTE PTR [r12], cl
	mov	rcx, r13
	call	sub_8004E14
	mov	rcx, r13
	lea	r13, 128[rbx]
	call	DisplaySprite
	movsx	ax, BYTE PTR 299[rbx]
	add	ax, WORD PTR 284[rbx]
	mov	DWORD PTR 272[rbx], esi
	movzx	edx, WORD PTR 282[rbx]
	mov	esi, eax
	sub	ax, WORD PTR 4[rdi]
	sal	esi, 16
	movzx	eax, ax
	add	WORD PTR 276[rbx], 14
	or	esi, edx
	mov	ecx, edx
	movzx	edx, WORD PTR 296[rbx]
	sal	rax, 16
	lea	edx, [rcx+rdx*2]
	sub	dx, WORD PTR [rdi]
	movzx	edx, dx
	or	rax, rdx
	mov	edx, DWORD PTR 160[rbx]
	sal	rax, 16
	or	rax, rbp
	and	edx, -32
	sal	rax, 16
	or	rax, rbp
	mov	QWORD PTR 278[rbx], rax
	movzx	eax, BYTE PTR [r12]
	lea	ecx, 1[rax]
	or	eax, edx
	lea	rdx, 276[rbx]
	mov	DWORD PTR 160[rbx], eax
	mov	BYTE PTR [r12], cl
	mov	rcx, r13
	call	sub_8004E14
	mov	rcx, r13
	lea	r13, 192[rbx]
	call	DisplaySprite
	movzx	ecx, WORD PTR 292[rbx]
	movsx	ax, BYTE PTR 299[rbx]
	mov	DWORD PTR 282[rbx], esi
	add	ax, WORD PTR 294[rbx]
	sub	WORD PTR 286[rbx], 14
	mov	esi, eax
	sub	ax, WORD PTR 4[rdi]
	mov	edx, ecx
	sub	dx, WORD PTR 296[rbx]
	movzx	eax, ax
	sub	dx, WORD PTR [rdi]
	sal	esi, 16
	movzx	edx, dx
	sal	rax, 16
	or	esi, ecx
	or	rax, rdx
	mov	edx, DWORD PTR 224[rbx]
	sal	rax, 16
	or	rax, rbp
	and	edx, -32
	sal	rax, 16
	or	rax, rbp
	mov	QWORD PTR 288[rbx], rax
	movzx	eax, BYTE PTR [r12]
	lea	ecx, 1[rax]
	or	eax, edx
	lea	rdx, 286[rbx]
	mov	DWORD PTR 224[rbx], eax
	mov	BYTE PTR [r12], cl
	mov	rcx, r13
	call	sub_8004E14
	mov	rcx, r13
	call	DisplaySprite
	mov	DWORD PTR 292[rbx], esi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rcx, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_PlatformThinMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlatformThinMain
Task_PlatformThinMain:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r14, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [r14]
	mov	rdi, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rdi]
	movzx	eax, BYTE PTR 12[rdi]
	lea	r15, 16[rdi]
	mov	r13, QWORD PTR [rdi]
	movzx	esi, WORD PTR 10[rdi]
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	esi, 5
	sal	ebx, 3
	add	esi, eax
	mov	eax, DWORD PTR 0[rbp]
	mov	edx, ebx
	movsx	ebx, bx
	sal	esi, 3
	sub	edx, eax
	mov	WORD PTR 54[rdi], dx
	mov	edx, esi
	sub	dx, WORD PTR 4[rbp]
	cmp	BYTE PTR [rcx], 2
	mov	WORD PTR 56[rdi], dx
	jbe	.L9
	cmp	BYTE PTR 0[r13], -3
	je	.L40
.L9:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	test	DWORD PTR 36[r12], 4194432
	je	.L41
.L11:
	sub	ebx, eax
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L25
	movsx	esi, si
	sub	esi, DWORD PTR 4[rbp]
	sub	esi, -128
	cmp	esi, 496
	jbe	.L26
.L25:
	movzx	eax, BYTE PTR 12[rdi]
	mov	BYTE PTR 0[r13], al
.L39:
	mov	rcx, QWORD PTR [r14]
	add	rsp, 56
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
.L26:
	mov	rcx, r15
	add	rsp, 56
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
.L41:
	movsx	eax, si
	mov	r9, r12
	mov	edx, ebx
	mov	rcx, r15
	mov	r8d, eax
	mov	DWORD PTR 40[rsp], eax
	call	Coll_Player_Platform
	mov	r10d, eax
	test	eax, 786432
	jne	.L42
.L13:
	test	r10d, 196608
	je	.L37
	movsx	rax, BYTE PTR 141[r12]
	movzx	ecx, WORD PTR 108[r12]
	movzx	edx, WORD PTR 112[r12]
	movzx	r8d, WORD PTR 114[r12]
	cmp	al, 3
	je	.L16
	sal	r10d, 8
	movsx	r10d, r10w
	test	al, -5
	je	.L17
.L38:
	xor	ecx, ecx
	add	DWORD PTR 16[r12], r10d
	mov	WORD PTR 22[r12], cx
.L37:
	mov	eax, DWORD PTR 0[rbp]
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L40:
	movsx	edx, si
	mov	ecx, ebx
	call	CreatePlatformBreakParticles
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rdx]
	test	al, 8
	je	.L39
	cmp	QWORD PTR 64[rdx], r15
	jne	.L39
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rdx], eax
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L42:
	add	BYTE PTR 77[rdi], 1
	mov	r8d, DWORD PTR 40[rsp]
	mov	r9, r12
	mov	edx, ebx
	sub	BYTE PTR 79[rdi], 1
	mov	rcx, r15
	mov	DWORD PTR 44[rsp], eax
	call	Coll_Player_Platform
	sub	BYTE PTR 77[rdi], 1
	mov	r10d, DWORD PTR 44[rsp]
	add	BYTE PTR 79[rdi], 1
	test	eax, 786432
	je	.L13
	mov	eax, r10d
	xor	r8d, r8d
	xor	al, al
	mov	WORD PTR 20[r12], r8w
	cwde
	add	DWORD PTR 12[r12], eax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L17:
	mov	r9, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	sub	dx, WORD PTR [r9+rax*2]
	cmp	dx, 51
	jne	.L38
	cmp	cx, 36
	jne	.L38
	cmp	r8w, 1
	jne	.L38
	cmp	WORD PTR 22[r12], 0
	jle	.L38
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, ebx
	mov	DWORD PTR 44[rsp], r10d
	and	DWORD PTR 36[r12], -9
	call	CreatePlatformBreakParticles
	mov	r10d, DWORD PTR 44[rsp]
	xor	eax, eax
	add	DWORD PTR 16[r12], r10d
	mov	WORD PTR 22[r12], ax
.L19:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L39
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 1
	movzx	edx, WORD PTR 8[rdi]
	mov	BYTE PTR 1[rax], dl
	movzx	edx, WORD PTR 10[rdi]
	mov	BYTE PTR 2[rax], dl
	movzx	edx, BYTE PTR 13[rdi]
	mov	BYTE PTR 4[rax], 0
	mov	BYTE PTR 3[rax], dl
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L16:
	cmp	cx, 107
	je	.L43
	sal	r10d, 8
	xor	edx, edx
	mov	eax, DWORD PTR 0[rbp]
	movsx	r10d, r10w
	mov	WORD PTR 22[r12], dx
	add	DWORD PTR 16[r12], r10d
	jmp	.L11
.L43:
	mov	eax, DWORD PTR 36[r12]
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, ebx
	sar	WORD PTR 22[r12]
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	call	CreatePlatformBreakParticles
	jmp	.L19
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_PlatformThin
	.def	CreateEntity_PlatformThin;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_PlatformThin
CreateEntity_PlatformThin:
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
	lea	rax, TaskDestructor_PlatformThin[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_PlatformThinMain[rip]
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
	mov	QWORD PTR 84[rbx], 0
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	lea	rsi, sPlatformThinAnimations[rip]
	add	eax, edi
	mov	rdi, QWORD PTR .refptr.gCurrentLevel[rip]
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	movzx	eax, BYTE PTR [rdi]
	sar	al, 2
	movsx	rax, al
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR [rsi+rax*2]
	call	VramMalloc
	mov	ecx, 4351
	mov	BYTE PTR 69[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, BYTE PTR [rdi]
	mov	WORD PTR 65[rbx], cx
	lea	rcx, 16[rbx]
	sar	al, 2
	mov	DWORD PTR 58[rbx], 1152
	movsx	rax, al
	mov	DWORD PTR 72[rbx], -1
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 48[rbx], 8192
	lea	rax, [rsi+rax*2]
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	WORD PTR 34[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sPlatformBreakAnimations:
	.word	4
	.word	563
	.word	0
	.word	1
	.word	563
	.word	1
	.word	2
	.word	569
	.word	0
	.word	1
	.word	569
	.word	1
	.word	2
	.word	579
	.word	0
	.word	1
	.word	579
	.word	1
	.word	2
	.word	583
	.word	0
	.word	1
	.word	583
	.word	1
	.word	4
	.word	587
	.word	0
	.word	1
	.word	587
	.word	1
	.word	2
	.word	602
	.word	0
	.word	1
	.word	602
	.word	1
	.word	4
	.word	609
	.word	0
	.word	1
	.word	609
	.word	1
	.word	4
	.word	609
	.word	0
	.word	1
	.word	609
	.word	1
	.word	4
	.word	609
	.word	0
	.word	1
	.word	609
	.word	1
	.align 4
sPlatformThinAnimations:
	.word	24
	.word	562
	.word	0
	.word	24
	.word	566
	.word	1
	.word	24
	.word	574
	.word	2
	.word	24
	.word	581
	.word	1
	.word	24
	.word	586
	.word	0
	.word	24
	.word	597
	.word	1
	.word	24
	.word	610
	.word	0
	.word	24
	.word	610
	.word	0
	.word	24
	.word	610
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_8004E14;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
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
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
