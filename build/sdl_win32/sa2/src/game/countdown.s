	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8036398
	.def	sub_8036398;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8036398
sub_8036398:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 128[rbx]
	sub	ax, WORD PTR [rcx]
	mov	WORD PTR 38[rbx], ax
	sub	ax, -128
	mov	edx, DWORD PTR 132[rbx]
	sub	dx, WORD PTR 4[rcx]
	cmp	ax, 682
	seta	al
	cmp	dx, -128
	mov	WORD PTR 40[rbx], dx
	setl	cl
	or	al, cl
	jne	.L4
	cmp	dx, 368
	jle	.L2
.L4:
	mov	rcx, r8
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_RaceStartMessageMain
	.def	Task_RaceStartMessageMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_RaceStartMessageMain
Task_RaceStartMessageMain:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	ecx, WORD PTR 154[rbx]
	lea	edx, -1[rcx]
	mov	WORD PTR 154[rbx], dx
	test	dx, dx
	je	.L12
	mov	rbp, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	r12d, DWORD PTR .LC0[rip]
	lea	rsi, 64[rbx]
	movzx	eax, BYTE PTR 0[rbp]
	mov	DWORD PTR 38[rbx], r12d
	lea	r8d, 1[rax]
	or	eax, 96
	mov	BYTE PTR 0[rbp], r8b
	movzx	eax, al
	xor	r8d, r8d
	mov	DWORD PTR 32[rbx], eax
	mov	WORD PTR 64[rbx], r8w
	cmp	dx, 15
	jle	.L13
	mov	ecx, 256
	mov	eax, 256
.L8:
	mov	WORD PTR 68[rbx], cx
	mov	rcx, rbx
	lea	rdi, 144[rbx]
	mov	WORD PTR 66[rbx], ax
	mov	DWORD PTR 70[rbx], r12d
	call	UpdateSpriteAnimation
	mov	rdx, rsi
	mov	rcx, rbx
	lea	rsi, 80[rbx]
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	movzx	eax, BYTE PTR 0[rbp]
	mov	DWORD PTR 118[rbx], r12d
	lea	edx, 1[rax]
	or	eax, 96
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 112[rbx], eax
	xor	eax, eax
	mov	WORD PTR 144[rbx], ax
	movzx	eax, WORD PTR 154[rbx]
	cmp	ax, 15
	jg	.L11
	mov	edx, 32
	sub	edx, eax
	add	eax, 1
	sal	edx, 4
	sal	eax, 4
.L9:
	mov	WORD PTR 146[rbx], dx
	mov	rcx, rsi
	mov	WORD PTR 148[rbx], ax
	mov	DWORD PTR 150[rbx], r12d
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	mov	rdx, rdi
	call	TransformSprite
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	mov	eax, 32
	sal	ecx, 4
	sub	eax, edx
	sal	eax, 4
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L11:
	mov	eax, 256
	mov	edx, 256
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rcx, rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_CourseStartCountdown
	.def	TaskDestructor_CourseStartCountdown;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_CourseStartCountdown
TaskDestructor_CourseStartCountdown:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_RaceStartMessage
	.def	TaskDestructor_RaceStartMessage;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_RaceStartMessage
