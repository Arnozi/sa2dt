	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	RaceProgressIndicatorOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	RaceProgressIndicatorOnDestroy
RaceProgressIndicatorOnDestroy:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	cmp	BYTE PTR 385[rsi], 0
	je	.L2
	xor	ebx, ebx
	.p2align 4,,10
	.p2align 3
.L3:
	mov	rax, rbx
	add	rbx, 1
	sal	rax, 6
	mov	rcx, QWORD PTR 8[rsi+rax]
	call	VramFree
	cmp	bl, BYTE PTR 385[rsi]
	jb	.L3
.L2:
	mov	rcx, QWORD PTR 264[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 328[rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_UpdateAvatarPositions;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UpdateAvatarPositions
Task_UpdateAvatarPositions:
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
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rdx]
	mov	rsi, QWORD PTR 24[rax]
	and	r10d, 1048576
	movzx	eax, BYTE PTR 385[rsi]
	test	al, al
	je	.L7
	movzx	ecx, BYTE PTR 384[rsi]
	lea	rdx, sCourseStepSizes[rip]
	movzx	r9d, WORD PTR [rdx+rcx*2]
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	lea	rcx, 38[rsi]
	lea	r8, [rdx+rax*8]
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rax, QWORD PTR [rdx]
	add	rdx, 8
	add	rcx, 64
	mov	rax, QWORD PTR 24[rax]
	movsx	eax, WORD PTR 96[rax]
	imul	eax, r9d
	sar	eax, 16
	add	eax, 6
	mov	WORD PTR -64[rcx], ax
	cmp	r8, rdx
	jne	.L8
	mov	rdi, rsi
	xor	ebx, ebx
	test	r10d, r10d
	jne	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rcx, rdi
	add	ebx, 1
	add	rdi, 64
	call	DisplaySprite
	cmp	bl, BYTE PTR 385[rsi]
	jb	.L11
.L13:
	lea	rcx, 256[rsi]
	call	DisplaySprite
	lea	rcx, 320[rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L7:
	test	r10d, r10d
	je	.L13
.L6:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateRaceProgressIndicator
	.def	CreateRaceProgressIndicator;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateRaceProgressIndicator
CreateRaceProgressIndicator:
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
	lea	rax, RaceProgressIndicatorOnDestroy[rip]
	mov	edx, 392
	xor	r9d, r9d
	mov	r8d, 4096
	lea	rcx, Task_UpdateAvatarPositions[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	eax, 1
	sar	dl
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	BYTE PTR 384[rdi], al
	xor	eax, eax
.L20:
	cmp	QWORD PTR [rdx+rax*8], 0
	je	.L19
	add	rax, 1
	cmp	rax, 4
	jne	.L20
	mov	eax, 4
	mov	BYTE PTR 385[rdi], 4
	mov	DWORD PTR 58[rsp], 33620736
	mov	WORD PTR 62[rsp], ax
.L25:
	mov	rbp, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	r15d, DWORD PTR .LC0[rip]
	mov	rbx, rdi
	xor	esi, esi
	mov	r14, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	r13d, 192
	mov	r12d, 128
	.p2align 4,,10
	.p2align 3
.L24:
	mov	ecx, 4
	call	VramMalloc
	mov	r8d, 1125
	mov	rcx, rbx
	mov	WORD PTR 18[rbx], r8w
	mov	QWORD PTR 8[rbx], rax
	movsx	rax, BYTE PTR [rsi+rbp]
	mov	BYTE PTR 49[rbx], -1
	movzx	eax, BYTE PTR 58[rsp+rax]
	mov	DWORD PTR 38[rbx], r15d
	mov	BYTE PTR 48[rbx], al
	movzx	eax, BYTE PTR [r14]
	cmp	BYTE PTR [rsi+rbp], al
	mov	eax, r12d
	mov	BYTE PTR 53[rbx], sil
	cmovne	eax, r13d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	mov	WORD PTR 16[rbx], r9w
	add	rsi, 1
	add	rbx, 64
	mov	WORD PTR -22[rbx], ax
	mov	WORD PTR -28[rbx], r10w
	mov	WORD PTR -20[rbx], r11w
	mov	BYTE PTR -14[rbx], 16
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	cmp	sil, BYTE PTR 385[rdi]
	jb	.L24
.L22:
	mov	ecx, 4
	call	VramMalloc
	movzx	ebx, WORD PTR .LC1[rip]
	xor	edx, edx
	mov	DWORD PTR 272[rdi], 57606144
	mov	QWORD PTR 264[rdi], rax
	lea	rcx, 256[rdi]
	movabs	rax, 3940649673949184
	mov	WORD PTR 300[rdi], dx
	mov	WORD PTR 304[rdi], bx
	mov	BYTE PTR 306[rdi], 16
	mov	BYTE PTR 309[rdi], 0
	mov	QWORD PTR 288[rdi], rax
	mov	DWORD PTR 296[rdi], 20971745
	call	UpdateSpriteAnimation
	mov	ecx, 4
	call	VramMalloc
	xor	ecx, ecx
	mov	WORD PTR 368[rdi], bx
	mov	QWORD PTR 328[rdi], rax
	movabs	rax, 115967690404790272
	mov	WORD PTR 364[rdi], cx
	lea	rcx, 320[rdi]
	mov	DWORD PTR 336[rdi], 57671680
	mov	BYTE PTR 370[rdi], 16
	mov	BYTE PTR 373[rdi], 0
	mov	QWORD PTR 352[rdi], rax
	mov	DWORD PTR 360[rdi], 20971745
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L19:
	mov	ebx, 4
	mov	BYTE PTR 385[rdi], al
	mov	DWORD PTR 58[rsp], 33620736
	mov	WORD PTR 62[rsp], bx
	test	al, al
	jne	.L25
	jmp	.L22
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sCourseStepSizes:
	.word	816
	.word	845
	.word	560
	.word	637
	.word	618
	.word	578
	.word	557
	.word	748
	.word	1024
	.word	800
	.word	512
	.word	744
	.word	448
	.word	464
	.align 4
.LC0:
	.word	6
	.word	222
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
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
