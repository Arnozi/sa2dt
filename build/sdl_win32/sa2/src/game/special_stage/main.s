	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TickStageTimer;	.scl	3;	.type	32;	.endef
	.seh_proc	TickStageTimer
TickStageTimer:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	movzx	edx, BYTE PTR 2182[rax]
	test	dl, dl
	jg	.L10
	movzx	edx, BYTE PTR 2181[rax]
	test	dl, dl
	jle	.L4
	sub	edx, 1
.L5:
	mov	BYTE PTR 2181[rax], dl
	mov	BYTE PTR 2182[rax], 59
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movzx	edx, BYTE PTR 2180[rax]
	test	dl, dl
	jle	.L6
	sub	edx, 1
	mov	BYTE PTR 2180[rax], dl
.L7:
	mov	edx, 9
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L10:
	sub	edx, 1
	mov	BYTE PTR 2182[rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movzx	edx, BYTE PTR 2179[rax]
	test	dl, dl
	jle	.L8
	sub	edx, 1
	mov	BYTE PTR 2180[rax], 9
	mov	BYTE PTR 2179[rax], dl
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	cmp	WORD PTR 2172[rax], 7
	mov	DWORD PTR 2179[rax], 0
	je	.L1
	mov	edx, 6
	mov	WORD PTR 2172[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	SpecialStageOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	SpecialStageOnDestroy
SpecialStageOnDestroy:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	rdx, QWORD PTR .refptr.gBgOffsetsPrimary[rip]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gBgOffsetsSecondary[rip]
	add	rax, 1920
	mov	QWORD PTR [rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806CA18
	.def	sub_806CA18;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806CA18
sub_806CA18:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	rdx, QWORD PTR 24[rcx]
	mov	WORD PTR 4[rax], r8w
	mov	DWORD PTR [rax], 0
	movzx	eax, WORD PTR 2154[rdx]
	add	eax, 1
	mov	WORD PTR 2154[rdx], ax
	cmp	ax, 179
	jle	.L12
	lea	rax, sub_806C158[rip]
	mov	QWORD PTR 40[rcx], rax
.L12:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806CA54
	.def	sub_806CA54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806CA54
sub_806CA54:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 2154[rdx]
	add	eax, 1
	cmp	ax, 59
	jg	.L15
	mov	WORD PTR 2154[rdx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	xor	eax, eax
	mov	WORD PTR 2154[rdx], ax
	lea	rax, sub_806C25C[rip]
	mov	QWORD PTR 40[rcx], rax
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ShowIntroScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ShowIntroScreen
Task_ShowIntroScreen:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 5697
	xor	r9d, r9d
	mov	ecx, 175
	mov	r8d, 16
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR 2[rax], -796522749
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], r8w
	mov	r8d, 40
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	rcx, 48[rsi]
	mov	QWORD PTR 4[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR 1[rax], r9w
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	r9d, 892
	mov	QWORD PTR 4[rax], rdx
	xor	edx, edx
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 120
	mov	DWORD PTR 40[rsp], 213
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	mov	r10d, 1
	mov	ecx, 50
	mov	WORD PTR 2172[rsi], r10w
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_IntroScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806C25C
	.def	sub_806C25C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C25C
sub_806C25C:
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
	cmp	BYTE PTR 2191[rbx], 1
	je	.L27
.L20:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	jne	.L28
	mov	edx, DWORD PTR 2160[rbx]
	mov	eax, DWORD PTR 2168[rbx]
	cmp	edx, 99
	jle	.L29
	add	eax, 100
	sub	edx, 100
.L25:
	mov	ecx, 99900
	mov	DWORD PTR 2160[rbx], edx
	cmp	eax, ecx
	cmovg	eax, ecx
	mov	DWORD PTR 2168[rbx], eax
	movzx	eax, WORD PTR 2154[rbx]
	add	eax, 1
	mov	WORD PTR 2154[rbx], ax
	test	al, 3
	je	.L30
.L26:
	test	edx, edx
	jne	.L18
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_806C338[rip]
	mov	QWORD PTR 40[rax], rsi
.L18:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	add	eax, edx
	xor	edx, edx
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, sub_806C42C[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	sub	BYTE PTR 2192[rbx], 1
	jne	.L20
	mov	ecx, 55
	call	m4aSongNumStart
	mov	BYTE PTR 2191[rbx], 0
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L30:
	mov	ecx, 140
	call	m4aSongNumStart
	mov	edx, DWORD PTR 2160[rbx]
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	sub_806C338
	.def	sub_806C338;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C338
sub_806C338:
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
	cmp	BYTE PTR 2191[rbx], 1
	je	.L41
.L33:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	jne	.L42
	mov	edx, DWORD PTR 2164[rbx]
	mov	eax, DWORD PTR 2168[rbx]
	cmp	edx, 99
	jle	.L43
	add	eax, 100
	sub	edx, 100
.L38:
	mov	ecx, 99900
	mov	DWORD PTR 2164[rbx], edx
	cmp	eax, ecx
	cmovg	eax, ecx
	mov	DWORD PTR 2168[rbx], eax
	movzx	eax, WORD PTR 2154[rbx]
	add	eax, 1
	mov	WORD PTR 2154[rbx], ax
	test	al, 3
	je	.L44
.L39:
	test	edx, edx
	jne	.L31
	mov	edx, DWORD PTR 2168[rbx]
	test	edx, edx
	jne	.L45
.L40:
	mov	DWORD PTR 2164[rbx], 0
	xor	eax, eax
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_806C49C[rip]
	mov	QWORD PTR 40[rax], rsi
.L31:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	add	eax, edx
	xor	edx, edx
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L42:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, sub_806C42C[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	sub	BYTE PTR 2192[rbx], 1
	jne	.L33
	mov	ecx, 55
	call	m4aSongNumStart
	mov	BYTE PTR 2191[rbx], 0
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L44:
	mov	ecx, 140
	call	m4aSongNumStart
	mov	edx, DWORD PTR 2164[rbx]
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L45:
	mov	ecx, 141
	call	m4aSongNumStart
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	sub_806C42C
	.def	sub_806C42C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C42C
sub_806C42C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rdx]
	mov	eax, DWORD PTR 2160[rbx]
	add	eax, DWORD PTR 2168[rbx]
	add	eax, DWORD PTR 2164[rbx]
	mov	QWORD PTR 2160[rbx], 0
	cmp	eax, 99900
	jle	.L54
	mov	DWORD PTR 2168[rbx], 99900
.L49:
	mov	ecx, 141
	call	m4aSongNumStart
	mov	rdx, QWORD PTR [rsi]
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L54:
	mov	DWORD PTR 2168[rbx], eax
	test	eax, eax
	jne	.L49
.L48:
	xor	eax, eax
	mov	WORD PTR 2154[rbx], ax
	lea	rax, sub_806C49C[rip]
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806C49C
	.def	sub_806C49C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C49C
sub_806C49C:
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
	add	WORD PTR 2154[rbx], 1
	cmp	BYTE PTR 2191[rbx], 1
	je	.L62
.L57:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	jne	.L59
	cmp	WORD PTR 2154[rbx], 60
	jle	.L55
.L59:
	mov	rax, QWORD PTR .LC5[rip]
	mov	DWORD PTR 216[rbx], 191
	mov	QWORD PTR 208[rbx], rax
	xor	eax, eax
	cmp	BYTE PTR 2189[rbx], 0
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	je	.L61
	lea	rdx, sub_806C560[rip]
	mov	QWORD PTR 40[rax], rdx
.L55:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	lea	rcx, sub_806C6A4[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	sub	BYTE PTR 2192[rbx], 1
	jne	.L57
	mov	ecx, 55
	call	m4aSongNumStart
	mov	BYTE PTR 2191[rbx], 0
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	sub_806C638
	.def	sub_806C638;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C638
sub_806C638:
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
	cmp	BYTE PTR 2191[rbx], 1
	je	.L69
.L65:
	movzx	eax, WORD PTR 2154[rbx]
	sub	eax, 1
	test	ax, ax
	jle	.L67
	mov	WORD PTR 2154[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	xor	eax, eax
	lea	rdx, sub_806C6A4[rip]
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	sub	BYTE PTR 2192[rbx], 1
	jne	.L65
	mov	ecx, 55
	call	m4aSongNumStart
	mov	BYTE PTR 2191[rbx], 0
	jmp	.L65
	.seh_endproc
	.p2align 4
	.globl	Task_IntroScreenMain
	.def	Task_IntroScreenMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_IntroScreenMain
Task_IntroScreenMain:
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
	lea	rcx, 48[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 2154[rbx]
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	r9d, 175
	add	eax, 1
	mov	WORD PTR [rdx], r9w
	mov	WORD PTR 2154[rbx], ax
	cmp	ax, 139
	jle	.L70
	mov	eax, 191
	mov	ecx, 16
	xor	r8d, r8d
	mov	DWORD PTR 216[rbx], 191
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .LC7[rip]
	mov	WORD PTR 2154[rbx], r8w
	mov	QWORD PTR 208[rbx], rax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_InitComponents[rip]
	mov	WORD PTR 4[rdx], cx
	mov	QWORD PTR 40[rax], rsi
.L70:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_InitComponents;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_InitComponents
Task_InitComponents:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ecx, 2
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, WORD PTR 2154[rbx]
	mov	WORD PTR 2172[rbx], cx
	cmp	ax, 2
	je	.L73
	jg	.L74
	test	ax, ax
	je	.L75
	cmp	ax, 1
	jne	.L77
	mov	rcx, rbx
	call	CreateSpecialStageCollectables
	mov	QWORD PTR 16[rbx], rax
	movzx	eax, WORD PTR 2154[rbx]
.L77:
	add	eax, 1
	mov	WORD PTR 2154[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	cmp	ax, 3
	jne	.L77
	mov	eax, 3
	mov	WORD PTR 2172[rbx], ax
	lea	rax, Task_FadeInSpecialStage[rip]
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rcx, rbx
	call	CreateSpecialStageWorld
	mov	rcx, rbx
	mov	QWORD PTR 8[rbx], rax
	call	CreateSpecialStageUI
	mov	QWORD PTR 32[rbx], rax
	movzx	eax, WORD PTR 2154[rbx]
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L75:
	mov	rcx, rbx
	call	CreateSpecialStagePhysics
	mov	rcx, rbx
	mov	QWORD PTR [rbx], rax
	call	CreateSpecialStagePlayer
	mov	rcx, rbx
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 2208[rbx], rax
	call	CreateSpecialStageGuardRobo
	mov	QWORD PTR 40[rbx], rax
	movzx	eax, WORD PTR 2154[rbx]
	jmp	.L77
	.seh_endproc
	.p2align 4
	.def	SpecialStagePauseMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	SpecialStagePauseMenuMain
SpecialStagePauseMenuMain:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gPressedKeys[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, WORD PTR [r8]
	mov	rax, QWORD PTR 24[rax]
	movzx	ecx, BYTE PTR 2178[rax]
	cmp	cl, 1
	je	.L98
.L81:
	and	edx, 8
	jne	.L99
.L86:
	xor	eax, eax
.L80:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	test	cl, cl
	mov	BYTE PTR 2190[rax], 0
	sete	BYTE PTR 2178[rax]
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L98:
	test	dl, -64
	jne	.L100
	test	dl, 1
	je	.L81
	cmp	BYTE PTR 2190[rax], 0
	jne	.L87
	and	edx, -2
	mov	BYTE PTR 2178[rax], 0
	mov	WORD PTR [r8], dx
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L100:
	mov	r8d, edx
	movzx	r9d, BYTE PTR 2190[rax]
	and	r8w, 128
	and	edx, 64
	je	.L83
	mov	BYTE PTR 2190[rax], 0
	test	r8w, r8w
	je	.L91
.L90:
	mov	BYTE PTR 2190[rax], 1
.L84:
	cmp	cl, r9b
	je	.L86
	mov	ecx, 108
	call	m4aSongNumStart
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L83:
	test	r8w, r8w
	je	.L86
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L91:
	xor	ecx, ecx
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L87:
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	call	CreateTitleScreenAndSkipIntro
	mov	eax, 1
	jmp	.L80
	.seh_endproc
	.p2align 4
	.globl	Task_SpecialStageStartDelay
	.def	Task_SpecialStageStartDelay;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpecialStageStartDelay
Task_SpecialStageStartDelay:
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
	call	SpecialStagePauseMenuMain
	test	eax, eax
	jne	.L101
	cmp	BYTE PTR 2178[rbx], 0
	je	.L104
	movzx	eax, WORD PTR 2154[rbx]
.L105:
	cmp	ax, 59
	jle	.L101
	xor	eax, eax
	mov	edx, 5
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 2172[rbx], dx
	lea	rdx, Task_SpecialStageMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L101:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	call	TickStageTimer
	movzx	eax, WORD PTR 2154[rbx]
	add	eax, 1
	mov	WORD PTR 2154[rbx], ax
	jmp	.L105
	.seh_endproc
	.p2align 4
	.globl	Task_SpecialStageMain
	.def	Task_SpecialStageMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpecialStageMain
Task_SpecialStageMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	rax, QWORD PTR 24[rbx]
	movzx	edx, WORD PTR 2172[rbx]
	mov	r8, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 248[r8]
	cmp	dx, 6
	je	.L127
	cmp	dx, 7
	je	.L128
	cmp	ax, 14
	je	.L114
	cmp	ax, 15
	jne	.L113
.L115:
	mov	eax, 8
	mov	WORD PTR 2172[rbx], ax
	lea	rax, sub_806BFD0[rip]
	mov	QWORD PTR 40[rcx], rax
.L107:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	sub	eax, 14
	cmp	ax, 1
	jbe	.L129
	mov	ecx, 11
	mov	WORD PTR 248[r8], cx
	mov	r8d, 7
	mov	WORD PTR 2172[rbx], r8w
.L111:
	call	SpecialStagePauseMenuMain
	test	eax, eax
	jne	.L107
.L114:
	cmp	BYTE PTR 2178[rbx], 0
	jne	.L107
	call	TickStageTimer
	cmp	BYTE PTR 2191[rbx], 0
	je	.L118
	sub	BYTE PTR 2192[rbx], 1
	jne	.L107
	cmp	BYTE PTR 2179[rbx], 0
	mov	BYTE PTR 2191[rbx], 0
	jne	.L119
	cmp	BYTE PTR 2180[rbx], 2
	jle	.L120
.L119:
	mov	ecx, 51
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L128:
	lea	edx, -11[rax]
	cmp	dx, 2
	ja	.L110
.L113:
	cmp	ax, 13
	je	.L115
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L129:
	mov	r9d, 7
	mov	WORD PTR 2172[rbx], r9w
.L110:
	mov	edx, 11
	mov	WORD PTR 248[r8], dx
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L118:
	movabs	rax, 72057594021150720
	movabs	rdx, 12884901888
	and	rax, QWORD PTR 2176[rbx]
	cmp	rax, rdx
	jne	.L107
.L120:
	mov	ecx, 52
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	sub_806BFD0
	.def	sub_806BFD0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806BFD0
sub_806BFD0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	xor	edx, edx
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rcx]
	add	rcx, 208
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -168[rcx]
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 88[rax], dx
	mov	rax, QWORD PTR .LC9[rip]
	mov	DWORD PTR 8[rcx], 191
	mov	QWORD PTR [rcx], rax
	call	UpdateScreenFade
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ecx, -27071
	cmp	WORD PTR 248[rsi], 13
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 4159
	je	.L132
.L131:
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_FadeToResultScreen[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	mov	ecx, 54
	call	m4aSongNumStart
	jmp	.L131
	.seh_endproc
	.p2align 4
	.globl	Task_FadeInSpecialStage
	.def	Task_FadeInSpecialStage;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_FadeInSpecialStage
Task_FadeInSpecialStage:
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
	lea	rcx, 208[rbx]
	call	UpdateScreenFade
	test	al, al
	jne	.L138
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	xor	eax, eax
	mov	edx, 4
	mov	ecx, 51
	mov	WORD PTR 2154[rbx], ax
	mov	WORD PTR 2172[rbx], dx
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_SpecialStageStartDelay[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_FadeToResultScreen
	.def	Task_FadeToResultScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_FadeToResultScreen
Task_FadeToResultScreen:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rbx]
	lea	rcx, 208[rbx]
	mov	rdi, QWORD PTR 24[rax]
	call	UpdateScreenFade
	test	al, al
	je	.L163
	mov	rcx, QWORD PTR 40[rbx]
	test	rcx, rcx
	je	.L142
	call	TaskDestroy
	mov	QWORD PTR 40[rbx], 0
.L142:
	mov	rcx, QWORD PTR [rbx]
	test	rcx, rcx
	je	.L143
	call	TaskDestroy
	mov	QWORD PTR [rbx], 0
.L143:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L144
	call	TaskDestroy
	mov	QWORD PTR 8[rbx], 0
.L144:
	mov	rcx, QWORD PTR 16[rbx]
	test	rcx, rcx
	je	.L145
	call	TaskDestroy
	mov	QWORD PTR 16[rbx], 0
.L145:
	mov	rcx, QWORD PTR 32[rbx]
	test	rcx, rcx
	je	.L146
	call	TaskDestroy
	mov	QWORD PTR 32[rbx], 0
.L146:
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 112[rbx]
	xor	edx, edx
	mov	r9d, 139
	mov	DWORD PTR 64[rsp], 0
	mov	r8d, 7
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 32
	mov	DWORD PTR 32[rsp], 32
	call	SpecialStageDrawBackground
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, 4672
	cmp	WORD PTR 248[rdi], 13
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], cx
	je	.L164
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_806C158[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	xor	eax, eax
	mov	edx, 16
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 248[rdi], dx
	lea	rdx, sub_806CA18[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8d, -27071
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 4159
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806C158
	.def	sub_806C158;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C158
sub_806C158:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rbx]
	mov	rcx, rbx
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], r8w
	mov	DWORD PTR [rax], 0
	call	CreateSpecialStageResultsScreen
	mov	edx, 99900
	mov	QWORD PTR 32[rbx], rax
	movsx	eax, WORD PTR 2156[rbx]
	imul	eax, eax, 100
	cmp	eax, edx
	cmovg	eax, edx
	cmp	BYTE PTR 2189[rbx], 0
	mov	DWORD PTR 2160[rbx], eax
	je	.L166
	cmp	WORD PTR 248[rdi], 16
	mov	QWORD PTR 2164[rbx], 10000
	jne	.L168
	mov	ecx, 56
	call	m4aSongNumStart
	mov	ecx, -27135
	mov	WORD PTR 2191[rbx], cx
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L166:
	cmp	WORD PTR 248[rdi], 16
	mov	QWORD PTR 2164[rbx], 0
	jne	.L168
	mov	ecx, 55
	call	m4aSongNumStart
	xor	edx, edx
	mov	WORD PTR 2191[rbx], dx
.L170:
	xor	eax, eax
	lea	rcx, sub_806CA54[rip]
	mov	WORD PTR 2154[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	mov	ecx, 57
	call	m4aSongNumStart
	jmp	.L170
	.seh_endproc
	.p2align 4
	.globl	sub_806C560
	.def	sub_806C560;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C560
sub_806C560:
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
	mov	r12, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [r12]
	movzx	edi, BYTE PTR 2174[rbx]
	cmp	BYTE PTR 2191[rbx], 1
	movzx	esi, BYTE PTR 12[rax+rdi]
	je	.L178
.L173:
	movzx	eax, BYTE PTR 2176[rbx]
	bt	esi, eax
	jnc	.L179
.L175:
	mov	rdx, QWORD PTR [r12]
	mov	eax, 12
	mov	WORD PTR 2154[rbx], ax
	movzx	eax, BYTE PTR 12[rdx+rdi]
.L176:
	not	eax
	test	al, 127
	jne	.L177
	mov	BYTE PTR 12[rdx+rdi], -1
.L177:
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, sub_806C638[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	sub	BYTE PTR 2192[rbx], 1
	jne	.L173
	mov	ecx, 55
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 2176[rbx]
	mov	BYTE PTR 2191[rbx], 0
	bt	esi, eax
	jc	.L175
	.p2align 4,,10
	.p2align 3
.L179:
	mov	rcx, rbx
	call	SpecialStageResultsScreenNewEmeraldSequence
	movzx	ecx, BYTE PTR 2176[rbx]
	mov	rdx, QWORD PTR [r12]
	mov	eax, 1
	sal	eax, cl
	mov	ecx, 120
	or	al, BYTE PTR 12[rdx+rdi]
	mov	BYTE PTR 12[rdx+rdi], al
	mov	WORD PTR 2154[rbx], cx
	jmp	.L176
	.seh_endproc
	.p2align 4
	.globl	sub_806C6A4
	.def	sub_806C6A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806C6A4
sub_806C6A4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 208[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L180
	movzx	eax, WORD PTR 2154[rbx]
	add	eax, 1
	mov	WORD PTR 2154[rbx], ax
	cmp	ax, 119
	jle	.L180
	mov	rcx, QWORD PTR 24[rbx]
	mov	esi, DWORD PTR 2168[rbx]
	test	rcx, rcx
	je	.L184
	call	TaskDestroy
	mov	QWORD PTR 24[rbx], 0
.L184:
	mov	rcx, QWORD PTR 32[rbx]
	test	rcx, rcx
	je	.L185
	call	TaskDestroy
	mov	QWORD PTR 32[rbx], 0
.L185:
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	ecx, DWORD PTR [rax]
	lea	edx, [rsi+rcx]
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
	je	.L186
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L186
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [r8]
	sub	ecx, edx
	mov	edx, 255
	add	eax, ecx
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [r8], al
.L186:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movsx	edx, WORD PTR 2156[rbx]
	xor	ecx, ecx
	mov	rax, QWORD PTR [rax]
	add	DWORD PTR 880[rax], edx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	call	WriteSaveGame
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	GameStageStart
	.p2align 4,,10
	.p2align 3
.L180:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStage
	.def	CreateSpecialStage;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStage
CreateSpecialStage:
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
	mov	ebx, edx
	mov	ebp, ecx
	mov	edi, ecx
	call	m4aMPlayAllStop
	cmp	bx, -1
	je	.L194
	mov	esi, ebx
	sar	si, 2
.L195:
	cmp	bp, -1
	jne	.L196
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	di, BYTE PTR [rax]
.L196:
	call	InitSpecialStageScreenVram
	lea	rax, SpecialStageOnDestroy[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 2216
	lea	rcx, Task_ShowIntroScreen[rip]
	call	TaskCreate
	cmp	di, 4
	movzx	r8d, sil
	movsx	rsi, si
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC14[rip]
	setg	cl
	mov	r10d, -27264
	movzx	ecx, cl
	mov	QWORD PTR 2140[rdx], rax
	mov	eax, 512
	mov	WORD PTR 2152[rdx], ax
	mov	eax, 2
	cmovg	edi, eax
	movzx	eax, bl
	xor	r9d, r9d
	mov	DWORD PTR 2148[rdx], 0
	sal	eax, 8
	mov	WORD PTR 2172[rdx], r9w
	or	eax, r8d
	movzx	edi, dil
	mov	DWORD PTR 2154[rdx], 0
	sal	eax, 8
	mov	WORD PTR 2202[rdx], r10w
	mov	QWORD PTR 2178[rdx], 131328
	or	eax, ecx
	mov	DWORD PTR 2189[rdx], 0
	sal	eax, 8
	or	eax, edi
	mov	DWORD PTR 2174[rdx], eax
	mov	rax, QWORD PTR .refptr.gSpecialStageScoreTargets[rip]
	movsx	ecx, WORD PTR [rax+rsi*2]
	imul	eax, ecx, 5243
	mov	WORD PTR 2158[rdx], cx
	mov	r8d, ecx
	mov	r9d, ecx
	imul	ecx, ecx, 26215
	sar	r9w, 15
	sar	eax, 19
	sar	ecx, 18
	sub	eax, r9d
	sub	ecx, r9d
	mov	r9d, -10
	mov	BYTE PTR 2186[rdx], al
	imul	eax, r9d
	add	eax, ecx
	lea	ecx, [rcx+rcx*4]
	add	ecx, ecx
	mov	BYTE PTR 2187[rdx], al
	movabs	rax, 4334714916231184597
	sub	r8d, ecx
	mov	QWORD PTR 2194[rdx], rax
	mov	BYTE PTR 2188[rdx], r8b
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	esi, BYTE PTR [rax]
	sar	sil, 2
	movsx	si, sil
	jmp	.L195
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	-128
	.align 8
.LC5:
	.word	0
	.word	1
	.word	0
	.word	64
	.align 8
.LC7:
	.word	0
	.word	2
	.word	0
	.word	256
	.align 8
.LC9:
	.word	1
	.word	1
	.word	0
	.word	64
	.align 8
.LC14:
	.long	16777216
	.long	16777216
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_806CA88;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStageCollectables;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStageWorld;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStageUI;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStagePhysics;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStagePlayer;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStageGuardRobo;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	SpecialStageDrawBackground;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStageResultsScreen;	.scl	2;	.type	32;	.endef
	.def	SpecialStageResultsScreenNewEmeraldSequence;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	InitSpecialStageScreenVram;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSpecialStageScoreTargets, "dr"
	.globl	.refptr.gSpecialStageScoreTargets
	.linkonce	discard
.refptr.gSpecialStageScoreTargets:
	.quad	gSpecialStageScoreTargets
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gSpecialStageVramPointer, "dr"
	.globl	.refptr.gSpecialStageVramPointer
	.linkonce	discard
.refptr.gSpecialStageVramPointer:
	.quad	gSpecialStageVramPointer
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gBgOffsetsSecondary, "dr"
	.globl	.refptr.gBgOffsetsSecondary
	.linkonce	discard
.refptr.gBgOffsetsSecondary:
	.quad	gBgOffsetsSecondary
	.section	.rdata$.refptr.gBgOffsetsBuffer, "dr"
	.globl	.refptr.gBgOffsetsBuffer
	.linkonce	discard
.refptr.gBgOffsetsBuffer:
	.quad	gBgOffsetsBuffer
	.section	.rdata$.refptr.gBgOffsetsPrimary, "dr"
	.globl	.refptr.gBgOffsetsPrimary
	.linkonce	discard
.refptr.gBgOffsetsPrimary:
	.quad	gBgOffsetsPrimary
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
