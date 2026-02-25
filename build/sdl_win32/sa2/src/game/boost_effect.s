	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_8015B50
	.def	TaskDestructor_8015B50;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_8015B50
TaskDestructor_8015B50:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	sub_801561C
	.def	sub_801561C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801561C
sub_801561C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r11, QWORD PTR .refptr.gStageFlags[rip]
	pxor	xmm2, xmm2
	movabs	rbx, -4294967296
	mov	r9d, DWORD PTR 36[rax]
	mov	r8d, DWORD PTR 112[rax]
	mov	r10, QWORD PTR 160[rax]
	mov	eax, r9d
	or	r9d, -2147483648
	and	eax, 2147483647
	test	BYTE PTR [r11], -128
	mov	r11d, r8d
	movd	xmm0, DWORD PTR 48[r10]
	cmovne	eax, r9d
	sal	r11, 32
	mov	r9d, r8d
	movups	XMMWORD PTR [rsp], xmm2
	or	r9, r11
	mov	r11d, r8d
	sal	r8, 32
	movzx	edx, WORD PTR [r10]
	mov	QWORD PTR [rsp], r9
	mov	r9, QWORD PTR 8[rsp]
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	movzx	ecx, BYTE PTR 66[r10]
	mov	r10d, DWORD PTR [rsp]
	and	r9, rbx
	punpcklqdq	xmm0, xmm0
	or	r9, r11
	movhlps	xmm4, xmm0
	mov	DWORD PTR sPlayerStateBuffer[rip], r10d
	mov	r9d, r9d
	mov	DWORD PTR sPlayerStateBuffer[rip+64], r10d
	or	r9, r8
	mov	DWORD PTR sPlayerStateBuffer[rip+128], r10d
	mov	QWORD PTR 8[rsp], r9
	pshufd	xmm1, XMMWORD PTR [rsp], 85
	movd	r9d, xmm1
	movd	DWORD PTR sPlayerStateBuffer[rip+16], xmm1
	movdqu	xmm1, XMMWORD PTR [rsp]
	mov	DWORD PTR sPlayerStateBuffer[rip+80], r9d
	punpckhdq	xmm1, xmm1
	mov	DWORD PTR sPlayerStateBuffer[rip+144], r9d
	movd	r8d, xmm1
	mov	DWORD PTR sPlayerStateBuffer[rip+192], r10d
	mov	DWORD PTR sPlayerStateBuffer[rip+96], r8d
	mov	DWORD PTR sPlayerStateBuffer[rip+160], r8d
	mov	DWORD PTR sPlayerStateBuffer[rip+208], r9d
	mov	DWORD PTR sPlayerStateBuffer[rip+224], r8d
	movd	DWORD PTR sPlayerStateBuffer[rip+32], xmm1
	pshufd	xmm1, XMMWORD PTR [rsp], 255
	movd	DWORD PTR sPlayerStateBuffer[rip+48], xmm1
	movd	DWORD PTR sPlayerStateBuffer[rip+112], xmm1
	movd	DWORD PTR sPlayerStateBuffer[rip+176], xmm1
	movd	DWORD PTR sPlayerStateBuffer[rip+240], xmm1
	mov	BYTE PTR sPlayerStateBuffer[rip+14], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+30], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+46], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+62], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+78], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+94], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+110], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+126], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+142], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+158], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+174], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+190], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+206], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+222], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+238], cl
	mov	BYTE PTR sPlayerStateBuffer[rip+254], cl
	movq	QWORD PTR sPlayerStateBuffer[rip+4], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+20], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+36], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+52], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+68], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+84], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+100], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+116], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+132], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+148], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+164], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+180], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+196], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+212], xmm4
	movq	QWORD PTR sPlayerStateBuffer[rip+228], xmm0
	movq	QWORD PTR sPlayerStateBuffer[rip+244], xmm4
	mov	WORD PTR sPlayerStateBuffer[rip+12], dx
	mov	WORD PTR sPlayerStateBuffer[rip+28], dx
	mov	WORD PTR sPlayerStateBuffer[rip+44], dx
	mov	WORD PTR sPlayerStateBuffer[rip+60], dx
	mov	WORD PTR sPlayerStateBuffer[rip+76], dx
	mov	WORD PTR sPlayerStateBuffer[rip+92], dx
	mov	WORD PTR sPlayerStateBuffer[rip+108], dx
	mov	WORD PTR sPlayerStateBuffer[rip+124], dx
	mov	WORD PTR sPlayerStateBuffer[rip+140], dx
	mov	WORD PTR sPlayerStateBuffer[rip+156], dx
	mov	WORD PTR sPlayerStateBuffer[rip+172], dx
	mov	WORD PTR sPlayerStateBuffer[rip+188], dx
	mov	WORD PTR sPlayerStateBuffer[rip+204], dx
	mov	WORD PTR sPlayerStateBuffer[rip+220], dx
	mov	WORD PTR sPlayerStateBuffer[rip+236], dx
	mov	WORD PTR sPlayerStateBuffer[rip+252], dx
	mov	BYTE PTR sPlayerStateBufferIndex[rip], 0
	add	rsp, 16
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	BoostEffect_StorePlayerState
	.def	BoostEffect_StorePlayerState;	.scl	2;	.type	32;	.endef
	.seh_proc	BoostEffect_StorePlayerState