TaskDestructor_RaceStartMessage:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 8[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateCourseStartCountdown
	.def	CreateCourseStartCountdown;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCourseStartCountdown
CreateCourseStartCountdown:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	xor	r9d, r9d
	mov	edx, 144
	mov	r8d, 12288
	or	WORD PTR [rax], 256
	lea	rax, TaskDestructor_CourseStartCountdown[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	esi, ecx
	lea	rcx, sub_8036168[rip]
	call	TaskCreate
	mov	ecx, 4
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	cmp	sil, 1
	mov	WORD PTR 138[rbx], ax
	sbb	eax, eax
	and	ax, 130
	add	ax, 180
	mov	WORD PTR 136[rbx], ax
	call	VramMalloc
	xor	edx, edx
	mov	BYTE PTR 114[rbx], 16
	mov	ecx, 14
	movzx	esi, WORD PTR .LC1[rip]
	mov	QWORD PTR 72[rbx], rax
	mov	DWORD PTR 80[rbx], 73990144
	mov	WORD PTR 112[rbx], si
	mov	WORD PTR 100[rbx], dx
	mov	DWORD PTR 106[rbx], 256
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 120[rbx], -1
	mov	DWORD PTR 96[rbx], 0
	call	VramMalloc
	xor	ecx, ecx
	mov	DWORD PTR 16[rbx], 34734080
	mov	QWORD PTR 8[rbx], rax
	mov	WORD PTR 36[rbx], cx
	mov	DWORD PTR 42[rbx], 1152
	mov	WORD PTR 48[rbx], si
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 9216
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateRaceStartMessage
	.def	CreateRaceStartMessage;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateRaceStartMessage
CreateRaceStartMessage:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_RaceStartMessage[rip]
	xor	r9d, r9d
	mov	edx, 160
	mov	r8d, 12288
	lea	rcx, Task_RaceStartMessageMain[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, 64
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 60
	mov	WORD PTR 154[rbx], ax
	call	VramMalloc
	mov	edx, -256
	xor	ecx, ecx
	mov	BYTE PTR 50[rbx], 16
	mov	rsi, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edi, DWORD PTR .LC4[rip]
	mov	QWORD PTR 8[rbx], rax
	mov	WORD PTR 48[rbx], dx
	movzx	eax, BYTE PTR [rsi]
	mov	WORD PTR 36[rbx], cx
	mov	ecx, 64
	mov	DWORD PTR 16[rbx], edi
	lea	edx, 1[rax]
	or	eax, 96
	mov	DWORD PTR 42[rbx], 256
	movzx	eax, al
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], eax
	mov	BYTE PTR [rsi], dl
	call	VramMalloc
	mov	r8d, -255
	xor	r9d, r9d
	mov	DWORD PTR 96[rbx], edi
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, BYTE PTR [rsi]
	mov	WORD PTR 128[rbx], r8w
	lea	edx, 1[rax]
	or	eax, 96
	mov	WORD PTR 116[rbx], r9w
	movzx	eax, al
	mov	DWORD PTR 122[rbx], 256
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	BYTE PTR [rsi], dl
	mov	DWORD PTR 112[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8036168
	.def	sub_8036168;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8036168
sub_8036168:
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
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 0[rbp]
	cmp	BYTE PTR [rdi], 2
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 136[rbx]
	ja	.L21
	cmp	ax, 180
	jg	.L41
.L21:
	cmp	ax, 180
	je	.L24
	cmp	ax, 120
	je	.L42
	cmp	ax, 60
	je	.L43
.L26:
	sub	eax, 1
	mov	WORD PTR 136[rbx], ax
	test	ax, ax
	jne	.L28
.L46:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, 9
	and	WORD PTR [rax], -258
	and	DWORD PTR 36[rsi], -2097153
	cmp	BYTE PTR 138[rbx], 1
	sbb	eax, eax
	mov	WORD PTR 108[rsi], dx
	and	ax, -1280
	add	ax, 2304
	mov	WORD PTR 24[rsi], ax
	call	sub_8018818
	call	CreateRaceStartMessage
	movq	xmm0, QWORD PTR 12[rsi]
	mov	ecx, 211
	psrad	xmm0, 8
	movq	QWORD PTR 128[rbx], xmm0
	call	m4aSongNumStart
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, sub_8036398[rip]
	mov	QWORD PTR 40[rax], rcx
.L30:
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 13[rsi]
	mov	rcx, rbx
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 38[rbx], ax
	movzx	eax, WORD PTR 17[rsi]
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movzx	eax, WORD PTR 136[rbx]
	cmp	ax, 179
	jle	.L44
.L20:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	edx, WORD PTR [rdx]
	test	dl, 3
	je	.L45
	mov	ecx, 180
	mov	WORD PTR 136[rbx], cx
.L24:
	mov	ecx, 208
	call	m4aSongNumStart
	movzx	eax, WORD PTR 136[rbx]
	sub	eax, 1
	mov	WORD PTR 136[rbx], ax
	test	ax, ax
	je	.L46
.L28:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	edx, WORD PTR [rdx]
	and	edx, 16
	cmp	ax, 4
	jg	.L23
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	dx, dx
	je	.L30
	cmp	BYTE PTR 139[rbx], 0
	jne	.L30
	mov	BYTE PTR 138[rbx], 1
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L44:
	movsx	edx, ax
	mov	BYTE PTR 113[rbx], -1
	lea	r12, 64[rbx]
	imul	edx, edx, -30583
	mov	rcx, r12
	shr	edx, 16
	add	edx, eax
	sar	ax, 15
	sar	dx, 5
	sub	eax, edx
	add	eax, 2
	mov	BYTE PTR 112[rbx], al
	mov	eax, 213
	mov	WORD PTR 102[rbx], ax
	movzx	eax, WORD PTR 17[rsi]
	sub	ax, WORD PTR 4[rbp]
	sub	eax, 24
	mov	WORD PTR 104[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	movzx	eax, WORD PTR 136[rbx]
	sub	eax, 70
	cmp	ax, 109
	ja	.L20
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	rdx, gUnknown_080D7518[rip]
	mov	BYTE PTR 116[rsi], 1
	movsx	rcx, BYTE PTR [rax]
	movzx	eax, BYTE PTR 6[rdx+rcx*8]
	movzx	edx, WORD PTR 4[rdx+rcx*8]
	sal	eax, 16
	or	eax, edx
	cmp	BYTE PTR [rdi], 2
	mov	rdx, QWORD PTR 160[rsi]
	mov	DWORD PTR 112[rsi], eax
	jbe	.L32
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR 69[rdx], al
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	sub	eax, 1
	and	edx, 16
	mov	WORD PTR 136[rbx], ax
.L23:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	dx, dx
	je	.L30
	mov	BYTE PTR 139[rbx], 1
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L32:
	mov	BYTE PTR 69[rdx], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	mov	ecx, 210
	call	m4aSongNumStart
	movzx	eax, WORD PTR 136[rbx]
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L42:
	mov	ecx, 209
	call	m4aSongNumStart
	movzx	eax, WORD PTR 136[rbx]
	jmp	.L26
	.seh_endproc
	.globl	gUnknown_080D7518
	.section .rdata,"dr"
	.align 32
gUnknown_080D7518:
	.long	0
	.word	30
	.byte	1
	.space 1
	.long	0
	.word	121
	.byte	1
	.space 1
	.long	0
	.word	212
	.byte	1
	.space 1
	.long	0
	.word	303
	.byte	1
	.space 1
	.long	0
	.word	394
	.byte	1
	.space 1
	.align 4
.LC0:
	.word	213
	.word	60
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.align 4
.LC4:
	.word	0
	.word	1130
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_8018818;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
