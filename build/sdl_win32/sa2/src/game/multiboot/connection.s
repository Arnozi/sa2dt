	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8081A5C
	.def	sub_8081A5C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081A5C
sub_8081A5C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	Sio32MultiLoadMain
	test	eax, eax
	je	.L2
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8081C8C[rip]
	mov	QWORD PTR 40[rax], rsi
.L2:
	mov	ecx, DWORD PTR 320[rbx]
	mov	edx, DWORD PTR 44[rsp]
	mov	eax, DWORD PTR 316[rbx]
	cmp	ecx, edx
	jnb	.L3
	add	eax, edx
	movd	xmm1, edx
	sub	eax, ecx
	movd	xmm0, eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR 316[rbx], xmm0
.L4:
	imul	eax, eax, 240
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	imul	rax, rax, 954437177
	shr	rax, 46
	movzx	eax, al
	add	eax, 40
	or	ah, 40
	mov	DWORD PTR [rdx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	cmp	edx, ecx
	jnb	.L4
	lea	eax, 8192[rdx+rax]
	movd	xmm2, edx
	sub	eax, ecx
	movd	xmm0, eax
	punpckldq	xmm0, xmm2
	movq	QWORD PTR 316[rbx], xmm0
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	sub_8081D58
	.def	sub_8081D58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081D58
sub_8081D58:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	xor	ecx, ecx
	add	rsp, 40
	jmp	CreateMultiplayerSinglePakResultsScreen
	.seh_endproc
	.p2align 4
	.globl	sub_8081D04
	.def	sub_8081D04;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081D04
sub_8081D04:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	MultiSioStop
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	rdx, QWORD PTR .refptr.Sio32MultiLoadIntr[rip]
	mov	QWORD PTR [rax], rdx
	movzx	edx, BYTE PTR 337[rsi]
	lea	rax, gCollectRingsSegments[rip]
	lea	rsi, sub_8081A5C[rip]
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	ecx, DWORD PTR [rax]
	and	ecx, 128
	call	Sio32MultiLoadInit
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8081C8C
	.def	sub_8081C8C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081C8C
sub_8081C8C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rdx, QWORD PTR .refptr.MultiSioIntr[rip]
	mov	rax, QWORD PTR [rbx]
	mov	ecx, DWORD PTR [rsi]
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	shr	ecx, 8
	and	ecx, 15
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	QWORD PTR [rax], rdx
	call	MultiSioInit
	mov	rax, QWORD PTR [rbx]
	lea	rdx, sub_8081CC4[rip]
	mov	BYTE PTR 336[rdi], 0
	mov	DWORD PTR 332[rdi], 0
	mov	DWORD PTR [rsi], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8081C50
	.def	sub_8081C50;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081C50
sub_8081C50:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rdx, QWORD PTR .refptr.MultiSioIntr[rip]
	mov	rax, QWORD PTR [rbx]
	mov	ecx, DWORD PTR [rsi]
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	shr	ecx, 8
	and	ecx, 15
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	QWORD PTR [rax], rdx
	call	MultiSioInit
	mov	rax, QWORD PTR [rbx]
	lea	rdx, sub_80818B8[rip]
	mov	BYTE PTR 336[rdi], 0
	mov	DWORD PTR 332[rdi], 0
	mov	DWORD PTR [rsi], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	MultiSioStart
	.seh_endproc
	.p2align 4
	.globl	sub_8081200
	.def	sub_8081200;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081200
sub_8081200:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	pxor	xmm0, xmm0
	mov	BYTE PTR [rax], 5
	mov	rax, QWORD PTR .refptr.gRingsScatterTask[rip]
	mov	QWORD PTR 152[rbx], 0
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDummyTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gGameStageTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 96[rax], 0
	mov	rax, QWORD PTR .refptr.gUnknown_0300543C[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movups	XMMWORD PTR [rax], xmm0
	movups	XMMWORD PTR 16[rax], xmm0
	call	ApplyGameStageSettings
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	DWORD PTR 36[rbx], -2097153
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	and	WORD PTR [rax], -2
	movzx	eax, WORD PTR 100[rbx]
	or	ax, WORD PTR [rdx]
	or	ax, WORD PTR 2[rdx]
	mov	WORD PTR 100[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	StartSinglePakConnect
	.def	StartSinglePakConnect;	.scl	2;	.type	32;	.endef
	.seh_proc	StartSinglePakConnect
StartSinglePakConnect:
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
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	edx, 4417
	xor	r9d, r9d
	mov	ecx, 5121
	lea	rdi, sub_8081604[rip]
	mov	r8d, 8192
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 344
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rdi
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 6[rax]
	lea	eax, -1[rdx]
	cmp	al, 5
	ja	.L18
	movzx	ecx, dl
	lea	rax, gUnknown_080E01E0[rip]
	sal	rcx, 4
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 8[rax]
.L15:
	sub	rax, rcx
	mov	BYTE PTR 338[rbx], dl
	mov	DWORD PTR 312[rbx], eax
	xor	eax, eax
	mov	WORD PTR 324[rbx], ax
	mov	rax, QWORD PTR .LC0[rip]
	mov	QWORD PTR 304[rbx], rcx
	mov	rcx, rbx
	mov	DWORD PTR 328[rbx], 0
	mov	BYTE PTR 337[rbx], 0
	mov	QWORD PTR 316[rbx], 0
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 8[rbx], 16383
	call	UpdateScreenFade
	xor	edx, edx
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	xor	ecx, ecx
	movabs	rax, 2251799813689344
	mov	WORD PTR 32[rbx], dx
	mov	r8d, 4351
	mov	QWORD PTR 48[rbx], rax
	movzx	eax, BYTE PTR 338[rbx]
	mov	WORD PTR 65[rbx], r8w
	lea	rdx, [rax+rax*2]
	lea	rax, gUnknown_080E018C[rip]
	mov	WORD PTR 60[rbx], cx
	lea	rax, [rax+rdx*2]
	mov	BYTE PTR 69[rbx], 0
	lea	rcx, 16[rbx]
	movzx	edx, WORD PTR [rax]
	movzx	esi, WORD PTR 4[rax]
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 56[rbx], 16777240
	mov	WORD PTR 34[rbx], dx
	movzx	edx, WORD PTR 2[rax]
	sal	esi, 5
	movsx	rsi, esi
	mov	BYTE PTR 64[rbx], dl
	lea	rdx, 65536[rbp]
	mov	QWORD PTR 24[rbx], rdx
	add	rsi, rdx
	call	UpdateSpriteAnimation
	mov	QWORD PTR 88[rbx], rsi
	xor	r9d, r9d
	xor	r10d, r10d
	movzx	eax, BYTE PTR 338[rbx]
	mov	r11d, 4351
	movabs	rdx, 59954170039373824
	movdqu	xmm0, XMMWORD PTR .LC4[rip]
	mov	WORD PTR 96[rbx], r9w
	lea	rcx, [rax+rax*2]
	lea	rax, gUnknown_080E01B6[rip]
	mov	QWORD PTR 112[rbx], rdx
	lea	rax, [rax+rcx*2]
	mov	WORD PTR 124[rbx], r10w
	movzx	ecx, WORD PTR [rax]
	mov	WORD PTR 129[rbx], r11w
	mov	QWORD PTR 176[rbx], rdx
	mov	WORD PTR 98[rbx], cx
	movzx	ecx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	BYTE PTR 133[rbx], 0
	mov	BYTE PTR 128[rbx], cl
	lea	rcx, 208[rbx]
	sal	eax, 5
	mov	DWORD PTR 120[rbx], 16777418
	cdqe
	mov	BYTE PTR 194[rbx], 16
	add	rsi, rax
	xor	eax, eax
	mov	DWORD PTR 136[rbx], -1
	mov	WORD PTR 188[rbx], ax
	mov	eax, -248
	mov	WORD PTR 192[rbx], ax
	xor	eax, eax
	mov	WORD PTR 226[rbx], ax
	lea	rax, 40960[rbp]
	mov	QWORD PTR 232[rbx], rax
	mov	eax, 20
	mov	WORD PTR 268[rbx], ax
	xor	eax, eax
	mov	WORD PTR 274[rbx], ax
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 184[rbx], 16777426
	mov	DWORD PTR 160[rbx], 70385664
	mov	QWORD PTR 152[rbx], rsi
	mov	QWORD PTR 216[rbx], rbp
	mov	BYTE PTR 270[rbx], 0
	movups	XMMWORD PTR 252[rbx], xmm0
	call	DrawBackground
	mov	ecx, 61
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	test	al, 48
	jne	.L16
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	rcx, QWORD PTR .refptr.gMultiBootParam[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 304[rbx]
	mov	BYTE PTR 99[rcx], 0
	mov	QWORD PTR 48[rcx], rax
	call	MultiBootInit
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR .refptr.gMultiBootProgram_SubgameLoaderEnd[rip]
	mov	rcx, QWORD PTR .refptr.gMultiBootProgram_SubgameLoader[rip]
	mov	edx, 1
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L16:
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
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.globl	sub_8081AD4
	.def	sub_8081AD4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081AD4
sub_8081AD4:
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
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	eax, 257
	xor	r9d, r9d
	mov	rsi, QWORD PTR .refptr.gDispCnt[rip]
	mov	rbp, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 7682
	xor	r8d, r8d
	mov	r12, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	WORD PTR [rsi], ax
	lea	rax, 61440[rbx]
	mov	WORD PTR 0[rbp], dx
	movzx	edx, BYTE PTR 338[rcx]
	mov	DWORD PTR [r12], 0
	mov	QWORD PTR 232[rcx], rax
	lea	rax, gUnknown_080E0218[rip]
	add	rcx, 208
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	WORD PTR 66[rcx], r9w
	mov	WORD PTR 18[rcx], r8w
	mov	WORD PTR 48[rcx], ax
	mov	QWORD PTR 8[rcx], rbx
	mov	DWORD PTR 44[rcx], 0
	mov	QWORD PTR 50[rcx], 0
	mov	DWORD PTR 58[rcx], 1310750
	mov	BYTE PTR 62[rcx], 0
	call	DrawBackground
	mov	rdi, QWORD PTR .refptr.gBgPalette[rip]
	xor	r10d, r10d
	lea	rcx, 42[rsp]
	mov	r8d, 16777231
	mov	WORD PTR 42[rsp], r10w
	lea	rdx, 34[rdi]
	call	CpuSet
	mov	r11d, 7937
	or	WORD PTR [rsi], 8704
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	lea	rcx, 44[rsp]
	mov	esi, -3073
	mov	WORD PTR 2[rbp], r11w
	mov	rdx, QWORD PTR .LC9[rip]
	mov	r8d, 16778240
	mov	DWORD PTR [rax], 2621480
	mov	ebp, -1
	mov	QWORD PTR 16[rax], rdx
	lea	rdx, 63488[rbx]
	mov	DWORD PTR 8[rax], 8913040
	mov	DWORD PTR 4[r12], 0
	mov	r12d, 31
	mov	WORD PTR 44[rsp], si
	call	CpuSet
	lea	rcx, 46[rsp]
	mov	r8d, 16777232
	lea	rdx, 32736[rbx]
	mov	WORD PTR 46[rsp], bp
	call	CpuSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	WORD PTR 510[rdi], r12w
	or	DWORD PTR [rax], 1
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8081604
	.def	sub_8081604;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081604
sub_8081604:
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
	mov	ebx, 1
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	mov	rcx, rsi
	call	UpdateScreenFade
	lea	rcx, 16[rsi]
	call	DisplaySprite
	mov	rdi, QWORD PTR .refptr.gMultiBootParam[rip]
	mov	ecx, 1
	movzx	r10d, BYTE PTR 30[rdi]
	movzx	eax, BYTE PTR 29[rdi]
	mov	edx, r10d
.L23:
	bt	eax, ecx
	jnc	.L22
	mov	r9d, r10d
	lea	r8d, 1[rbx]
	sar	r9d, cl
	and	r9d, 1
	cmovne	ebx, r8d
.L22:
	add	ecx, 1
	cmp	ecx, 4
	jne	.L23
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	test	al, 48
	jne	.L57
	and	edx, 14
	je	.L25
.L61:
	cmp	BYTE PTR 24[rdi], 0
	jne	.L28
	cmp	bl, 1
	jg	.L58
.L28:
	mov	r8d, DWORD PTR 328[rsi]
	test	r8d, r8d
	jne	.L30
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 2
	jne	.L59
.L30:
	mov	rcx, rdi
	call	MultiBootMain
	sub	eax, 80
	cmp	eax, 33
	ja	.L31
	movabs	rdx, 12884967425
	bt	rdx, rax
	jnc	.L31
	xor	ecx, ecx
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
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -49153
	call	m4aSoundVSyncOn
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L31:
	mov	rcx, rdi
	call	MultiBootCheckComplete
	test	eax, eax
	jne	.L60
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	xor	ecx, ecx
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
	call	LinkCommunicationError
	movzx	edx, BYTE PTR 30[rdi]
	and	edx, 14
	jne	.L61
.L25:
	mov	DWORD PTR 328[rsi], 0
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -49153
	call	m4aSoundVSyncOn
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rcx, rsi
	lea	rbx, sub_8081C50[rip]
	call	sub_8081AD4
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, -4095
	mov	BYTE PTR 337[rsi], 0
	mov	BYTE PTR 40[rax], 0
	mov	BYTE PTR 42[rax], 0
	mov	BYTE PTR [rax], 0
	mov	BYTE PTR 20[rax], 0
	mov	BYTE PTR 60[rax], 0
	mov	BYTE PTR 2[rax], 0
	mov	BYTE PTR 22[rax], 0
	mov	BYTE PTR 62[rax], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	BYTE PTR 2[rdx], 0
	mov	WORD PTR [rdx], cx
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	lea	r12, 80[rsi]
	add	ebx, 6
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	mov	r9d, 1074
	mov	BYTE PTR 192[rsi], bl
	lea	rbx, 144[rsi]
	mov	WORD PTR 162[rsi], r9w
	mov	rcx, rbx
	mov	BYTE PTR 193[rsi], -1
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	je	.L28
	mov	DWORD PTR 328[rsi], 1
	mov	rbx, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rbx], 49152
	call	m4aMPlayAllStop
	and	DWORD PTR [rbx], -5
	call	m4aSoundVSyncOff
	xor	ecx, ecx
	call	DmaStop
	mov	ecx, 1
	call	DmaStop
	mov	ecx, 2
	call	DmaStop
	mov	ecx, 3
	call	DmaStop
	mov	eax, DWORD PTR 312[rsi]
	mov	rbx, QWORD PTR 304[rsi]
	mov	rcx, rdi
	mov	DWORD PTR 32[rsp], 1
	mov	r9d, 4
	lea	rdx, 192[rbx]
	lea	r8d, -192[rax]
	call	MultiBootStartMaster
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L59:
	mov	ecx, 61
	call	m4aSongNumStop
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rcx, QWORD PTR 0[rbp]
	call	TaskDestroy
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	CreateMultiplayerModeSelectScreen
	.seh_endproc
	.p2align 4
	.globl	ShowSinglePakResults
	.def	ShowSinglePakResults;	.scl	2;	.type	32;	.endef
	.seh_proc	ShowSinglePakResults
ShowSinglePakResults:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMPRingCollectWins[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	DWORD PTR [rax], 50462976
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	call	MultiSioStart
	xor	ecx, ecx
	add	rsp, 40
	jmp	CreateMultiplayerSinglePakResultsScreen
	.seh_endproc
	.p2align 4
	.globl	sub_8081D70
	.def	sub_8081D70;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081D70
sub_8081D70:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMultiBootParam[rip]
	mov	ecx, 1
	movzx	edx, BYTE PTR 29[rax]
	movzx	r10d, BYTE PTR 30[rax]
	mov	eax, 1
.L65:
	bt	edx, ecx
	jnc	.L64
	mov	r9d, r10d
	lea	r8d, 1[rax]
	sar	r9d, cl
	and	r9d, 1
	cmovne	eax, r8d
.L64:
	add	ecx, 1
	cmp	ecx, 4
	jne	.L65
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8081DB4
	.def	sub_8081DB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081DB4
sub_8081DB4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	rdx, QWORD PTR .refptr.MultiSioIntr[rip]
	mov	QWORD PTR [rax], rdx
	mov	rbx, rcx
	mov	ecx, DWORD PTR [rsi]
	shr	ecx, 8
	and	ecx, 15
	call	MultiSioInit
	mov	BYTE PTR 336[rbx], 0
	mov	DWORD PTR 332[rbx], 0
	mov	DWORD PTR [rsi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8081DF0
	.def	sub_8081DF0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081DF0
sub_8081DF0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rdi, 80[rcx]
	mov	rbx, rcx
	mov	esi, edx
	mov	rcx, rdi
	add	esi, 6
	add	rbx, 144
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	mov	eax, 1074
	mov	BYTE PTR 48[rbx], sil
	mov	WORD PTR 18[rbx], ax
	mov	BYTE PTR 49[rbx], -1
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8081E38
	.def	sub_8081E38;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081E38
sub_8081E38:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	eax, DWORD PTR [rax]
	movzx	ecx, dx
	lea	edx, 8[rcx]
	bt	eax, edx
	jc	.L75
.L78:
	mov	eax, 1
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	mov	edx, 1
	sal	edx, cl
	test	edx, eax
	jne	.L77
	mov	rdx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	movzx	eax, BYTE PTR [rdx+rcx]
	cmp	al, -76
	lea	r8d, 1[rax]
	setbe	al
	mov	BYTE PTR [rdx+rcx], r8b
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	BYTE PTR [rax+rcx], 0
	jmp	.L78
	.seh_endproc
	.p2align 4
	.globl	sub_80818B8
	.def	sub_80818B8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80818B8
sub_80818B8:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rdx, QWORD PTR [rdi]
	mov	eax, DWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rdx]
	test	al, 32
	je	.L80
	cmp	BYTE PTR 337[rbx], 8
	jbe	.L95
.L80:
	test	al, 16
	jne	.L81
	movzx	r8d, BYTE PTR 336[rbx]
.L82:
	mov	rsi, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rcx, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	eax, BYTE PTR 338[rbx]
	mov	rdx, rsi
	mov	BYTE PTR [rcx], al
	call	MultiSioMain
	mov	ecx, DWORD PTR 332[rbx]
	mov	DWORD PTR 0[rbp], eax
	mov	r10d, eax
	test	ecx, ecx
	je	.L96
.L83:
	shr	r10d, 8
	mov	r11, rsi
	mov	r9d, 1
	and	r10d, 15
.L87:
	mov	edx, r9d
	mov	rcx, rbx
	call	sub_8081E38
	test	eax, eax
	je	.L97
	mov	eax, r10d
	mov	ecx, r9d
	sal	eax, cl
	test	eax, eax
	je	.L85
	cmp	WORD PTR 20[r11], 16400
	je	.L98
.L85:
	add	r9, 1
	add	r11, 20
	cmp	r9, 4
	jne	.L87
	movzx	eax, BYTE PTR 2[rsi]
	cmp	BYTE PTR 337[rbx], al
	je	.L79
	mov	BYTE PTR 337[rbx], al
.L79:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	mov	BYTE PTR 336[rbx], 1
	mov	r8d, 1
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L95:
	lea	rsi, sub_8081D04[rip]
	mov	QWORD PTR 40[rdx], rsi
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L96:
	call	MultiSioStart
	mov	r10d, DWORD PTR 0[rbp]
	mov	DWORD PTR 332[rbx], 1
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L97:
	xor	ecx, ecx
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
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -49153
	call	m4aSoundVSyncOn
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L98:
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	edx, 64
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMPRingCollectWins[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	DWORD PTR [rax], 50462976
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8081D58[rip]
	mov	QWORD PTR 40[rax], rdi
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	jmp	.L79
	.seh_endproc
	.p2align 4
	.globl	sub_8081CC4
	.def	sub_8081CC4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081CC4
sub_8081CC4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	eax, DWORD PTR [rax]
	test	al, 16
	je	.L100
	test	al, 64
	jne	.L108
.L101:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, sub_80818B8[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
.L100:
	jmp	sub_80818B8
	.p2align 4,,10
	.p2align 3
.L108:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	add	BYTE PTR 2[rax], 1
	jmp	.L101
	.seh_endproc
	.p2align 4
	.globl	sub_8081E90
	.def	sub_8081E90;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081E90
sub_8081E90:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	imul	eax, DWORD PTR 316[rcx], 240
	imul	rax, rax, 954437177
	shr	rax, 46
	movzx	eax, al
	add	eax, 40
	or	ah, 40
	mov	DWORD PTR [rdx], eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
gUnknown_080E0218:
	.long	0
	.long	127
	.long	128
	.long	129
	.long	130
	.long	131
	.long	132
	.globl	gUnknown_080E01E0
	.align 32
gUnknown_080E01E0:
	.quad	0
	.quad	0
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.quad	gMultiBootProgram_SubgameLoader
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.align 32
gUnknown_080E01B6:
	.word	0
	.word	0
	.word	0
	.word	1106
	.word	0
	.word	46
	.word	1107
	.word	0
	.word	34
	.word	1109
	.word	0
	.word	38
	.word	1108
	.word	0
	.word	46
	.word	1111
	.word	0
	.word	30
	.word	1110
	.word	0
	.word	30
	.align 32
gUnknown_080E018C:
	.word	0
	.word	0
	.word	0
	.word	1074
	.word	0
	.word	90
	.word	1079
	.word	0
	.word	84
	.word	1080
	.word	0
	.word	90
	.word	1081
	.word	0
	.word	90
	.word	1082
	.word	0
	.word	90
	.word	1083
	.word	0
	.word	45
	.globl	gCollectRingsSegments
	.align 32
gCollectRingsSegments:
	.quad	gCollectRingsRom_Compressed
	.quad	gCollectRingsRom_Compressed+32768
	.quad	gCollectRingsRom_Compressed+65536
	.quad	gCollectRingsBgStageTileset
	.quad	gCollectRingsAnimations_Cream_Compressed
	.quad	gCollectRingsAnimations_Tails_Compressed
	.quad	gCollectRingsAnimations_Knuckles_Compressed
	.quad	gCollectRingsTilemaps+32768
	.quad	gCollectRingsTilemaps
	.align 8
.LC0:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 16
.LC4:
	.word	0
	.word	0
	.word	114
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 8
.LC9:
	.long	2
	.long	1
	.ident	"GCC: (GNU) 13-win32"
	.def	Sio32MultiLoadMain;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSinglePakResultsScreen;	.scl	2;	.type	32;	.endef
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.def	Sio32MultiLoadInit;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	MultiSioStart;	.scl	2;	.type	32;	.endef
	.def	ApplyGameStageSettings;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	MultiBootInit;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	MultiBootMain;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOn;	.scl	2;	.type	32;	.endef
	.def	MultiBootCheckComplete;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOff;	.scl	2;	.type	32;	.endef
	.def	DmaStop;	.scl	2;	.type	32;	.endef
	.def	MultiBootStartMaster;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerModeSelectScreen;	.scl	2;	.type	32;	.endef
	.def	MultiSioMain;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gMPRingCollectWins, "dr"
	.globl	.refptr.gMPRingCollectWins
	.linkonce	discard
.refptr.gMPRingCollectWins:
	.quad	gMPRingCollectWins
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
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
	.section	.rdata$.refptr.gMultiBootParam, "dr"
	.globl	.refptr.gMultiBootParam
	.linkonce	discard
.refptr.gMultiBootParam:
	.quad	gMultiBootParam
	.section	.rdata$.refptr.gMultiSioEnabled, "dr"
	.globl	.refptr.gMultiSioEnabled
	.linkonce	discard
.refptr.gMultiSioEnabled:
	.quad	gMultiSioEnabled
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
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
	.section	.rdata$.refptr.gMultiBootProgram_SubgameLoader, "dr"
	.globl	.refptr.gMultiBootProgram_SubgameLoader
	.linkonce	discard
.refptr.gMultiBootProgram_SubgameLoader:
	.quad	gMultiBootProgram_SubgameLoader
	.section	.rdata$.refptr.gMultiBootProgram_SubgameLoaderEnd, "dr"
	.globl	.refptr.gMultiBootProgram_SubgameLoaderEnd
	.linkonce	discard
.refptr.gMultiBootProgram_SubgameLoaderEnd:
	.quad	gMultiBootProgram_SubgameLoaderEnd
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gEntitiesManagerTask, "dr"
	.globl	.refptr.gEntitiesManagerTask
	.linkonce	discard
.refptr.gEntitiesManagerTask:
	.quad	gEntitiesManagerTask
	.section	.rdata$.refptr.gUnknown_0300543C, "dr"
	.globl	.refptr.gUnknown_0300543C
	.linkonce	discard
.refptr.gUnknown_0300543C:
	.quad	gUnknown_0300543C
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
	.section	.rdata$.refptr.gGameStageTask, "dr"
	.globl	.refptr.gGameStageTask
	.linkonce	discard
.refptr.gGameStageTask:
	.quad	gGameStageTask
	.section	.rdata$.refptr.gDummyTask, "dr"
	.globl	.refptr.gDummyTask
	.linkonce	discard
.refptr.gDummyTask:
	.quad	gDummyTask
	.section	.rdata$.refptr.gRingsScatterTask, "dr"
	.globl	.refptr.gRingsScatterTask
	.linkonce	discard
.refptr.gRingsScatterTask:
	.quad	gRingsScatterTask
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.MultiSioIntr, "dr"
	.globl	.refptr.MultiSioIntr
	.linkonce	discard
.refptr.MultiSioIntr:
	.quad	MultiSioIntr
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.Sio32MultiLoadIntr, "dr"
	.globl	.refptr.Sio32MultiLoadIntr
	.linkonce	discard
.refptr.Sio32MultiLoadIntr:
	.quad	Sio32MultiLoadIntr
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
