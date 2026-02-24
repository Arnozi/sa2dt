	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_RingsScatter
	.def	TaskDestructor_RingsScatter;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_RingsScatter
TaskDestructor_RingsScatter:
	.seh_endprologue
	mov	QWORD PTR gRingsScatterTask[rip], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	InitPlayerHitRingsScatter
	.def	InitPlayerHitRingsScatter;	.scl	2;	.type	32;	.endef
	.seh_proc	InitPlayerHitRingsScatter
InitPlayerHitRingsScatter:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	lea	rcx, Task_RingsScatter_MP_Singlepak[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 5
	je	.L4
	cmp	al, 2
	lea	rcx, Task_RingsScatter_MP_Multipak[rip]
	lea	rax, Task_RingsScatter_Singleplayer[rip]
	cmovbe	rcx, rax
.L4:
	lea	rax, TaskDestructor_RingsScatter[rip]
	xor	r9d, r9d
	mov	r8d, 8193
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 712
	call	TaskCreate
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	xor	r8d, r8d
	mov	r9d, -2130706112
	mov	QWORD PTR gRingsScatterTask[rip], rax
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, 73472[rcx]
	xor	ecx, ecx
	mov	WORD PTR 62[rsp], r8w
	mov	QWORD PTR 8[rax], rdx
	mov	edx, -256
	lea	r8, 64[rax]
	mov	WORD PTR 48[rax], dx
	movabs	rdx, 635655159826
	mov	WORD PTR 44[rax], cx
	mov	ecx, 3
	mov	QWORD PTR 704[rax], rdx
	lea	rdx, 62[rsp]
	mov	DWORD PTR 16[rax], 47579136
	mov	BYTE PTR 50[rax], 32
	mov	BYTE PTR 53[rax], 0
	mov	QWORD PTR 32[rax], 270848
	mov	DWORD PTR 40[rax], 83886080
	call	DmaSet
	nop
	add	rsp, 72
	ret
	.seh_endproc
	.p2align 4
	.globl	InitScatteringRings
	.def	InitScatteringRings;	.scl	2;	.type	32;	.endef
	.seh_proc	InitScatteringRings
InitScatteringRings:
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
	mov	ebp, ecx
	mov	edi, edx
	test	r8d, r8d
	je	.L8
	mov	r12d, 32
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	r8d, r12d
	cmovle	r12d, r8d
	cmp	BYTE PTR [rax], 2
	ja	.L21
.L10:
	mov	rax, QWORD PTR gRingsScatterTask[rip]
	sal	ebp, 8
	mov	ecx, 118
	sal	edi, 8
	mov	rsi, QWORD PTR 24[rax]
	call	m4aSongNumStart
	xor	r10d, r10d
	xor	r9d, r9d
	xor	r11d, r11d
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	lea	rbx, 64[rsi]
	lea	rdx, 704[rsi]
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	mov	rsi, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r8d, 1160
	movzx	r13d, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	r15d, BYTE PTR 60[rax]
	and	r13w, 128
	.p2align 4,,10
	.p2align 3
.L16:
	cmp	WORD PTR 12[rbx], 0
	jne	.L11
	mov	eax, 180
	mov	WORD PTR 14[rbx], r15w
	mov	WORD PTR 12[rbx], ax
	mov	DWORD PTR [rbx], ebp
	mov	DWORD PTR 4[rbx], edi
	test	r8d, r8d
	js	.L12
	mov	ecx, r8d
	mov	eax, 9
	sar	ecx, 8
	sub	eax, ecx
	cmp	ecx, 5
	cmovg	ecx, eax
	movzx	eax, r8b
	add	r8d, 16
	sal	eax, 2
	or	r8b, -128
	movsx	r9, eax
	add	eax, 256
	movsx	r9d, WORD PTR [r14+r9*2]
	cdqe
	movsx	r10d, WORD PTR [r14+rax*2]
	sar	r9d, cl
	mov	eax, r9d
	sar	r10d, cl
	sar	eax, 2
	sub	r9d, eax
	mov	eax, r10d
	sar	eax, 2
	sub	r10d, eax
.L12:
	mov	eax, r10d
	mov	WORD PTR 8[rbx], r9w
	mov	ecx, r11d
	neg	eax
	test	r13w, r13w
	cmove	eax, r10d
	and	ecx, 3
	add	r11d, 1
	neg	r8d
	neg	r9d
	mov	WORD PTR 10[rbx], ax
	imul	eax, DWORD PTR [rsi], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rsi], eax
	shr	eax, 16
	xor	eax, 1
	and	eax, 1
	sal	eax, 2
	or	eax, ecx
	mov	WORD PTR 16[rbx], ax
	cmp	r12d, r11d
	jle	.L8
