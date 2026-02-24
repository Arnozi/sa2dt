	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable093;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable093
TaskDestructor_Interactable093:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Render;	.scl	3;	.type	32;	.endef
	.seh_proc	Render
Render:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 128[rcx]
	sub	dx, WORD PTR [r8]
	mov	eax, DWORD PTR 132[rcx]
	sub	ax, WORD PTR 4[r8]
	movzx	r8d, WORD PTR 138[rcx]
	mov	WORD PTR 102[rcx], dx
	lea	rbx, 64[rcx]
	mov	WORD PTR 42[rsp], dx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	WORD PTR 104[rcx], ax
	mov	WORD PTR 44[rsp], ax
	movzx	eax, BYTE PTR [rdx]
	mov	WORD PTR 36[rsp], r8w
	lea	r8d, 1[rax]
	mov	DWORD PTR 38[rsp], 16777472
	mov	BYTE PTR [rdx], r8b
	mov	edx, eax
	or	edx, 8288
	cmp	WORD PTR 136[rcx], 0
	mov	DWORD PTR 96[rcx], edx
	jne	.L4
	or	eax, 9312
	mov	DWORD PTR 96[rcx], eax
.L4:
	lea	rdx, 36[rsp]
	mov	rcx, rbx
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	nop
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IdleBeforeReset;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IdleBeforeReset
Task_IdleBeforeReset:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rdx]
	movzx	eax, WORD PTR 142[rcx]
	lea	r8d, 1[rax]
	mov	WORD PTR 142[rcx], r8w
	cmp	ax, 60
	jbe	.L6
	lea	rax, Task_Reset[rip]
	mov	QWORD PTR 40[rdx], rax
.L6:
	jmp	Render
	.seh_endproc
	.p2align 4
	.def	Task_Active;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Active
Task_Active:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], -128
	jne	.L11
	movzx	eax, WORD PTR 140[rsi]
	sub	eax, 1
	mov	WORD PTR 140[rsi], ax
	cmp	ax, -1
	je	.L11
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR [rdx]
	or	ax, WORD PTR 2[rdx]
	and	ax, WORD PTR 102[rbx]
	je	.L29
.L11:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	eax, DWORD PTR 36[rbx]
	test	al, -128
	jne	.L10
	and	eax, -4194305
	movzx	r8d, WORD PTR 138[rsi]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	DWORD PTR 36[rbx], eax
	lea	eax, 256[r8]
	mov	edx, r8d
	movsx	r8, r8d
	cdqe
	movzx	ecx, WORD PTR [r9+rax*2]
	mov	eax, ecx
	sar	ax, 6
	cwde
	sal	eax, 5
	add	DWORD PTR 12[rbx], eax
	movzx	eax, WORD PTR [r9+r8*2]
	sal	eax, 16
	or	eax, ecx
	movd	xmm0, eax
	psraw	xmm0, 6
	movdqu	xmm1, xmm0
	pextrw	eax, xmm0, 1
	psllw	xmm1, 4
	cwde
	psubw	xmm1, xmm0
	sal	eax, 5
	add	DWORD PTR 16[rbx], eax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movd	DWORD PTR 20[rbx], xmm1
	test	BYTE PTR [rax], -128
	je	.L13
	pextrw	eax, xmm1, 1
	neg	eax
	mov	WORD PTR 22[rbx], ax
.L13:
	shr	dx, 2
	mov	ecx, 289
	mov	BYTE PTR 40[rbx], dl
	mov	edx, 4
	mov	WORD PTR 48[rbx], dx
	call	m4aSongNumStart