BoostEffect_StorePlayerState:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, BYTE PTR sPlayerStateBufferIndex[rip]
	mov	r9, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, DWORD PTR 36[r8]
	add	eax, 1
	and	eax, 15
	mov	ecx, edx
	or	edx, -2147483648
	mov	BYTE PTR sPlayerStateBufferIndex[rip], al
	and	ecx, 2147483647
	test	BYTE PTR [r9], -128
	mov	r9d, DWORD PTR 112[r8]
	cmovne	ecx, edx
	mov	r8, QWORD PTR 160[r8]
	and	eax, 15
	lea	rdx, sPlayerStateBuffer[rip]
	sal	rax, 4
	mov	DWORD PTR [rdx+rax], r9d
	movzx	r9d, BYTE PTR 66[r8]
	add	rdx, rax
	movd	xmm1, ecx
	lea	rcx, sPlayerStateBuffer[rip+4]
	mov	BYTE PTR 14[rdx], r9b
	movd	xmm0, DWORD PTR 48[r8]
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [rcx+rax], xmm0
	movzx	eax, WORD PTR [r8]
	mov	WORD PTR 12[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8015750
	.def	sub_8015750;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015750
sub_8015750:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movq	xmm0, QWORD PTR 12[rax]
	lea	rax, sPlayerPosBuffer[rip]
	lea	rdx, 128[rax]
	punpcklqdq	xmm0, xmm0
.L12:
	movups	XMMWORD PTR [rax], xmm0
	add	rax, 32
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rax, rdx
	jne	.L12
	mov	BYTE PTR sPlayerPosBufferIndex[rip], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	BoostEffect_StorePlayerPos
	.def	BoostEffect_StorePlayerPos;	.scl	2;	.type	32;	.endef
	.seh_proc	BoostEffect_StorePlayerPos
BoostEffect_StorePlayerPos:
	.seh_endprologue
	movzx	eax, BYTE PTR sPlayerPosBufferIndex[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	add	eax, 1
	mov	rcx, QWORD PTR 12[rdx]
	lea	rdx, sPlayerPosBuffer[rip]
	and	eax, 15
	mov	BYTE PTR sPlayerPosBufferIndex[rip], al
	and	eax, 15
	mov	QWORD PTR [rdx+rax*8], rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	GetPreviousPlayerPos
	.def	GetPreviousPlayerPos;	.scl	2;	.type	32;	.endef
	.seh_proc	GetPreviousPlayerPos
GetPreviousPlayerPos:
	.seh_endprologue
	movzx	eax, BYTE PTR sPlayerPosBufferIndex[rip]
	sub	eax, edx
	lea	rdx, sPlayerPosBuffer[rip]
	and	eax, 15
	mov	rax, QWORD PTR [rdx+rax*8]
	mov	QWORD PTR [rcx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	GetPreviousFramePlayerState
	.def	GetPreviousFramePlayerState;	.scl	2;	.type	32;	.endef
	.seh_proc	GetPreviousFramePlayerState
GetPreviousFramePlayerState:
	.seh_endprologue
	movzx	eax, BYTE PTR sPlayerStateBufferIndex[rip]
	sub	eax, edx
	lea	rdx, sPlayerStateBuffer[rip]
	and	eax, 15
	sal	rax, 4
	mov	r8d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx], r8d
	mov	r8, QWORD PTR 4[rax+rdx]
	add	rax, rdx
	movzx	edx, BYTE PTR 14[rax]
	mov	QWORD PTR 4[rcx], r8
	mov	BYTE PTR 14[rcx], dl
	movzx	eax, WORD PTR 12[rax]
	mov	WORD PTR 12[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_80159C8
	.def	Task_80159C8;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_80159C8
Task_80159C8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, gUnknown_080D5674[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, BYTE PTR 112[rbx]
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rdx]
	test	eax, 67108864
	jne	.L19
	test	eax, 134217728
	jne	.L36
.L19:
	test	al, -128
	jne	.L18
	cmp	BYTE PTR 98[rdx], 0
	jne	.L22
	test	eax, 33554432
	je	.L18
.L22:
	movzx	edx, r9b
	lea	rcx, 96[rbx]
	lea	rsi, 16[rbx]
	call	GetPreviousFramePlayerState
	movzx	eax, WORD PTR 96[rbx]
	lea	rcx, sPlayerPosBuffer[rip]
	mov	WORD PTR 34[rbx], ax
	movzx	eax, WORD PTR 98[rbx]
	mov	BYTE PTR 64[rbx], al
	movzx	eax, BYTE PTR 110[rbx]
	mov	BYTE PTR 66[rbx], al
	movzx	eax, WORD PTR 108[rbx]
	mov	WORD PTR [rbx], ax
	mov	eax, DWORD PTR 100[rbx]
	or	eax, 262144
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, BYTE PTR sPlayerPosBufferIndex[rip]
	sub	eax, r9d
	and	eax, 15
	mov	edx, DWORD PTR [rcx+rax*8]
	mov	r8, QWORD PTR [rcx+rax*8]
	mov	eax, DWORD PTR 4[rcx+rax*8]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	QWORD PTR 88[rbx], r8
	sub	dx, WORD PTR [rcx]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rsi
	mov	WORD PTR 54[rbx], dx
	mov	WORD PTR 56[rbx], ax
	mov	WORD PTR 6[rbx], dx
	mov	WORD PTR 8[rbx], ax
	call	UpdateSpriteAnimation
	mov	eax, DWORD PTR 48[rbx]
	test	al, 32
	jne	.L37
	and	eax, -33
	mov	DWORD PTR 48[rbx], eax
.L27:
	movzx	eax, BYTE PTR 113[rbx]
	xor	edx, edx
	add	eax, 1
	cmp	al, 3
	cmovnb	eax, edx
	mov	BYTE PTR 113[rbx], al
	cmp	BYTE PTR 112[rbx], al
	jne	.L18
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L36:
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gBoostEffectTasksCreated[rip]
	mov	BYTE PTR [rax], 0
.L18:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rcx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	and	eax, -32
	movzx	edx, BYTE PTR [rcx]
	lea	r8d, 1[rdx]
	or	edx, 32
	mov	BYTE PTR [rcx], r8b
	movzx	edx, dl
	mov	ecx, DWORD PTR 104[rbx]
	or	eax, edx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, ecx
	mov	edx, ecx
	and	eax, 1
	cmp	eax, 1
	sbb	eax, eax
	and	edx, -2147483648
	and	ax, -512
	mov	DWORD PTR 104[rbx], edx
	add	ax, 256
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	mov	rcx, rsi
	cmovs	eax, edx
	mov	rdx, rbx
	mov	WORD PTR 2[rbx], ax
	call	TransformSprite
	jmp	.L27
	.seh_endproc
	.p2align 4
	.globl	CreateBoostEffectTasks
	.def	CreateBoostEffectTasks;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBoostEffectTasks
CreateBoostEffectTasks:
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
	ja	.L38
	mov	rax, QWORD PTR .refptr.gBoostEffectTasksCreated[rip]
	movzx	esi, BYTE PTR [rax]
	test	sil, sil
	jne	.L38
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	ecx, edx
	and	ecx, 3
	cmp	cl, 2
	je	.L38
	cmp	dl, 28
	je	.L52
	cmp	dl, 29
	je	.L38
.L43:
	mov	BYTE PTR [rax], 1
	movzx	edi, WORD PTR .LC0[rip]
	lea	r12, TaskDestructor_8015B50[rip]
	lea	rbp, Task_80159C8[rip]
.L44:
	mov	QWORD PTR 32[rsp], r12
	mov	edx, 120
	xor	r9d, r9d
	mov	rcx, rbp
	mov	r8d, 16384
	call	TaskCreate
	mov	ecx, 64
	mov	rbx, QWORD PTR 24[rax]
	mov	BYTE PTR 112[rbx], sil
	add	esi, 1
	mov	BYTE PTR 113[rbx], 0
	call	VramMalloc
	mov	edx, 256
	mov	BYTE PTR 66[rbx], 16
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 72[rbx], -1
	mov	BYTE PTR 69[rbx], 1
	mov	DWORD PTR 32[rbx], 0
	mov	WORD PTR 64[rbx], di
	mov	QWORD PTR 48[rbx], 8192
	mov	DWORD PTR 56[rbx], 67108864
	mov	WORD PTR 60[rbx], ax
	mov	WORD PTR 4[rbx], dx
	cmp	sil, 3
	jne	.L44
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movsx	rdx, BYTE PTR 141[rax]
	lea	rax, sCharacterPalettesBoostEffect[rip]
	movzx	edx, WORD PTR [rax+rdx*2]
	mov	rax, QWORD PTR .refptr.gAnimations[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR [rax]
	cmp	DWORD PTR [rax], -2
	jne	.L38
	mov	rcx, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	edx, DWORD PTR 8[rax]
	mov	eax, DWORD PTR 4[rax]
	mov	rcx, QWORD PTR [rcx]
	movzx	r9d, dl
	shr	edx, 16
	sal	eax, 4
	shr	r9
	mov	rcx, QWORD PTR 24[rcx]
	or	r9d, -2080374784
	lea	rax, [rcx+rax*2]
	mov	rcx, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, [rcx+rdx*2]
	mov	rdx, rax
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
.L38:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L43
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	sub_8015B64
	.def	sub_8015B64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015B64
sub_8015B64:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gAnimations[rip]
	movzx	ecx, cx
	mov	rax, QWORD PTR [rax+rcx*8]
	mov	rax, QWORD PTR [rax]
	cmp	DWORD PTR [rax], -2
	je	.L55
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	mov	rcx, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	edx, DWORD PTR 8[rax]
	mov	eax, DWORD PTR 4[rax]
	mov	rcx, QWORD PTR [rcx]
	movzx	r9d, dl
	shr	edx, 16
	sal	eax, 4
	shr	r9
	mov	rcx, QWORD PTR 24[rcx]
	or	r9d, -2080374784
	lea	rax, [rcx+rax*2]
	mov	rcx, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, [rcx+rdx*2]
	mov	rdx, rax
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	add	rsp, 40
	ret
	.seh_endproc
	.globl	sCharacterPalettesBoostEffect
	.section .rdata,"dr"
	.align 8
sCharacterPalettesBoostEffect:
	.word	74
	.word	165
	.word	256
	.word	347
	.word	438
	.globl	gUnknown_080D5674
gUnknown_080D5674:
	.ascii "\2\4\6"
.lcomm sPlayerPosBufferIndex,1,4
.lcomm sPlayerStateBufferIndex,1,4
.lcomm sPlayerPosBuffer,128,32
.lcomm sPlayerStateBuffer,256,16
	.align 2
.LC0:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gAnimations, "dr"
	.globl	.refptr.gAnimations
	.linkonce	discard
.refptr.gAnimations:
	.quad	gAnimations
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.gBoostEffectTasksCreated, "dr"
	.globl	.refptr.gBoostEffectTasksCreated
	.linkonce	discard
.refptr.gBoostEffectTasksCreated:
	.quad	gBoostEffectTasksCreated
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