.L11:
	add	rbx, 20
	cmp	rbx, rdx
	jne	.L16
.L8:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	mov	r12d, 16
	cmp	r8d, r12d
	cmovle	r12d, r8d
	jmp	.L10
	.seh_endproc
	.p2align 4
	.globl	RingsScatterSingleplayer_FlippedGravity
	.def	RingsScatterSingleplayer_FlippedGravity;	.scl	2;	.type	32;	.endef
	.seh_proc	RingsScatterSingleplayer_FlippedGravity
RingsScatterSingleplayer_FlippedGravity:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r14, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 704[r14]
	mov	rcx, r14
	lea	rbx, 64[r14]
	mov	DWORD PTR 52[rsp], eax
	movzx	eax, WORD PTR 708[r14]
	mov	WORD PTR 50[rsp], ax
	call	UpdateSpriteAnimation
	lea	r10, 704[r14]
	mov	DWORD PTR 56[rsp], 0
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r12, r10
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L35:
	test	BYTE PTR 710[r14], 1
	je	.L67
	test	ax, ax
	jle	.L67
	test	BYTE PTR 16[rbx], 7
	je	.L41
.L67:
	movzx	edx, WORD PTR 12[rbx]
.L39:
	sub	ax, WORD PTR 52[rsp]
	mov	WORD PTR 10[rbx], ax
	lea	eax, 7[rdi]
	cmp	eax, 440
	ja	.L43
	sub	esi, r15d
	lea	eax, 7[rsi]
	cmp	eax, 254
	ja	.L43
	cmp	dx, 31
	ja	.L44
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L43
.L44:
	mov	eax, DWORD PTR 56[rsp]
	test	eax, eax
	je	.L45
	movzx	edx, BYTE PTR 51[r14]
	cmp	dl, -1
	je	.L45
	movzx	ecx, WORD PTR 42[r14]
	mov	BYTE PTR 60[rsp], dl
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	movzx	edx, BYTE PTR 60[rsp]
	mov	r15, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], r15
	je	.L68
	mov	rax, QWORD PTR .refptr.gOamMallocBuffer[rip]
	mov	r8, r15
	movzx	edi, di
	sal	esi, 16
	lea	rdx, [rdx+rdx*2]
	mov	r9d, -2147483643
	mov	ecx, 3
	or	esi, edi
	lea	rdx, [rax+rdx*4]
	call	DmaSet
	mov	rax, QWORD PTR 24[r14]
	movd	xmm1, esi
	movd	xmm0, DWORD PTR 8[rax]
	psubw	xmm1, xmm0
	movd	DWORD PTR [r15], xmm1
.L68:
	movzx	edx, WORD PTR 12[rbx]
	.p2align 4,,10
	.p2align 3
.L43:
	movzx	ecx, WORD PTR 16[rbx]
	sub	edx, 1
	mov	WORD PTR 12[rbx], dx
	lea	eax, 1[rcx]
	and	ecx, -4
	and	eax, 3
	or	eax, ecx
	mov	WORD PTR 16[rbx], ax
.L34:
	add	rbx, 20
	cmp	rbx, r12
	je	.L69
.L48:
	movzx	edx, WORD PTR 12[rbx]
	test	dx, dx
	je	.L34
	movsx	esi, WORD PTR 10[rbx]
	movsx	r10d, WORD PTR 8[rbx]
	add	r10d, DWORD PTR [rbx]
	mov	rcx, QWORD PTR 160[rbp]
	mov	DWORD PTR [rbx], r10d
	mov	eax, esi
	sar	r10d, 8
	add	esi, DWORD PTR 4[rbx]
	mov	DWORD PTR 4[rbx], esi
	mov	edi, r10d
	mov	r15d, DWORD PTR 4[r13]
	sar	esi, 8
	sub	edi, DWORD PTR 0[r13]
	cmp	WORD PTR 50[rsp], dx
	jb	.L24
	cmp	WORD PTR 108[rbp], 20
	je	.L70
.L25:
	test	BYTE PTR 36[rbp], -128
	jne	.L24
	mov	r9d, DWORD PTR 12[rbp]
	movsx	r8d, BYTE PTR 76[rcx]
	lea	r11d, -8[r10]
	mov	DWORD PTR 60[rsp], r11d
	sar	r9d, 8
	add	r8d, r9d
	cmp	r11d, r8d
	jg	.L26
	lea	r11d, 8[r10]
	cmp	r8d, r11d
	jg	.L26