.L10:
	xor	eax, eax
	mov	rcx, rsi
	mov	WORD PTR 142[rsi], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_IdleBeforeReset[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	eax, WORD PTR 142[rsi]
	cmp	ax, 1
	sbb	edx, edx
	cmp	WORD PTR 136[rsi], 0
	jne	.L15
	and	edx, 256
	add	edx, 384
.L16:
	movzx	ecx, WORD PTR 138[rsi]
	mov	r8d, 10
	call	sub_808558C
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	cmp	dx, 4
	jbe	.L17
	test	ax, ax
	setg	al
	movzx	eax, al
	lea	eax, -4[0+rax*8]
.L18:
	add	ax, WORD PTR 138[rsi]
	mov	rcx, rsi
	and	ax, 1023
	mov	WORD PTR 138[rsi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L15:
	and	edx, -768
	add	edx, 896
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	xor	WORD PTR 142[rsi], 1
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	Task_Reset;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Reset
Task_Reset:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	edx, edx
	mov	r8d, 10
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	WORD PTR 136[rbx], 0
	movzx	ecx, WORD PTR 138[rbx]
	sete	dl
	sal	edx, 9
	call	sub_808558C
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	cmp	dx, 4
	ja	.L31
	add	ax, WORD PTR 138[rbx]
	lea	rcx, Task_Idle[rip]
	and	ax, 1023
	mov	WORD PTR 138[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
.L32:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 132[rbx]
	mov	r9d, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	r9w, WORD PTR [rdx]
	movzx	edx, WORD PTR 128[rbx]
	add	edx, r9d
	cmp	dx, 682
	ja	.L34
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L34
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L34:
	mov	rax, QWORD PTR 144[rbx]
	movzx	edx, BYTE PTR 152[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	edx, WORD PTR 138[rbx]
	test	ax, ax
	jle	.L33
	add	edx, 4
	and	dx, 1023
	mov	WORD PTR 138[rbx], dx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	sub	edx, 4
	and	dx, 1023
	mov	WORD PTR 138[rbx], dx
	jmp	.L32
	.seh_endproc
	.p2align 4
	.def	Task_Activating;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Activating
Task_Activating:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR 24[rdx]
	test	BYTE PTR 36[rax], -128
	je	.L37
	xor	r8d, r8d
	lea	rax, Task_IdleBeforeReset[rip]
	mov	WORD PTR 142[rcx], r8w
	mov	QWORD PTR 40[rdx], rax
.L38:
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L37:
	mov	r10d, DWORD PTR 128[rcx]
	mov	r9d, DWORD PTR 132[rcx]
	mov	r11d, DWORD PTR 12[rax]
	mov	r8d, DWORD PTR 16[rax]
	sal	r10d, 8
	sal	r9d, 8
	cmp	r10d, r11d
	jge	.L39
	sub	r11d, 256
	mov	DWORD PTR 12[rax], r11d
	cmp	r10d, r11d
	jle	.L40
.L44:
	mov	DWORD PTR 12[rax], r10d
	cmp	r8d, r9d
	jg	.L41
.L50:
	jge	.L38
.L42:
	add	r8d, 256
	cmp	r8d, r9d
	cmovg	r8d, r9d
	mov	DWORD PTR 16[rax], r8d
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L39:
	jle	.L43
	add	r11d, 256
	mov	DWORD PTR 12[rax], r11d
	cmp	r10d, r11d
	jl	.L44
.L40:
	cmp	r8d, r9d
	jle	.L50
.L41:
	sub	r8d, 256
	cmp	r8d, r9d
	cmovl	r8d, r9d
	mov	DWORD PTR 16[rax], r8d
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L43:
	cmp	r8d, r9d
	jg	.L41
	jl	.L42
	mov	eax, 512
	mov	WORD PTR 140[rcx], ax
	xor	eax, eax
	cmp	WORD PTR 136[rcx], 0
	setne	al
	mov	WORD PTR 142[rcx], ax
	lea	rax, Task_Active[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	Render
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Cannon
	.def	CreateEntity_Cannon;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Cannon
CreateEntity_Cannon:
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
	lea	rax, TaskDestructor_Interactable093[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	edi, r9d
	mov	ebx, edx
	xor	r9d, r9d
	mov	esi, r8d
	mov	edx, 160
	movzx	ebx, bx
	mov	r8d, 8208
	lea	rcx, Task_Idle[rip]
	sal	ebx, 5
	movzx	esi, si
	call	TaskCreate
	movsx	dx, BYTE PTR 3[rbp]
	sal	esi, 5
	mov	rcx, QWORD PTR 24[rax]
	mov	WORD PTR 136[rcx], dx
	movzx	eax, BYTE PTR 0[rbp]
	add	ebx, eax
	mov	r8d, eax
	sal	ebx, 3
	mov	DWORD PTR 128[rcx], ebx
	movzx	eax, BYTE PTR 1[rbp]
	mov	ebx, edi
	mov	QWORD PTR 144[rcx], rbp
	add	esi, eax
	movzx	eax, r8b
	mov	DWORD PTR 106[rcx], 448
	mov	ah, bl
	sal	esi, 3
	mov	BYTE PTR 114[rcx], 16
	mov	WORD PTR 152[rcx], ax
	xor	eax, eax
	test	dx, dx
	mov	edx, -255
	sete	al
	mov	BYTE PTR 117[rcx], 0
	add	rcx, 64
	sal	eax, 9
	mov	DWORD PTR 68[rcx], esi
	mov	WORD PTR 74[rcx], ax
	xor	eax, eax
	mov	WORD PTR 36[rcx], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 56[rcx], -1
	add	rax, 76928
	mov	DWORD PTR 32[rcx], 8192
	mov	QWORD PTR 8[rcx], rax
	mov	DWORD PTR 16[rcx], 40370176
	mov	WORD PTR 48[rcx], dx
	call	UpdateSpriteAnimation
	mov	BYTE PTR 0[rbp], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	Cannon_IsPlayerTouching
	.def	Cannon_IsPlayerTouching;	.scl	2;	.type	32;	.endef
	.seh_proc	Cannon_IsPlayerTouching
Cannon_IsPlayerTouching:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r11]
	mov	rdx, rcx
	and	eax, 128
	jne	.L59
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	movzx	ecx, WORD PTR 128[rcx]
	movsx	r10d, BYTE PTR 124[rdx]
	movzx	r8d, WORD PTR 13[r11]
	movsx	r9d, BYTE PTR 76[rbx]
	sub	cx, WORD PTR [rsi]
	sub	r8w, WORD PTR [rsi]
	movsx	ecx, cx
	movsx	r8d, r8w
	add	r10d, ecx
	add	r9d, r8d
	cmp	r10d, r9d
	jg	.L56
	movsx	edi, BYTE PTR 126[rdx]
	add	ecx, edi
	cmp	r9d, ecx
	jg	.L61
.L57:
	mov	r9d, DWORD PTR 4[rsi]
	movzx	ecx, WORD PTR 132[rdx]
	movzx	r8d, WORD PTR 17[r11]
	movsx	r10d, BYTE PTR 125[rdx]
	sub	ecx, r9d
	sub	r8d, r9d
	movsx	r9d, BYTE PTR 77[rbx]
	movsx	ecx, cx
	movsx	r8d, r8w
	add	r10d, ecx
	add	r9d, r8d
	cmp	r10d, r9d
	jg	.L58
	movsx	edx, BYTE PTR 127[rdx]
	add	edx, ecx
	cmp	r9d, edx
	jle	.L60
	cmp	r10d, r9d
	je	.L58
.L54:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	cmp	r10d, r9d
	jne	.L54
	.p2align 4,,10
	.p2align 3
.L56:
	movsx	ecx, BYTE PTR 78[rbx]
	add	ecx, r8d
	cmp	r10d, ecx
	jg	.L54
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L59:
	xor	eax, eax
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	movsx	eax, BYTE PTR 79[rbx]
	add	eax, r8d
	cmp	r10d, eax
	setle	al
	movzx	eax, al
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	mov	eax, 1
	jmp	.L54
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	Cannon_IsPlayerTouching
	test	eax, eax
	jne	.L63
	mov	ecx, DWORD PTR 128[rbx]
	mov	r8d, DWORD PTR 132[rbx]
.L64:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	esi, eax
	sub	si, WORD PTR [rdx]
	mov	r9d, DWORD PTR 4[rdx]
	mov	edx, esi
	add	edx, ecx
	cmp	dx, 682
	ja	.L67
	sub	eax, r9d
	add	eax, r8d
	cmp	ax, 496
	ja	.L67
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L67:
	mov	rax, QWORD PTR 144[rbx]
	movzx	edx, BYTE PTR 152[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L63:
	call	Player_SetMovestate_IsInScriptedSequence
	mov	edx, 4
	mov	ecx, 109
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rsi], 4194304
	mov	WORD PTR 108[rsi], dx
	call	m4aSongNumStart
	cmp	WORD PTR 136[rbx], 0
	mov	ecx, DWORD PTR 128[rbx]
	je	.L68
	mov	r8d, DWORD PTR 132[rbx]
	lea	eax, -40[rcx]
	sal	eax, 8
	mov	DWORD PTR 12[rsi], eax
	mov	eax, r8d
	sal	eax, 8
	mov	DWORD PTR 16[rsi], eax
	mov	eax, DWORD PTR 36[rsi]
	and	eax, -2
.L66:
	mov	DWORD PTR 36[rsi], eax
	xor	eax, eax
	mov	WORD PTR 24[rsi], ax
	mov	rax, QWORD PTR [rdi]
	mov	DWORD PTR 20[rsi], 0
	lea	rsi, Task_Activating[rip]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L68:
	mov	r8d, DWORD PTR 132[rbx]
	lea	eax, 40[rcx]
	sal	eax, 8
	mov	DWORD PTR 12[rsi], eax
	mov	eax, r8d
	sal	eax, 8
	mov	DWORD PTR 16[rsi], eax
	mov	eax, DWORD PTR 36[rsi]
	or	eax, 1
	jmp	.L66
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_808558C;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
