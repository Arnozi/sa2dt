	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_WaterSurface;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_WaterSurface
TaskDestructor_WaterSurface:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR gWater[rip+16], 0
	and	DWORD PTR [rax], -65
	mov	rax, QWORD PTR .refptr.gIntrTableTemplate[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	QWORD PTR 24[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.def	VCountIntr_8011ACC;	.scl	3;	.type	32;	.endef
	.seh_proc	VCountIntr_8011ACC
VCountIntr_8011ACC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR gWater[rip+16]
	test	rax, rax
	je	.L3
	mov	rbx, QWORD PTR 24[rax]
	mov	r9d, -2080374668
	mov	ecx, 3
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	lea	rdx, 512[rbx]
	call	DmaSet
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	mov	rdx, rbx
	mov	r9d, -2080374656
	mov	ecx, 3
	add	r8, 512
	call	DmaSet
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, WORD PTR [rax]
	and	dh, -2
	mov	WORD PTR [rax], dx
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rdx], 3
	mov	edx, 4
	mov	WORD PTR 514[rax], dx
.L3:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8011A4C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8011A4C
sub_8011A4C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR gWater[rip+16]
	test	rax, rax
	je	.L8
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR gWater[rip+2]
	and	DWORD PTR gWater[rip+8], -2
	mov	BYTE PTR gWater[rip+1], al
	sal	eax, 24
	je	.L12
.L8:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2080374668
	mov	ecx, 3
	lea	rdx, 512[rbx]
	call	DmaSet
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	mov	rdx, rbx
	mov	r9d, -2080374656
	mov	ecx, 3
	add	r8, 512
	call	DmaSet
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR [rdx]
	and	ah, -2
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 3
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_8011B3C;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_8011B3C
TaskDestructor_8011B3C:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_RunOnWaterEffect;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_RunOnWaterEffect
Task_RunOnWaterEffect:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, DWORD PTR 36[rdx]
	mov	rcx, QWORD PTR [rax]
	mov	r9d, r8d
	mov	rax, QWORD PTR 24[rcx]
	and	r9d, 131200
	cmp	r9d, 131072
	jne	.L18
	movsx	r9d, WORD PTR gWater[rip+4]
	mov	edx, DWORD PTR 12[rdx]
	lea	rbx, 32[rax]
	mov	DWORD PTR 4[rax], r9d
	mov	ecx, r9d
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	DWORD PTR [rax], edx
	sub	dx, WORD PTR [r9]
	sub	cx, WORD PTR 4[r9]
	mov	WORD PTR 70[rax], dx
	mov	edx, DWORD PTR 64[rax]
	mov	WORD PTR 72[rax], cx
	mov	ecx, edx
	or	dh, 4
	and	ch, -5
	and	r8d, 1
	cmove	edx, ecx
	mov	rcx, rbx
	mov	DWORD PTR 64[rax], edx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L18:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_StageWaterTask;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StageWaterTask
Task_StageWaterTask:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L20
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 12[rax]
	sar	eax, 8
	sub	eax, 6666
	cmp	eax, 3984
	setbe	BYTE PTR gWater[rip]
	ja	.L31
	mov	rbx, QWORD PTR .refptr.gStageTime[rip]
	movzx	eax, WORD PTR gWater[rip+4]
	mov	ecx, DWORD PTR [rbx]
	test	cl, 1
	je	.L23
	cmp	WORD PTR gWater[rip+6], ax
	je	.L23
	jle	.L24
	add	eax, 1
	mov	WORD PTR gWater[rip+4], ax
	.p2align 4,,10
	.p2align 3
.L23:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	movsx	r10d, ax
	xor	edx, edx
	mov	r8d, DWORD PTR 4[r9]
	cmp	r10d, r8d
	jg	.L40
.L25:
	mov	r8, QWORD PTR .refptr.gNumVBlankCallbacks[rip]
	mov	rsi, QWORD PTR .refptr.gFlags[rip]
	lea	rdi, sub_8011A4C[rip]
	mov	BYTE PTR gWater[rip+2], dl
	movzx	eax, BYTE PTR [r8]
	lea	r10d, 1[rax]
	mov	BYTE PTR [r8], r10b
	mov	r8, QWORD PTR .refptr.gVBlankCallbacks[rip]
	mov	QWORD PTR [r8+rax*8], rdi
	mov	eax, DWORD PTR [rsi]
	movzx	edi, BYTE PTR gWater[rip+1]
	or	eax, 16
	lea	r8d, -1[rdi]
	mov	DWORD PTR [rsi], eax
	cmp	r8b, -18
	jbe	.L41
	sub	edx, 1
	cmp	dl, -18
	ja	.L30
.L42:
	mov	rcx, QWORD PTR .refptr.gIntrTable[rip]
	lea	rbx, VCountIntr_8011ACC[rip]
	or	eax, 64
	mov	DWORD PTR [rsi], eax
	mov	QWORD PTR 24[rcx], rbx
	mov	rcx, QWORD PTR .refptr.gVCountSetting[rip]
	mov	BYTE PTR [rcx], dl
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	mov	BYTE PTR gWater[rip], 0
.L31:
	mov	rsi, QWORD PTR .refptr.gFlags[rip]
	mov	eax, DWORD PTR [rsi]
	and	eax, -65
	mov	DWORD PTR [rsi], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rdx, QWORD PTR .refptr.gIntrTableTemplate[rip]
	and	eax, -65
	mov	DWORD PTR [rsi], eax
	mov	rcx, QWORD PTR 24[rdx]
	mov	rdx, QWORD PTR .refptr.gIntrTable[rip]
	mov	QWORD PTR 24[rdx], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	lea	edx, 239[r8]
	sub	eax, r8d
	cmp	r10d, edx
	mov	edx, -1
	cmovle	edx, eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L41:
	add	ecx, 1
	movzx	edx, dl
	lea	rdi, gWater[rip+24]
	or	DWORD PTR gWater[rip+56], 786432
	shr	ecx, 2
	add	cx, WORD PTR [r9]
	add	edx, 1
	and	ecx, 15
	mov	WORD PTR gWater[rip+64], dx
	neg	ecx
	mov	WORD PTR gWater[rip+62], cx
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	BYTE PTR [rbx], 2
	je	.L39
	movzx	eax, WORD PTR gWater[rip+64]
	sub	eax, 1
	cmp	ax, 424
	ja	.L39
	mov	ebx, 28
	.p2align 4,,10
	.p2align 3
.L29:
	mov	rcx, rdi
	call	DisplaySprite
	add	WORD PTR gWater[rip+62], 16
	sub	ebx, 1
	jne	.L29
.L39:
	movzx	edx, BYTE PTR gWater[rip+2]
	mov	eax, DWORD PTR [rsi]
	sub	edx, 1
	cmp	dl, -18
	ja	.L30
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L24:
	sub	eax, 1
	mov	WORD PTR gWater[rip+4], ax
	jmp	.L23
	.seh_endproc
	.p2align 4
	.globl	InitWaterPalettes
	.def	InitWaterPalettes;	.scl	2;	.type	32;	.endef
	.seh_proc	InitWaterPalettes
InitWaterPalettes:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR gWater[rip+16]
	cmp	BYTE PTR [rdx], 2
	mov	rax, QWORD PTR 24[rax]
	jbe	.L44
	mov	rdx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	xor	ecx, ecx
	xor	r8d, r8d
	movzx	r9d, BYTE PTR [rdx]
.L46:
	mov	edx, r9d
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	r8d, edx
	cmp	ecx, 4
	jne	.L46
	test	r8b, r8b
	je	.L59
	mov	r9, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	r8d, r8b
	mov	rcx, rax
	mov	rbx, QWORD PTR .refptr.gAnimations[rip]
	lea	rsi, gUnknown_080D550C[rip]
	lea	r10, [r8+r9]
	mov	r8, QWORD PTR .refptr.gSpritePalettes[rip]
.L49:
	movsx	dx, BYTE PTR [r9]
	add	r9, 1
	add	rcx, 32
	movzx	edx, dx
	movzx	edx, WORD PTR [rsi+rdx*2]
	mov	rdx, QWORD PTR [rbx+rdx*8]
	mov	rdx, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rdx]
	sal	rdx, 5
	add	rdx, r8
	mov	r11d, DWORD PTR [rdx]
	mov	DWORD PTR -32[rcx], r11d
	mov	r11d, DWORD PTR 4[rdx]
	mov	DWORD PTR -28[rcx], r11d
	mov	r11d, DWORD PTR 8[rdx]
	mov	DWORD PTR -24[rcx], r11d
	mov	r11d, DWORD PTR 12[rdx]
	mov	DWORD PTR -20[rcx], r11d
	mov	r11d, DWORD PTR 16[rdx]
	mov	DWORD PTR -16[rcx], r11d
	mov	r11d, DWORD PTR 20[rdx]
	mov	DWORD PTR -12[rcx], r11d
	mov	r11d, DWORD PTR 24[rdx]
	mov	DWORD PTR -8[rcx], r11d
	mov	edx, DWORD PTR 28[rdx]
	mov	DWORD PTR -4[rcx], edx
	cmp	r9, r10
	jne	.L49