.L27:
	mov	r11d, DWORD PTR 16[rbp]
	movsx	r8d, BYTE PTR 77[rcx]
	lea	r9d, -16[rsi]
	mov	DWORD PTR 60[rsp], r9d
	sar	r11d, 8
	add	r8d, r11d
	cmp	r8d, esi
	jg	.L50
	cmp	r9d, r8d
	jle	.L28
.L50:
	lea	r9d, -15[rsi]
	cmp	r8d, r9d
	jge	.L24
	movsx	ecx, BYTE PTR 79[rcx]
	add	ecx, r11d
	cmp	DWORD PTR 60[rsp], ecx
	jle	.L28
	.p2align 4,,10
	.p2align 3
.L24:
	test	ax, ax
	jns	.L35
	test	BYTE PTR 16[rbx], 7
	jne	.L39
	movsx	r8d, WORD PTR 14[rbx]
	mov	edx, r10d
	lea	ecx, -16[rsi]
	mov	DWORD PTR 60[rsp], r10d
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	mov	r10d, DWORD PTR 60[rsp]
	test	eax, eax
	jle	.L37
	movzx	eax, WORD PTR 10[rbx]
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L70:
	cmp	WORD PTR 48[rbp], 0
	jne	.L24
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L26:
	lea	r11d, -7[r10]
	cmp	r8d, r11d
	jge	.L24
	movsx	r8d, BYTE PTR 78[rcx]
	add	r8d, r9d
	cmp	DWORD PTR 60[rsp], r8d
	jg	.L24
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L45:
	mov	BYTE PTR 51[r14], -1
	mov	rcx, r14
	mov	WORD PTR 38[r14], di
	mov	WORD PTR 40[r14], si
	call	DisplaySprite
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L41:
	movsx	r8d, WORD PTR 14[rbx]
	mov	r9d, 8
	mov	edx, r10d
	mov	ecx, esi
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L42
	movzx	eax, WORD PTR 10[rbx]
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L37:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	sub	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	mov	WORD PTR 10[rbx], ax
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L69:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	add	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L28:
	movsx	edx, si
	movsx	ecx, r10w
	call	CreateCollectRingEffect
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, WORD PTR [r8]
	cmp	BYTE PTR [rdx], 29
	lea	ecx, 1[rax]
	mov	WORD PTR [r8], cx
	je	.L30
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	shr	ax, 2
	movzx	eax, ax
	movzx	r9d, BYTE PTR [rdx]
	mov	edx, ecx
	imul	eax, eax, 5243
	shr	dx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	eax, 17
	shr	edx, 17
	cmp	dx, ax
	je	.L31
	test	r9b, r9b
	jne	.L31
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	cx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L33:
	xor	edx, edx
	mov	WORD PTR 12[rbx], dx
	jmp	.L34
.L30:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
.L31:
	cmp	cx, 255
	jbe	.L33
	cmp	r9b, 5
	jne	.L33
	mov	ecx, 255
	xor	edx, edx
	mov	WORD PTR [r8], cx
	mov	WORD PTR 12[rbx], dx
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	RingsScatterSingleplayer_NormalGravity
	.def	RingsScatterSingleplayer_NormalGravity;	.scl	2;	.type	32;	.endef
	.seh_proc	RingsScatterSingleplayer_NormalGravity
RingsScatterSingleplayer_NormalGravity:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r13, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 704[r13]
	mov	rcx, r13
	lea	rbx, 64[r13]
	mov	r14, r13
	lea	r15, 704[r13]
	mov	DWORD PTR 52[rsp], eax
	movzx	eax, WORD PTR 708[r13]
	mov	WORD PTR 50[rsp], ax
	call	UpdateSpriteAnimation
	mov	DWORD PTR 56[rsp], 0
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L121:
	test	BYTE PTR 16[rbx], 7
	je	.L118
.L88:
	add	ax, WORD PTR 52[rsp]
	mov	WORD PTR 10[rbx], ax
	lea	eax, 7[rbp]
	cmp	eax, 440
	ja	.L92
	sub	esi, r13d
	lea	eax, 7[rsi]
	cmp	eax, 254
	ja	.L92
	cmp	dx, 31
	ja	.L93
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L92
.L93:
	mov	eax, DWORD PTR 56[rsp]
	test	eax, eax
	je	.L94
	movzx	r13d, BYTE PTR 51[r14]
	cmp	r13b, -1
	je	.L94
	movzx	ecx, WORD PTR 42[r14]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rdi
	je	.L117
	mov	rax, QWORD PTR .refptr.gOamMallocBuffer[rip]
	mov	r8, rdi
	movzx	ebp, bp
	sal	esi, 16
	lea	rdx, 0[r13+r13*2]
	mov	r9d, -2147483643
	mov	ecx, 3
	or	esi, ebp
	lea	rdx, [rax+rdx*4]
	call	DmaSet
	mov	rax, QWORD PTR 24[r14]
	movd	xmm1, esi
	movd	xmm0, DWORD PTR 8[rax]
	psubw	xmm1, xmm0
	movd	DWORD PTR [rdi], xmm1
.L117:
	movzx	edx, WORD PTR 12[rbx]
	.p2align 4,,10
	.p2align 3
.L92:
	movzx	ecx, WORD PTR 16[rbx]
	sub	edx, 1
	mov	WORD PTR 12[rbx], dx
	lea	eax, 1[rcx]
	and	ecx, -4
	and	eax, 3
	or	eax, ecx
	mov	WORD PTR 16[rbx], ax
.L83:
	add	rbx, 20
	cmp	rbx, r15
	je	.L119
.L97:
	movzx	edx, WORD PTR 12[rbx]
	test	dx, dx
	je	.L83
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	movsx	esi, WORD PTR 10[rbx]
	mov	rcx, QWORD PTR .refptr.gWorldSpeedY[rip]
	movsx	edi, WORD PTR 8[rbx]
	add	edi, DWORD PTR [rax]
	add	edi, DWORD PTR [rbx]
	mov	eax, esi
	mov	DWORD PTR [rbx], edi
	add	esi, DWORD PTR [rcx]
	sar	edi, 8
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	add	esi, DWORD PTR 4[rbx]
	mov	ebp, edi
	mov	DWORD PTR 4[rbx], esi
	sar	esi, 8
	mov	r13d, DWORD PTR 4[r12]
	mov	r8, QWORD PTR 160[rcx]
	sub	ebp, DWORD PTR [r12]
	cmp	WORD PTR 50[rsp], dx
	jb	.L73
	cmp	WORD PTR 108[rcx], 20
	je	.L120
.L74:
	test	BYTE PTR 36[rcx], -128
	jne	.L73
	mov	r10d, DWORD PTR 12[rcx]
	movsx	r9d, BYTE PTR 76[r8]
	lea	r11d, -8[rdi]
	sar	r10d, 8
	add	r9d, r10d
	mov	DWORD PTR 60[rsp], r10d
	cmp	r11d, r9d
	jg	.L75
	lea	r10d, 8[rdi]
	cmp	r9d, r10d
	jg	.L75
.L76:
	mov	r9d, DWORD PTR 16[rcx]
	movsx	ecx, BYTE PTR 77[r8]
	lea	r11d, -16[rsi]
	sar	r9d, 8
	add	ecx, r9d
	cmp	ecx, esi
	jg	.L99
	cmp	r11d, ecx
	jle	.L77
.L99:
	lea	r10d, -15[rsi]
	cmp	ecx, r10d
	jge	.L73
	movsx	ecx, BYTE PTR 79[r8]
	add	ecx, r9d
	cmp	r11d, ecx
	jle	.L77
	.p2align 4,,10
	.p2align 3
.L73:
	test	ax, ax
	jg	.L121
.L84:
	test	BYTE PTR 710[r14], 1
	je	.L116
	test	ax, ax
	jns	.L116
	test	BYTE PTR 16[rbx], 7
	je	.L90
.L116:
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L118:
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	movsx	r8d, WORD PTR 14[rbx]
	mov	edx, edi
	mov	ecx, esi
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L86
	movzx	eax, WORD PTR 10[rbx]
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	WORD PTR 48[rcx], 0
	jne	.L73
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L75:
	lea	r10d, -7[rdi]
	cmp	r9d, r10d
	jge	.L73
	movsx	r9d, BYTE PTR 78[r8]
	mov	r10d, DWORD PTR 60[rsp]
	add	r9d, r10d
	cmp	r11d, r9d
	jg	.L73
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L94:
	mov	BYTE PTR 51[r14], -1
	mov	rcx, r14
	mov	WORD PTR 38[r14], bp
	mov	WORD PTR 40[r14], si
	call	DisplaySprite
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L86:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	add	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	mov	WORD PTR 10[rbx], ax
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L90:
	movsx	r8d, WORD PTR 14[rbx]
	lea	ecx, -16[rsi]
	mov	r9d, -8
	mov	edx, edi
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L91
	movzx	eax, WORD PTR 10[rbx]
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L119:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	movsx	edx, si
	movsx	ecx, di
	call	CreateCollectRingEffect
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, WORD PTR [r8]
	cmp	BYTE PTR [rdx], 29
	lea	ecx, 1[rax]
	mov	WORD PTR [r8], cx
	je	.L79
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	shr	ax, 2
	movzx	eax, ax
	movzx	r9d, BYTE PTR [rdx]
	mov	edx, ecx
	imul	eax, eax, 5243
	shr	dx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	eax, 17
	shr	edx, 17
	cmp	dx, ax
	je	.L80
	test	r9b, r9b
	jne	.L80
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	cx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L82:
	xor	edx, edx
	mov	WORD PTR 12[rbx], dx
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L91:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	sub	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	jmp	.L116
.L79:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
.L80:
	cmp	cx, 255
	jbe	.L82
	cmp	r9b, 5
	jne	.L82
	mov	ecx, 255
	xor	edx, edx
	mov	WORD PTR [r8], cx
	mov	WORD PTR 12[rbx], dx
	jmp	.L83
	.seh_endproc
	.p2align 4
	.globl	Task_RingsScatter_Singleplayer
	.def	Task_RingsScatter_Singleplayer;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_RingsScatter_Singleplayer