.L48:
	mov	rdx, QWORD PTR 4432[rbx]
	mov	rdx, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rdx]
	add	edx, 4
	sal	rdx, 5
	lea	rcx, [r8+rdx]
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L51:
	movdqu	xmm0, XMMWORD PTR 16[rcx+rdx]
	movdqu	xmm1, XMMWORD PTR [rcx+rdx]
	movups	XMMWORD PTR 144[rax+rdx], xmm0
	movups	XMMWORD PTR 128[rax+rdx], xmm1
	add	rdx, 32
	cmp	rdx, 384
	jne	.L51
	mov	r8d, DWORD PTR gWater[rip+12]
	mov	rdx, QWORD PTR .refptr.gBgPalette[rip]
	add	rax, 512
	and	r8d, 1939633052
	lea	r9, 512[rdx]
	.p2align 4,,10
	.p2align 3
.L52:
	mov	r10d, DWORD PTR [rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR [rax], ecx
	mov	r10d, DWORD PTR 4[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR 4[rax], ecx
	mov	r10d, DWORD PTR 8[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR 8[rax], ecx
	mov	r10d, DWORD PTR 12[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR 12[rax], ecx
	mov	r10d, DWORD PTR 16[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR 16[rax], ecx
	mov	r10d, DWORD PTR 20[rdx]
	mov	ecx, r10d
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	and	r10d, 2078178270
	add	rdx, 32
	add	rax, 32
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR -12[rax], ecx
	mov	r10d, DWORD PTR -8[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR -8[rax], ecx
	mov	r10d, DWORD PTR -4[rdx]
	mov	ecx, r10d
	and	r10d, 2078178270
	and	ecx, 1939633052
	add	ecx, r8d
	shr	ecx
	add	ecx, r10d
	shr	ecx
	mov	DWORD PTR -4[rax], ecx
	cmp	rdx, r9
	jne	.L52
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR .refptr.gAnimations[rip]
	mov	r8, QWORD PTR .refptr.gSpritePalettes[rip]
	movsx	cx, BYTE PTR 141[rdx]
	lea	rdx, gUnknown_080D550C[rip]
	movzx	ecx, cx
	movzx	edx, WORD PTR [rdx+rcx*2]
	mov	rdx, QWORD PTR [rbx+rdx*8]
	mov	rdx, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rdx]
	sal	rdx, 5
	add	rdx, r8
	mov	r9d, DWORD PTR [rdx]
	mov	DWORD PTR [rax], r9d
	mov	r9d, DWORD PTR 4[rdx]
	mov	DWORD PTR 4[rax], r9d
	mov	r9d, DWORD PTR 8[rdx]
	mov	DWORD PTR 8[rax], r9d
	mov	r9d, DWORD PTR 12[rdx]
	mov	DWORD PTR 12[rax], r9d
	mov	r9d, DWORD PTR 16[rdx]
	mov	DWORD PTR 16[rax], r9d
	mov	r9d, DWORD PTR 20[rdx]
	mov	DWORD PTR 20[rax], r9d
	mov	r9d, DWORD PTR 24[rdx]
	mov	DWORD PTR 24[rax], r9d
	mov	edx, DWORD PTR 28[rdx]
	mov	DWORD PTR 28[rax], edx
	mov	rdx, QWORD PTR .refptr.sCharacterPalettesBoostEffect[rip]
	movzx	edx, WORD PTR [rdx+rcx*2]
	mov	rdx, QWORD PTR [rbx+rdx*8]
	mov	rdx, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rdx]
	sal	rdx, 5
	add	rdx, r8
	mov	ecx, DWORD PTR [rdx]
	mov	DWORD PTR 32[rax], ecx
	mov	ecx, DWORD PTR 4[rdx]
	mov	DWORD PTR 36[rax], ecx
	mov	ecx, DWORD PTR 8[rdx]
	mov	DWORD PTR 40[rax], ecx
	mov	ecx, DWORD PTR 12[rdx]
	mov	DWORD PTR 44[rax], ecx
	mov	ecx, DWORD PTR 16[rdx]
	mov	DWORD PTR 48[rax], ecx
	mov	ecx, DWORD PTR 20[rdx]
	mov	DWORD PTR 52[rax], ecx
	mov	ecx, DWORD PTR 24[rdx]
	mov	DWORD PTR 56[rax], ecx
	mov	edx, DWORD PTR 28[rdx]
	mov	DWORD PTR 60[rax], edx
	jmp	.L48
.L59:
	mov	rbx, QWORD PTR .refptr.gAnimations[rip]
	mov	r8, QWORD PTR .refptr.gSpritePalettes[rip]
	jmp	.L48
	.seh_endproc
	.p2align 4
	.globl	CreateStageWaterTask
	.def	CreateStageWaterTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageWaterTask
CreateStageWaterTask:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r9d, -1
	mov	WORD PTR gWater[rip+1], r9w
	movd	xmm1, ecx
	and	r8d, 256
	mov	DWORD PTR gWater[rip+12], edx
	pshuflw	xmm0, xmm1, 0
	mov	DWORD PTR gWater[rip+8], r8d
	movd	DWORD PTR gWater[rip+4], xmm0
	test	ecx, ecx
	js	.L60
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rcx, gWater[rip+24]
	mov	DWORD PTR gWater[rip+40], 34996224
	mov	DWORD PTR gWater[rip+66], 0
	add	rax, 76160
	mov	BYTE PTR gWater[rip+74], 16
	mov	QWORD PTR gWater[rip+32], rax
	mov	eax, -256
	mov	WORD PTR gWater[rip+72], ax
	mov	BYTE PTR gWater[rip+77], 0
	mov	DWORD PTR gWater[rip+56], 0
	call	UpdateSpriteAnimation
	lea	rax, TaskDestructor_WaterSurface[rip]
	xor	r9d, r9d
	mov	r8d, 65534
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 1024
	lea	rcx, Task_StageWaterTask[rip]
	call	TaskCreate
	mov	QWORD PTR gWater[rip+16], rax
.L60:
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateRunOnWaterEffect
	.def	CreateRunOnWaterEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateRunOnWaterEffect
CreateRunOnWaterEffect:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_8011B3C[rip]
	xor	r9d, r9d
	mov	edx, 112
	mov	r8d, 16385
	lea	rcx, Task_RunOnWaterEffect[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, 12
	mov	rbx, QWORD PTR 24[rax]
	call	VramMalloc
	mov	QWORD PTR 40[rbx], rax
	mov	eax, -256
	mov	DWORD PTR 48[rbx], 35651584
	mov	WORD PTR 80[rbx], ax
	mov	DWORD PTR 74[rbx], 448
	mov	BYTE PTR 82[rbx], 16
	mov	BYTE PTR 85[rbx], 0
	mov	DWORD PTR 64[rbx], 8192
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateWaterfallSurfaceHitEffect
	.def	CreateWaterfallSurfaceHitEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateWaterfallSurfaceHitEffect
CreateWaterfallSurfaceHitEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	xor	r9d, r9d
	mov	r8d, 16
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR .refptr.Task_UpdateMpSpriteTaskSprite[rip]
	movsx	edx, dx
	movsx	ecx, cx
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	mov	ecx, 12
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	call	VramMalloc
	mov	edx, 448
	mov	QWORD PTR 40[rbx], rax
	mov	eax, 553
	mov	WORD PTR 50[rbx], ax
	mov	rax, rsi
	mov	BYTE PTR 80[rbx], 0
	mov	WORD PTR 74[rbx], dx
	mov	DWORD PTR 64[rbx], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	MaskPaletteWithUnderwaterColor
	.def	MaskPaletteWithUnderwaterColor;	.scl	2;	.type	32;	.endef
	.seh_proc	MaskPaletteWithUnderwaterColor
MaskPaletteWithUnderwaterColor:
	.seh_endprologue
	sar	r9d, 4
	mov	rax, rdx
	lea	edx, -1[r9]
	je	.L64
	mov	r9d, edx
	and	r8d, 1939633052
	add	r9, 1
	sal	r9, 5
	add	r9, rax
	.p2align 4,,10
	.p2align 3
.L66:
	mov	r10d, DWORD PTR [rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR [rcx], edx
	mov	r10d, DWORD PTR 4[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR 4[rcx], edx
	mov	r10d, DWORD PTR 8[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR 8[rcx], edx
	mov	r10d, DWORD PTR 12[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR 12[rcx], edx
	mov	r10d, DWORD PTR 16[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR 16[rcx], edx
	mov	r10d, DWORD PTR 20[rax]
	mov	edx, r10d
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	and	r10d, 2078178270
	add	rax, 32
	add	rcx, 32
	add	edx, r10d
	shr	edx
	mov	DWORD PTR -12[rcx], edx
	mov	r10d, DWORD PTR -8[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR -8[rcx], edx
	mov	r10d, DWORD PTR -4[rax]
	mov	edx, r10d
	and	r10d, 2078178270
	and	edx, 1939633052
	add	edx, r8d
	shr	edx
	add	edx, r10d
	shr	edx
	mov	DWORD PTR -4[rcx], edx
	cmp	rax, r9
	jne	.L66
.L64:
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080D550C:
	.word	555
	.word	558
	.word	556
	.word	557
	.word	559
	.globl	gWater
	.bss
	.align 32
gWater:
	.space 88
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.Task_UpdateMpSpriteTaskSprite, "dr"
	.globl	.refptr.Task_UpdateMpSpriteTaskSprite
	.linkonce	discard
.refptr.Task_UpdateMpSpriteTaskSprite:
	.quad	Task_UpdateMpSpriteTaskSprite
	.section	.rdata$.refptr.TaskDestructor_MultiplayerSpriteTask, "dr"
	.globl	.refptr.TaskDestructor_MultiplayerSpriteTask
	.linkonce	discard
.refptr.TaskDestructor_MultiplayerSpriteTask:
	.quad	TaskDestructor_MultiplayerSpriteTask
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.sCharacterPalettesBoostEffect, "dr"
	.globl	.refptr.sCharacterPalettesBoostEffect
	.linkonce	discard
.refptr.sCharacterPalettesBoostEffect:
	.quad	sCharacterPalettesBoostEffect
	.section	.rdata$.refptr.gSpritePalettes, "dr"
	.globl	.refptr.gSpritePalettes
	.linkonce	discard
.refptr.gSpritePalettes:
	.quad	gSpritePalettes
	.section	.rdata$.refptr.gAnimations, "dr"
	.globl	.refptr.gAnimations
	.linkonce	discard
.refptr.gAnimations:
	.quad	gAnimations
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gVCountSetting, "dr"
	.globl	.refptr.gVCountSetting
	.linkonce	discard
.refptr.gVCountSetting:
	.quad	gVCountSetting
	.section	.rdata$.refptr.gVBlankCallbacks, "dr"
	.globl	.refptr.gVBlankCallbacks
	.linkonce	discard
.refptr.gVBlankCallbacks:
	.quad	gVBlankCallbacks
	.section	.rdata$.refptr.gNumVBlankCallbacks, "dr"
	.globl	.refptr.gNumVBlankCallbacks
	.linkonce	discard
.refptr.gNumVBlankCallbacks:
	.quad	gNumVBlankCallbacks
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.gIntrTableTemplate, "dr"
	.globl	.refptr.gIntrTableTemplate
	.linkonce	discard
.refptr.gIntrTableTemplate:
	.quad	gIntrTableTemplate
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