Task_RingsScatter_Singleplayer:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L123
	jmp	RingsScatterSingleplayer_FlippedGravity
	.p2align 4,,10
	.p2align 3
.L123:
	jmp	RingsScatterSingleplayer_NormalGravity
	.seh_endproc
	.p2align 4
	.globl	RingsScatterMultipak_FlippedGravity
	.def	RingsScatterMultipak_FlippedGravity;	.scl	2;	.type	32;	.endef
	.seh_proc	RingsScatterMultipak_FlippedGravity
RingsScatterMultipak_FlippedGravity:
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r15, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 704[r15]
	mov	rcx, r15
	lea	rbx, 64[r15]
	mov	DWORD PTR 68[rsp], eax
	movzx	eax, WORD PTR 708[r15]
	mov	WORD PTR 66[rsp], ax
	call	UpdateSpriteAnimation
	lea	rax, 704[r15]
	mov	DWORD PTR 72[rsp], 0
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 56[rsp], rax
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L136:
	test	BYTE PTR 710[r15], 1
	je	.L168
	test	ax, ax
	jle	.L168
	test	BYTE PTR 16[rbx], 7
	je	.L142
.L168:
	movzx	edx, WORD PTR 12[rbx]
.L140:
	sub	ax, WORD PTR 68[rsp]
	mov	WORD PTR 10[rbx], ax
	lea	eax, 7[r12]
	cmp	eax, 254
	ja	.L144
	sub	esi, r14d
	lea	eax, 7[rsi]
	cmp	eax, 254
	ja	.L144
	cmp	dx, 31
	ja	.L145
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L144
.L145:
	mov	eax, DWORD PTR 72[rsp]
	test	eax, eax
	je	.L146
	movzx	r14d, BYTE PTR 51[r15]
	cmp	r14b, -1
	je	.L146
	movzx	ecx, WORD PTR 42[r15]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rdi
	je	.L169
	lea	rdx, [r14+r14*2]
	mov	r9d, -2147483643
	mov	r8, rdi
	sal	esi, 16
	mov	rax, QWORD PTR .refptr.gOamMallocBuffer[rip]
	mov	ecx, 3
	movzx	r12d, r12w
	or	esi, r12d
	lea	rdx, [rax+rdx*4]
	call	DmaSet
	mov	rax, QWORD PTR 24[r15]
	movd	xmm1, esi
	movd	xmm0, DWORD PTR 8[rax]
	psubw	xmm1, xmm0
	movd	DWORD PTR [rdi], xmm1
.L169:
	movzx	edx, WORD PTR 12[rbx]
	.p2align 4,,10
	.p2align 3
.L144:
	movzx	ecx, WORD PTR 16[rbx]
	sub	edx, 1
	mov	WORD PTR 12[rbx], dx
	lea	eax, 1[rcx]
	and	ecx, -4
	and	eax, 3
	or	eax, ecx
	mov	WORD PTR 16[rbx], ax
.L135:
	add	rbx, 20
	cmp	QWORD PTR 56[rsp], rbx
	je	.L170
.L149:
	movzx	edx, WORD PTR 12[rbx]
	test	dx, dx
	je	.L135
	movsx	esi, WORD PTR 10[rbx]
	movsx	edi, WORD PTR 8[rbx]
	add	edi, DWORD PTR [rbx]
	mov	rcx, QWORD PTR 160[rbp]
	mov	DWORD PTR [rbx], edi
	mov	eax, esi
	sar	edi, 8
	add	esi, DWORD PTR 4[rbx]
	mov	DWORD PTR 4[rbx], esi
	mov	r12d, edi
	mov	r14d, DWORD PTR 4[r13]
	sar	esi, 8
	sub	r12d, DWORD PTR 0[r13]
	cmp	WORD PTR 66[rsp], dx
	jb	.L126
	cmp	WORD PTR 108[rbp], 20
	je	.L171
.L127:
	test	BYTE PTR 36[rbp], -128
	jne	.L126
	mov	r8d, DWORD PTR 12[rbp]
	movsx	r11d, BYTE PTR 76[rcx]
	lea	r9d, -8[rdi]
	sar	r8d, 8
	lea	r10d, [r8+r11]
	cmp	r9d, r10d
	jle	.L128
	lea	r9d, -7[rdi]
	mov	DWORD PTR 76[rsp], r9d
	movsx	r9d, BYTE PTR 78[rcx]
	sub	r9d, r11d
	add	r9d, r8d
	cmp	DWORD PTR 76[rsp], r9d
	jg	.L128
.L129:
	mov	r11d, DWORD PTR 16[rbp]
	movsx	r9d, BYTE PTR 77[rcx]
	lea	r10d, -16[rsi]
	mov	DWORD PTR 76[rsp], r10d
	sar	r11d, 8
	lea	r8d, [r11+r9]
	cmp	r8d, esi
	jg	.L151
	cmp	r10d, r8d
	jle	.L126
.L151:
	lea	r10d, -15[rsi]
	cmp	r8d, r10d
	jge	.L126
	movsx	ecx, BYTE PTR 79[rcx]
	sub	ecx, r9d
	add	ecx, r11d
	cmp	DWORD PTR 76[rsp], ecx
	jle	.L172
	.p2align 4,,10
	.p2align 3
.L126:
	test	ax, ax
	jns	.L136
	test	BYTE PTR 16[rbx], 7
	jne	.L140
	movsx	r8d, WORD PTR 14[rbx]
	lea	ecx, -16[rsi]
	mov	r9d, -8
	mov	edx, edi
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L138
	movzx	eax, WORD PTR 10[rbx]
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L171:
	cmp	WORD PTR 48[rbp], 0
	jne	.L126
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L128:
	lea	r8d, 8[rdi]
	cmp	r10d, r8d
	jg	.L126
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L146:
	mov	BYTE PTR 51[r15], -1
	mov	rcx, r15
	mov	WORD PTR 38[r15], r12w
	mov	WORD PTR 40[r15], si
	call	DisplaySprite
	mov	DWORD PTR 72[rsp], 1
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L142:
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	movsx	r8d, WORD PTR 14[rbx]
	mov	edx, edi
	mov	ecx, esi
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L143
	movzx	eax, WORD PTR 10[rbx]
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L138:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	sub	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	mov	WORD PTR 10[rbx], ax
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L170:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	add	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L172:
	movsx	edx, si
	movsx	ecx, di
	call	CreateCollectRingEffect
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, WORD PTR [r8]
	cmp	BYTE PTR [rdx], 29
	lea	ecx, 1[rax]
	mov	WORD PTR [r8], cx
	je	.L131
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	shr	ax, 2
	movzx	eax, ax
	movzx	r9d, BYTE PTR [rdx]
	mov	edx, ecx
	imul	eax, eax, 5243
	shr	dx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	eax, 17
	shr	edx, 17
	cmp	dx, ax
	je	.L132
	test	r9b, r9b
	jne	.L132
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	cx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L134:
	xor	edx, edx
	mov	WORD PTR 12[rbx], dx
	jmp	.L135
.L131:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
.L132:
	cmp	cx, 255
	jbe	.L134
	cmp	r9b, 5
	jne	.L134
	mov	ecx, 255
	mov	WORD PTR [r8], cx
	jmp	.L134
	.seh_endproc
	.p2align 4
	.globl	RingsScatterMultipak_NormalGravity
	.def	RingsScatterMultipak_NormalGravity;	.scl	2;	.type	32;	.endef
	.seh_proc	RingsScatterMultipak_NormalGravity
RingsScatterMultipak_NormalGravity:
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r15, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 704[r15]
	mov	rcx, r15
	lea	rbx, 64[r15]
	lea	r14, 704[r15]
	mov	DWORD PTR 64[rsp], eax
	movzx	eax, WORD PTR 708[r15]
	mov	WORD PTR 62[rsp], ax
	call	UpdateSpriteAnimation
	mov	DWORD PTR 68[rsp], 0
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L185:
	test	BYTE PTR 710[r15], 1
	je	.L217
	test	ax, ax
	jle	.L217
	test	BYTE PTR 16[rbx], 7
	je	.L191
.L217:
	movzx	edx, WORD PTR 12[rbx]
.L189:
	sub	ax, WORD PTR 64[rsp]
	mov	WORD PTR 10[rbx], ax
	lea	eax, 7[rbp]
	cmp	eax, 254
	ja	.L193
	sub	esi, r13d
	lea	eax, 7[rsi]
	cmp	eax, 254
	ja	.L193
	cmp	dx, 31
	ja	.L194
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 2
	jne	.L193
.L194:
	mov	eax, DWORD PTR 68[rsp]
	test	eax, eax
	je	.L195
	movzx	r13d, BYTE PTR 51[r15]
	cmp	r13b, -1
	je	.L195
	movzx	ecx, WORD PTR 42[r15]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rdi
	je	.L218
	mov	rax, QWORD PTR .refptr.gOamMallocBuffer[rip]
	mov	r8, rdi
	movzx	ebp, bp
	sal	esi, 16
	lea	rdx, 0[r13+r13*2]
	mov	r9d, -2147483643
	mov	ecx, 3
	or	esi, ebp
	lea	rdx, [rax+rdx*4]
	call	DmaSet
	mov	rax, QWORD PTR 24[r15]
	movd	xmm1, esi
	movd	xmm0, DWORD PTR 8[rax]
	psubw	xmm1, xmm0
	movd	DWORD PTR [rdi], xmm1
.L218:
	movzx	edx, WORD PTR 12[rbx]
	.p2align 4,,10
	.p2align 3
.L193:
	movzx	ecx, WORD PTR 16[rbx]
	sub	edx, 1
	mov	WORD PTR 12[rbx], dx
	lea	eax, 1[rcx]
	and	ecx, -4
	and	eax, 3
	or	eax, ecx
	mov	WORD PTR 16[rbx], ax
.L184:
	add	rbx, 20
	cmp	r14, rbx
	je	.L219
.L198:
	movzx	edx, WORD PTR 12[rbx]
	test	dx, dx
	je	.L184
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	movsx	esi, WORD PTR 10[rbx]
	mov	rcx, QWORD PTR .refptr.gWorldSpeedY[rip]
	movsx	edi, WORD PTR 8[rbx]
	add	edi, DWORD PTR [rax]
	add	edi, DWORD PTR [rbx]
	mov	eax, esi
	mov	DWORD PTR [rbx], edi
	add	esi, DWORD PTR [rcx]
	sar	edi, 8
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	add	esi, DWORD PTR 4[rbx]
	mov	ebp, edi
	mov	DWORD PTR 4[rbx], esi
	sar	esi, 8
	mov	r13d, DWORD PTR 4[r12]
	mov	r8, QWORD PTR 160[rcx]
	sub	ebp, DWORD PTR [r12]
	cmp	WORD PTR 62[rsp], dx
	jb	.L175
	cmp	WORD PTR 108[rcx], 20
	je	.L220
.L176:
	test	BYTE PTR 36[rcx], -128
	jne	.L175
	mov	r10d, DWORD PTR 12[rcx]
	movsx	r9d, BYTE PTR 76[r8]
	sar	r10d, 8
	mov	DWORD PTR 72[rsp], r10d
	lea	r11d, [r10+r9]
	lea	r10d, -8[rdi]
	cmp	r10d, r11d
	jle	.L177
	lea	r10d, -7[rdi]
	mov	DWORD PTR 76[rsp], r10d
	movsx	r10d, BYTE PTR 78[r8]
	sub	r10d, r9d
	mov	r9d, DWORD PTR 72[rsp]
	add	r10d, r9d
	cmp	DWORD PTR 76[rsp], r10d
	jg	.L177
.L178:
	mov	ecx, DWORD PTR 16[rcx]
	movsx	r10d, BYTE PTR 77[r8]
	lea	r11d, -16[rsi]
	mov	DWORD PTR 72[rsp], r11d
	sar	ecx, 8
	lea	r9d, [rcx+r10]
	cmp	r9d, esi
	jle	.L200
	cmp	r11d, r9d
	jle	.L175
.L200:
	lea	r11d, -15[rsi]
	cmp	r9d, r11d
	jge	.L175
	movsx	r8d, BYTE PTR 79[r8]
	sub	r8d, r10d
	add	r8d, ecx
	cmp	DWORD PTR 72[rsp], r8d
	jle	.L221
	.p2align 4,,10
	.p2align 3
.L175:
	test	ax, ax
	jns	.L185
	test	BYTE PTR 16[rbx], 7
	jne	.L189
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	movsx	r8d, WORD PTR 14[rbx]
	mov	edx, edi
	mov	ecx, esi
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L187
	movzx	eax, WORD PTR 10[rbx]
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L220:
	cmp	WORD PTR 48[rcx], 0
	jne	.L175
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L177:
	lea	r9d, 8[rdi]
	cmp	r11d, r9d
	jg	.L175
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L195:
	mov	BYTE PTR 51[r15], -1
	mov	rcx, r15
	mov	WORD PTR 38[r15], bp
	mov	WORD PTR 40[r15], si
	call	DisplaySprite
	mov	DWORD PTR 68[rsp], 1
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L191:
	movsx	r8d, WORD PTR 14[rbx]
	lea	ecx, -16[rsi]
	mov	r9d, -8
	mov	edx, edi
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jle	.L192
	movzx	eax, WORD PTR 10[rbx]
	movzx	edx, WORD PTR 12[rbx]
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L187:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	sub	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	mov	WORD PTR 10[rbx], ax
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L219:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	movzx	edx, WORD PTR 10[rbx]
	sal	eax, 8
	add	DWORD PTR 4[rbx], eax
	mov	eax, edx
	sar	ax, 2
	sub	eax, edx
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L221:
	movsx	edx, si
	movsx	ecx, di
	call	CreateCollectRingEffect
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, WORD PTR [r8]
	cmp	BYTE PTR [rdx], 29
	lea	ecx, 1[rax]
	mov	WORD PTR [r8], cx
	je	.L180
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	shr	ax, 2
	movzx	eax, ax
	movzx	r9d, BYTE PTR [rdx]
	mov	edx, ecx
	imul	eax, eax, 5243
	shr	dx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	eax, 17
	shr	edx, 17
	cmp	dx, ax
	je	.L181
	test	r9b, r9b
	jne	.L181
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	cx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L183:
	xor	edx, edx
	mov	WORD PTR 12[rbx], dx
	jmp	.L184
.L180:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
.L181:
	cmp	cx, 255
	jbe	.L183
	cmp	r9b, 5
	jne	.L183
	mov	ecx, 255
	mov	WORD PTR [r8], cx
	jmp	.L183
	.seh_endproc
	.p2align 4
	.globl	Task_RingsScatter_MP_Multipak
	.def	Task_RingsScatter_MP_Multipak;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_RingsScatter_MP_Multipak
Task_RingsScatter_MP_Multipak:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L223
	jmp	RingsScatterMultipak_FlippedGravity
	.p2align 4,,10
	.p2align 3
.L223:
	jmp	RingsScatterMultipak_NormalGravity
	.seh_endproc
	.p2align 4
	.globl	Task_RingsScatter_MP_Singlepak
	.def	Task_RingsScatter_MP_Singlepak;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_RingsScatter_MP_Singlepak
Task_RingsScatter_MP_Singlepak:
	.seh_endprologue
	jmp	RingsScatterMultipak_NormalGravity
	.seh_endproc
	.p2align 4
	.globl	RingsScatterSinglepakMain
	.def	RingsScatterSinglepakMain;	.scl	2;	.type	32;	.endef
	.seh_proc	RingsScatterSinglepakMain
RingsScatterSinglepakMain:
	.seh_endprologue
	jmp	RingsScatterMultipak_NormalGravity
	.seh_endproc
	.p2align 4
	.globl	DestroyRingsScatterTask
	.def	DestroyRingsScatterTask;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyRingsScatterTask
DestroyRingsScatterTask:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR gRingsScatterTask[rip]
	call	TaskDestroy
	mov	QWORD PTR gRingsScatterTask[rip], 0
	add	rsp, 40
	ret
	.seh_endproc
	.globl	gRingsScatterTask
	.bss
	.align 8
gRingsScatterTask:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateCollectRingEffect;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gWorldSpeedY, "dr"
	.globl	.refptr.gWorldSpeedY
	.linkonce	discard
.refptr.gWorldSpeedY:
	.quad	gWorldSpeedY
	.section	.rdata$.refptr.gWorldSpeedX, "dr"
	.globl	.refptr.gWorldSpeedX
	.linkonce	discard
.refptr.gWorldSpeedX:
	.quad	gWorldSpeedX
	.section	.rdata$.refptr.gOamMallocBuffer, "dr"
	.globl	.refptr.gOamMallocBuffer
	.linkonce	discard
.refptr.gOamMallocBuffer:
	.quad	gOamMallocBuffer
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
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
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
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
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
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
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
