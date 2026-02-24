	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	HBlankIntr;	.scl	3;	.type	32;	.endef
	.seh_proc	HBlankIntr
HBlankIntr:
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
	mov	rbp, QWORD PTR .refptr.REG_BASE[rip]
	movzx	esi, WORD PTR 6[rbp]
	cmp	si, 239
	ja	.L3
	cmp	BYTE PTR gNumHBlankIntrs[rip], 0
	je	.L3
	xor	ebx, ebx
	lea	rdi, gHBlankIntrs[rip]
	.p2align 4,,10
	.p2align 3
.L4:
	mov	ecx, esi
	call	[QWORD PTR [rdi+rbx*8]]
	add	rbx, 1
	cmp	bl, BYTE PTR gNumHBlankIntrs[rip]
	jb	.L4
.L3:
	mov	eax, 2
	mov	WORD PTR 514[rbp], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	VCountIntr;	.scl	3;	.type	32;	.endef
	.seh_proc	VCountIntr
VCountIntr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 4
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Dma0Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Dma0Intr
Dma0Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 256
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Dma1Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Dma1Intr
Dma1Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 512
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Dma2Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Dma2Intr
Dma2Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 1024
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Dma3Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Dma3Intr
Dma3Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 2048
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Timer0Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Timer0Intr
Timer0Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 8
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Timer1Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Timer1Intr
Timer1Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 16
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Timer2Intr;	.scl	3;	.type	32;	.endef
	.seh_proc	Timer2Intr
Timer2Intr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 32
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	KeypadIntr;	.scl	3;	.type	32;	.endef
	.seh_proc	KeypadIntr
KeypadIntr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 4096
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	GamepakIntr;	.scl	3;	.type	32;	.endef
	.seh_proc	GamepakIntr
GamepakIntr:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 8192
	mov	WORD PTR 514[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	ProcessVramGraphicsCopyQueue
	.def	ProcessVramGraphicsCopyQueue;	.scl	2;	.type	32;	.endef
	.seh_proc	ProcessVramGraphicsCopyQueue
ProcessVramGraphicsCopyQueue:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	edx, BYTE PTR gVramGraphicsCopyCursor[rip]
	cmp	dl, BYTE PTR gVramGraphicsCopyQueueIndex[rip]
	lea	rsi, gVramGraphicsCopyQueue[rip]
	mov	eax, edx
	jne	.L19
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L24:
	movzx	eax, dl
	mov	QWORD PTR [rsi+rax*8], 0
	lea	eax, 1[rdx]
	and	eax, 31
	cmp	al, BYTE PTR gVramGraphicsCopyQueueIndex[rip]
	mov	BYTE PTR gVramGraphicsCopyCursor[rip], al
	mov	edx, eax
	je	.L43
.L19:
	movzx	eax, al
	mov	rbx, QWORD PTR [rsi+rax*8]
	movzx	r9d, WORD PTR 16[rbx]
	test	r9w, r9w
	je	.L24
	xor	edi, edi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L45:
	test	rdx, rdx
	je	.L23
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L23
	mov	eax, edi
	mov	r9d, -2147483136
	add	edi, 1024
	lea	r8, [rcx+rax]
	add	rdx, rax
	mov	ecx, 3
	call	DmaSet
	movzx	eax, WORD PTR 16[rbx]
	lea	r9d, -1024[rax]
	mov	WORD PTR 16[rbx], r9w
	test	r9w, r9w
	je	.L44
.L20:
	mov	rdx, QWORD PTR [rbx]
	cmp	r9w, 1024
	ja	.L45
	test	rdx, rdx
	je	.L23
	mov	rax, QWORD PTR 8[rbx]
	test	rax, rax
	je	.L23
	shr	r9w
	add	rdx, rdi
	lea	r8, [rax+rdi]
	mov	ecx, 3
	movzx	r9d, r9w
	or	r9d, -2147483648
	call	DmaSet
.L23:
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
.L44:
	movzx	edx, BYTE PTR gVramGraphicsCopyCursor[rip]
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L43:
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	VBlankIntr;	.scl	3;	.type	32;	.endef
	.seh_proc	VBlankIntr
VBlankIntr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	ecx, ecx
	call	DmaStop
	call	m4aSoundVSync
	mov	rax, QWORD PTR .refptr.INTR_CHECK[rip]
	mov	BYTE PTR gExecSoundMain[rip], 1
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	or	WORD PTR [rax], 1
	mov	eax, DWORD PTR gFlagsPreVBlank[rip]
	test	al, 4
	jne	.L54
	cmp	QWORD PTR gHBlankCopyTarget[rip], 0
	je	.L48
	movzx	edx, WORD PTR 512[rbx]
	mov	QWORD PTR gHBlankCopyTarget[rip], 0
	and	edx, -3
	mov	WORD PTR 512[rbx], dx
.L48:
	movzx	edx, WORD PTR 4[rbx]
	test	al, 64
	je	.L51
	or	edx, 32
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 4[rbx]
	movzx	edx, dl
	mov	WORD PTR 4[rbx], dx
	movzx	edx, BYTE PTR gVCountSetting[rip]
	movzx	ecx, WORD PTR 4[rbx]
	sal	edx, 8
	or	edx, ecx
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 4[rbx]
	and	edx, -5
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 4[rbx]
	or	edx, 32
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 512[rbx]
	or	edx, 4
	mov	WORD PTR 512[rbx], dx
.L52:
	test	ah, -128
	jne	.L53
	movzx	esi, WORD PTR 304[rbx]
	test	sil, 15
	je	.L55
.L53:
	add	DWORD PTR gFrameCount[rip], 1
	mov	eax, 1
	mov	WORD PTR 514[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	and	edx, -5
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 4[rbx]
	and	edx, -33
	mov	WORD PTR 4[rbx], dx
	movzx	edx, WORD PTR 512[rbx]
	and	edx, -5
	mov	WORD PTR 512[rbx], dx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L54:
	movzx	eax, WORD PTR 512[rbx]
	xor	ecx, ecx
	or	eax, 2
	mov	WORD PTR 512[rbx], ax
	call	DmaWait
	movzx	r9d, BYTE PTR gHBlankCopySize[rip]
	mov	r8, QWORD PTR gHBlankCopyTarget[rip]
	xor	ecx, ecx
	mov	rdx, QWORD PTR gBgOffsetsHBlankPrimary[rip]
	shr	r9b
	movzx	r9d, r9b
	or	r9d, -2147483648
	call	DmaSet
	movzx	edx, BYTE PTR gHBlankCopySize[rip]
	mov	r8, QWORD PTR gHBlankCopyTarget[rip]
	xor	ecx, ecx
	mov	r9d, edx
	add	rdx, QWORD PTR gBgOffsetsHBlankPrimary[rip]
	shr	r9b
	movzx	r9d, r9b
	or	r9d, -1570766848
	call	DmaSet
	mov	eax, DWORD PTR gFlagsPreVBlank[rip]
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L55:
	xor	edx, edx
	xor	r8d, r8d
	xor	ecx, ecx
	not	esi
	mov	WORD PTR 512[rbx], dx
	and	esi, 15
	mov	WORD PTR 520[rbx], cx
	or	DWORD PTR gFlags[rip], 32768
	mov	WORD PTR 4[rbx], r8w
	call	m4aMPlayAllStop
	call	m4aSoundVSyncOff
	xor	ecx, ecx
	and	DWORD PTR gFlags[rip], -5
	call	DmaStop
	mov	ecx, 1
	call	DmaStop
	mov	ecx, 2
	call	DmaStop
	mov	ecx, 3
	call	DmaStop
	mov	ecx, 32
	mov	WORD PTR gInput[rip], si
	call	SoftReset
	jmp	.L53
	.seh_endproc
	.p2align 4
	.globl	EngineInit
	.def	EngineInit;	.scl	2;	.type	32;	.endef
	.seh_proc	EngineInit
EngineInit:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, 16404
	mov	DWORD PTR gFlagsPreVBlank[rip], 0
	mov	WORD PTR 516[rsi], ax
	movzx	eax, WORD PTR 308[rsi]
	and	ax, -16384
	cmp	ax, -32768
	jne	.L63
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
.L57:
	mov	eax, edx
	and	ah, -17
	cmp	WORD PTR gInput[rip], 15
	jne	.L59
	mov	eax, edx
	or	ah, 16
.L59:
	lea	rbx, 44[rsp]
	mov	r9d, -2063566848
	mov	ecx, 3
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	rdx, rbx
	mov	DWORD PTR gFlags[rip], eax
	add	rdi, 80384
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.OAM[rip]
	mov	r9d, -2063597184
	mov	rdx, rbx
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2063597312
	mov	rdx, rbx
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597564
	mov	rdx, rbx
	lea	r8, gBgSprites_Unknown2[rip]
	mov	ecx, 3
	mov	BYTE PTR sLastCalledVblankFuncId[rip], -1
	mov	BYTE PTR gBackgroundsCopyQueueCursor[rip], 0
	mov	BYTE PTR gBackgroundsCopyQueueIndex[rip], 0
	mov	BYTE PTR gBgSpritesCount[rip], 0
	mov	BYTE PTR gVramGraphicsCopyCursor[rip], 0
	mov	BYTE PTR gVramGraphicsCopyQueueIndex[rip], 0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597564
	mov	rdx, rbx
	lea	r8, gBgScrollRegs[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR gBgSprites_Unknown1[rip], 0
	call	DmaSet
	mov	r8d, 128
	mov	r9d, -2063597504
	mov	rdx, rbx
	mov	WORD PTR gDispCnt[rip], r8w
	mov	ecx, 3
	lea	r8, gVramGraphicsCopyQueue[rip]
	mov	DWORD PTR gSpriteOffset[rip], 0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, 512
	mov	rdx, rbx
	lea	r8, gOamBuffer[rip]
	mov	WORD PTR 44[rsp], r9w
	mov	ecx, 3
	mov	r9d, -2130705664
	mov	BYTE PTR gOamFreeIndex[rip], 0
	mov	BYTE PTR gOamFirstPausedIndex[rip], 0
	call	DmaSet
	mov	r10d, 512
	mov	rdx, rbx
	mov	ecx, 3
	mov	r9d, -2130705664
	lea	r8, gOamMallocBuffer[rip]
	mov	WORD PTR 44[rsp], r10w
	call	DmaSet
	mov	r9d, -2063597560
	mov	rdx, rbx
	lea	r8, gOamMallocOrders_StartIndex[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], -1
	call	DmaSet
	mov	r9d, -2063597560
	mov	rdx, rbx
	lea	r8, gOamMallocOrders_EndIndex[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], -1
	call	DmaSet
	mov	r9d, -2063597440
	mov	rdx, rbx
	lea	r8, gObjPalette[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597440
	mov	rdx, rbx
	lea	r8, gBgPalette[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	xor	r11d, r11d
	mov	r10d, 5140
	xor	edx, edx
	mov	rax, QWORD PTR .LC0[rip]
	xor	r8d, r8d
	xor	r9d, r9d
	mov	ecx, 256
	movdqu	xmm2, XMMWORD PTR gIntrTableTemplate[rip+16]
	movdqu	xmm1, XMMWORD PTR gIntrTableTemplate[rip]
	pxor	xmm0, xmm0
	mov	WORD PTR gUnknown_03001944[rip], r11w
	mov	QWORD PTR gBgAffineRegs[rip], rax
	mov	r11d, 2056
	mov	QWORD PTR gBgAffineRegs[rip+16], rax
	mov	eax, 256
	mov	WORD PTR gUnknown_030017F0[rip], ax
	mov	eax, 256
	mov	WORD PTR gUnknown_03005394[rip], ax
	xor	eax, eax
	mov	WORD PTR gUnknown_03002A8C[rip], ax
	xor	eax, eax
	mov	WORD PTR gUnknown_03004D58[rip], ax
	xor	eax, eax
	mov	WORD PTR gUnknown_0300194C[rip], ax
	movabs	rax, 1446803456761533460
	mov	QWORD PTR gKeysFirstRepeatIntervals[rip], rax
	movabs	rax, 578721382704613384
	mov	QWORD PTR gKeysContinuedRepeatIntervals[rip], rax
	mov	rax, QWORD PTR .refptr.gInputRecorder[rip]
	mov	WORD PTR gKeysFirstRepeatIntervals[rip+8], r10w
	mov	BYTE PTR 8[rax], 0
	xor	eax, eax
	mov	WORD PTR gKeysContinuedRepeatIntervals[rip+8], r11w
	movups	XMMWORD PTR gIntrTable[rip+16], xmm2
	mov	WORD PTR gPhysicalInput[rip], ax
	mov	WORD PTR gUnknown_03002820[rip], dx
	mov	rdx, rbx
	mov	WORD PTR gUnknown_03005398[rip], cx
	mov	ecx, 3
	mov	WORD PTR gBldRegs[rip+4], r8w
	lea	r8, gBgOffsetsBuffer[rip]
	mov	WORD PTR gMosaicReg[rip], r9w
	mov	r9d, -2063596608
	movups	XMMWORD PTR gWinRegs[rip], xmm0
	movups	XMMWORD PTR gIntrTable[rip], xmm1
	mov	QWORD PTR gBgAffineRegs[rip+8], 0
	mov	QWORD PTR gBgAffineRegs[rip+24], 0
	mov	QWORD PTR gWinRegs[rip+16], 0
	mov	DWORD PTR gBldRegs[rip], 0
	mov	DWORD PTR gPseudoRandom[rip], 0
	mov	QWORD PTR gInputPlaybackData[rip], 0
	mov	DWORD PTR gFrameCount[rip], 0
	movdqu	xmm3, XMMWORD PTR gIntrTableTemplate[rip+32]
	movdqu	xmm4, XMMWORD PTR gIntrTableTemplate[rip+48]
	movdqu	xmm5, XMMWORD PTR gIntrTableTemplate[rip+64]
	mov	DWORD PTR 44[rsp], 0
	movdqu	xmm0, XMMWORD PTR gIntrTableTemplate[rip+80]
	movdqu	xmm1, XMMWORD PTR gIntrTableTemplate[rip+96]
	movups	XMMWORD PTR gIntrTable[rip+32], xmm3
	movups	XMMWORD PTR gIntrTable[rip+48], xmm4
	movups	XMMWORD PTR gIntrTable[rip+64], xmm5
	movups	XMMWORD PTR gIntrTable[rip+80], xmm0
	movups	XMMWORD PTR gIntrTable[rip+96], xmm1
	call	DmaSet
	lea	rax, gBgOffsetsBuffer[rip]
	mov	rdx, rbx
	mov	ecx, 3
	mov	QWORD PTR gBgOffsetsHBlankPrimary[rip], rax
	mov	r9d, -2063597560
	add	rax, 1920
	lea	r8, gHBlankCallbacks[rip]
	mov	QWORD PTR gBgOffsetsHBlankSecondary[rip], rax
	mov	QWORD PTR gHBlankCopyTarget[rip], 0
	mov	BYTE PTR gHBlankCopySize[rip], 0
	mov	BYTE PTR gNumHBlankCallbacks[rip], 0
	mov	BYTE PTR gNumHBlankIntrs[rip], 0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597560
	mov	rdx, rbx
	lea	r8, gHBlankIntrs[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597560
	mov	rdx, rbx
	lea	r8, gVBlankCallbacks[rip]
	mov	ecx, 3
	mov	BYTE PTR gNumVBlankCallbacks[rip], 0
	mov	BYTE PTR gNumVBlankIntrs[rip], 0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	r9d, -2063597560
	mov	rdx, rbx
	lea	r8, gVBlankIntrs[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	call	m4aSoundInit
	mov	ecx, 9696512
	call	m4aSoundMode
	mov	BYTE PTR gExecSoundMain[rip], 1
	call	TasksInit
	call	EwramInitHeap
	mov	eax, 560
	mov	QWORD PTR gVramHeapStartAddr[rip], rdi
	mov	WORD PTR gVramHeapMaxTileSlots[rip], ax
	call	VramResetHeapState
	call	IdentifyFlash
	test	ax, ax
	je	.L60
	or	DWORD PTR gFlags[rip], 256
.L61:
	mov	rax, QWORD PTR .refptr.INTR_VECTOR[rip]
	mov	rdx, QWORD PTR .refptr.IntrMain[rip]
	mov	ecx, 24
	mov	r9d, -2063597563
	lea	r8, gMultiSioSend[rip]
	mov	DWORD PTR 44[rsp], 0
	mov	QWORD PTR [rax], rdx
	mov	eax, 1
	mov	edx, 1
	mov	WORD PTR 520[rsi], ax
	mov	WORD PTR 512[rsi], dx
	mov	rdx, rbx
	mov	WORD PTR 4[rsi], cx
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2063597548
	mov	rdx, rbx
	lea	r8, gMultiSioRecv[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	xor	ecx, ecx
	mov	BYTE PTR gMultiSioEnabled[rip], 0
	mov	DWORD PTR gMultiSioStatusFlags[rip], 0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	MultiSioInit
	.p2align 4,,10
	.p2align 3
.L63:
	mov	r8, QWORD PTR .refptr.EWRAM_START[rip]
	mov	r9d, -2147473408
	mov	ecx, 3
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR gFlags[rip], 512
	lea	rdx, 65536[rdi]
	add	r8, 241664
	call	DmaSet
	mov	edx, DWORD PTR gFlags[rip]
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L60:
	lea	rdx, gIntrTable[rip+40]
	mov	ecx, 1
	call	SetFlashTimerIntr
	jmp	.L61
	.seh_endproc
	.p2align 4
	.globl	GetInput
	.def	GetInput;	.scl	2;	.type	32;	.endef
	.seh_proc	GetInput
GetInput:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gInputRecorder[rip]
	movzx	eax, WORD PTR 304[rax]
	movzx	edx, BYTE PTR 8[rdx]
	not	eax
	and	ax, 1023
	mov	WORD PTR gInput[rip], ax
	mov	WORD PTR gPhysicalInput[rip], ax
	cmp	dl, 1
	je	.L76
	cmp	dl, 2
	je	.L77
.L66:
	movzx	ecx, WORD PTR gPrevInput[rip]
	mov	edx, eax
	xor	ebx, ebx
	mov	edi, 1
	not	edx
	mov	WORD PTR gPrevInput[rip], ax
	lea	r9, gRepeatedKeysTestCounter[rip]
	lea	rsi, gKeysContinuedRepeatIntervals[rip]
	mov	r10d, ecx
	and	edx, ecx
	lea	r11, gKeysFirstRepeatIntervals[rip]
	not	r10d
	mov	WORD PTR gReleasedKeys[rip], dx
	xor	edx, edx
	and	r10d, eax
	movzx	eax, ax
	mov	WORD PTR gPressedKeys[rip], r10w
	mov	WORD PTR gRepeatedKeys[rip], r10w
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L79:
	movzx	ecx, BYTE PTR [r11+rdx]
.L68:
	mov	BYTE PTR [r9+rdx], cl
	add	rdx, 1
	cmp	rdx, 10
	je	.L78
.L70:
	bt	eax, edx
	mov	ecx, edx
	jnc	.L79
	movzx	r8d, BYTE PTR [r9+rdx]
	test	r8b, r8b
	je	.L69
	lea	ecx, -1[r8]
	mov	BYTE PTR [r9+rdx], cl
	add	rdx, 1
	cmp	rdx, 10
	jne	.L70
.L78:
	test	bl, bl
	je	.L64
	mov	WORD PTR gRepeatedKeys[rip], r10w
.L64:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	mov	ebx, edi
	sal	ebx, cl
	movzx	ecx, BYTE PTR [rsi+rdx]
	or	r10d, ebx
	mov	ebx, 1
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L76:
	movzx	ecx, ax
	call	InputRecorderWrite
	movzx	eax, WORD PTR gInput[rip]
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L77:
	call	InputRecorderRead
	mov	WORD PTR gInput[rip], ax
	jmp	.L66
	.seh_endproc
	.p2align 4
	.globl	EngineMainLoop
	.def	EngineMainLoop;	.scl	2;	.type	32;	.endef
	.seh_proc	EngineMainLoop
EngineMainLoop:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, DWORD PTR gFlags[rip]
	mov	BYTE PTR gExecSoundMain[rip], 0
	lea	r15, gBgCntRegs[rip]
	lea	r14, gWinRegs[rip]
	lea	r13, gBldRegs[rip]
	lea	r12, gMosaicReg[rip]
	lea	rcx, 96[rsp]
	lea	rsi, 88[rsp]
	mov	QWORD PTR 64[rsp], rcx
	lea	rcx, 104[rsp]
	mov	QWORD PTR 72[rsp], rcx
	lea	rcx, 84[rsp]
	mov	QWORD PTR 48[rsp], rcx
	lea	rcx, 8[rbx]
	mov	QWORD PTR 56[rsp], rsi
	lea	rsi, gVBlankIntrs[rip]
	mov	QWORD PTR 40[rsp], rcx
	test	ah, 64
	je	.L166
	.p2align 4,,10
	.p2align 3
.L81:
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	je	.L167
.L82:
	mov	eax, DWORD PTR gFlags[rip]
	mov	DWORD PTR gFlagsPreVBlank[rip], eax
	call	VBlankIntrWait
	movzx	eax, WORD PTR gDispCnt[rip]
	test	BYTE PTR gFlags[rip+1], 64
	mov	WORD PTR [rbx], ax
	je	.L84
	mov	rdx, QWORD PTR 40[rsp]
	mov	r8d, 67108866
	mov	rcx, r15
	call	CpuSet
	mov	eax, DWORD PTR gFlags[rip]
	test	al, 1
	jne	.L168
.L85:
	test	al, 2
	jne	.L169
.L86:
	mov	r8d, 67108870
	lea	rdx, 64[rbx]
	mov	rcx, r14
	call	CpuSet
	mov	r8d, 3
	lea	rdx, 92[rbx]
	mov	rcx, r13
	call	CpuSet
	mov	r8d, 1
	lea	rdx, 88[rbx]
	mov	rcx, r12
	call	CpuSet
	mov	r8d, 8
	lea	rdx, 16[rbx]
	lea	rcx, gBgScrollRegs[rip]
	call	CpuSet
	mov	r8d, 67108872
	lea	rdx, 32[rbx]
	lea	rcx, gBgAffineRegs[rip]
	call	CpuSet
	test	BYTE PTR gFlags[rip], 8
	movzx	eax, WORD PTR 512[rbx]
	jne	.L170
	and	eax, -3
	xor	r8d, r8d
	mov	WORD PTR 512[rbx], ax
.L89:
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	mov	BYTE PTR gNumHBlankIntrs[rip], r8b
	je	.L171
.L90:
	xor	edi, edi
	cmp	BYTE PTR gNumVBlankIntrs[rip], 0
	je	.L94
	.p2align 4,,10
	.p2align 3
.L91:
	call	[QWORD PTR [rsi+rdi*8]]
	add	rdi, 1
	cmp	dil, BYTE PTR gNumVBlankIntrs[rip]
	jb	.L91
.L94:
	xor	r8d, r8d
	test	BYTE PTR gFlags[rip], 16
	jne	.L172
.L93:
	movzx	ebp, BYTE PTR sLastCalledVblankFuncId[rip]
	mov	BYTE PTR gNumVBlankIntrs[rip], r8b
	cmp	bpl, -1
	je	.L126
	mov	BYTE PTR sLastCalledVblankFuncId[rip], -1
	cmp	bpl, 3
	ja	.L99
.L96:
	movzx	eax, bpl
	lea	rcx, sVblankFuncs[rip]
	lea	rdi, [rcx+rax*8]
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L98:
	add	ebp, 1
	add	rdi, 8
	cmp	bpl, 4
	je	.L99
.L100:
	call	[QWORD PTR [rdi]]
	test	eax, eax
	jne	.L98
	mov	BYTE PTR sLastCalledVblankFuncId[rip], bpl
.L99:
	mov	eax, DWORD PTR gFlags[rip]
	test	ah, 4
	je	.L173
.L124:
	or	ah, 8
.L122:
	mov	DWORD PTR gFlags[rip], eax
.L121:
	movzx	edx, WORD PTR 4[rbx]
	and	edx, 1
	jne	.L121
	mov	BYTE PTR gExecSoundMain[rip], 0
	test	ah, 64
	jne	.L81
.L166:
	call	m4aSoundMain
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	jne	.L82
.L167:
	call	GetInput
	cmp	BYTE PTR gMultiSioEnabled[rip], 0
	jne	.L174
.L83:
	call	TasksExec
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L173:
	mov	BYTE PTR gNumHBlankCallbacks[rip], 0
	test	al, 32
	jne	.L102
	mov	rdx, QWORD PTR gBgOffsetsPrimary[rip]
	cmp	QWORD PTR gBgOffsetsHBlankPrimary[rip], rdx
	mov	rcx, QWORD PTR gBgOffsetsSecondary[rip]
	je	.L175
	mov	QWORD PTR gBgOffsetsHBlankPrimary[rip], rdx
	mov	QWORD PTR gBgOffsetsHBlankSecondary[rip], rcx
.L102:
	mov	rcx, QWORD PTR 72[rsp]
	and	eax, -13
	mov	r8d, 16777600
	lea	rdx, gOamBuffer[rip]
	mov	DWORD PTR gFlags[rip], eax
	mov	QWORD PTR 104[rsp], 512
	call	CpuFastSet
	mov	eax, DWORD PTR gFlags[rip]
	mov	BYTE PTR gNumVBlankCallbacks[rip], 0
	and	eax, -17
.L104:
	test	ah, 4
	jne	.L124
	and	ah, -9
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L84:
	mov	r8, QWORD PTR 40[rsp]
	mov	r9d, -2080374782
	mov	rdx, r15
	mov	ecx, 3
	call	DmaSet
	mov	eax, DWORD PTR gFlags[rip]
	test	al, 1
	jne	.L176
.L105:
	test	al, 2
	jne	.L177
.L106:
	mov	r9d, -2080374778
	lea	r8, 64[rbx]
	mov	rdx, r14
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2147483645
	lea	r8, 92[rbx]
	mov	rdx, r13
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2147483647
	lea	r8, 88[rbx]
	mov	rdx, r12
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2147483640
	lea	r8, 16[rbx]
	lea	rdx, gBgScrollRegs[rip]
	mov	ecx, 3
	call	DmaSet
	mov	r9d, -2080374776
	lea	r8, 32[rbx]
	lea	rdx, gBgAffineRegs[rip]
	mov	ecx, 3
	call	DmaSet
	mov	eax, DWORD PTR gFlags[rip]
	test	al, 8
	jne	.L178
	movzx	edx, WORD PTR 512[rbx]
	mov	BYTE PTR gNumHBlankIntrs[rip], 0
	and	edx, -3
	mov	WORD PTR 512[rbx], dx
	test	al, 4
	jne	.L179
.L110:
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	je	.L180
.L111:
	xor	ebp, ebp
	cmp	BYTE PTR gNumVBlankIntrs[rip], 0
	je	.L116
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rax, QWORD PTR [rsi+rbp*8]
	test	rax, rax
	je	.L115
	call	rax
.L115:
	add	rbp, 1
	cmp	bpl, BYTE PTR gNumVBlankIntrs[rip]
	jb	.L112
.L116:
	xor	eax, eax
	test	BYTE PTR gFlags[rip], 16
	jne	.L181
.L114:
	mov	BYTE PTR gNumVBlankIntrs[rip], al
	mov	BYTE PTR sLastCalledVblankFuncId[rip], -1
	call	ProcessVramGraphicsCopyQueue
	call	sub_8004010
	call	sub_80039E4
	call	sub_8002B20
	mov	eax, DWORD PTR gFlags[rip]
	test	ah, 4
	jne	.L124
	mov	BYTE PTR gNumHBlankCallbacks[rip], 0
	test	al, 32
	jne	.L118
	mov	rdx, QWORD PTR gBgOffsetsPrimary[rip]
	cmp	QWORD PTR gBgOffsetsHBlankPrimary[rip], rdx
	mov	rcx, QWORD PTR gBgOffsetsSecondary[rip]
	je	.L182
	mov	QWORD PTR gBgOffsetsHBlankPrimary[rip], rdx
	mov	QWORD PTR gBgOffsetsHBlankSecondary[rip], rcx
.L118:
	mov	rdi, QWORD PTR 48[rsp]
	and	eax, -13
	mov	r9d, -2130706240
	lea	r8, gOamBuffer[rip]
	mov	DWORD PTR gFlags[rip], eax
	mov	ecx, 3
	mov	eax, 512
	mov	rdx, rdi
	mov	WORD PTR 84[rsp], ax
	call	DmaSet
	mov	edx, 512
	mov	r9d, -2130706240
	lea	r8, gOamBuffer[rip+384]
	mov	WORD PTR 84[rsp], dx
	mov	ecx, 3
	mov	rdx, rdi
	call	DmaSet
	mov	ecx, 512
	mov	r9d, -2130706240
	mov	rdx, rdi
	mov	WORD PTR 84[rsp], cx
	lea	r8, gOamBuffer[rip+768]
	mov	ecx, 3
	call	DmaSet
	mov	r8d, 512
	mov	r9d, -2130706240
	mov	rdx, rdi
	mov	WORD PTR 84[rsp], r8w
	mov	ecx, 3
	lea	r8, gOamBuffer[rip+1152]
	call	DmaSet
	mov	eax, DWORD PTR gFlags[rip]
	mov	BYTE PTR gNumVBlankCallbacks[rip], 0
	and	eax, -17
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L126:
	xor	ebp, ebp
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L172:
	mov	rcx, QWORD PTR 64[rsp]
	mov	r8d, 16777224
	mov	rdx, rsi
	mov	QWORD PTR 96[rsp], 0
	call	CpuFastSet
	movzx	r8d, BYTE PTR gNumVBlankCallbacks[rip]
	test	r8b, r8b
	je	.L93
	mov	rdx, rsi
	lea	rcx, gVBlankCallbacks[rip]
	call	CpuFastSet
	movzx	r8d, BYTE PTR gNumVBlankCallbacks[rip]
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L170:
	mov	rcx, QWORD PTR 56[rsp]
	or	eax, 2
	mov	r8d, 16777224
	lea	rdx, gHBlankIntrs[rip]
	mov	WORD PTR 512[rbx], ax
	mov	QWORD PTR 88[rsp], 0
	call	CpuFastSet
	movzx	r8d, BYTE PTR gNumHBlankCallbacks[rip]
	test	r8b, r8b
	je	.L89
	lea	rdx, gHBlankIntrs[rip]
	lea	rcx, gHBlankCallbacks[rip]
	call	CpuFastSet
	movzx	r8d, BYTE PTR gNumHBlankCallbacks[rip]
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	mov	BYTE PTR gNumHBlankIntrs[rip], r8b
	jne	.L90
	.p2align 4,,10
	.p2align 3
.L171:
	call	ProcessOamBuffers
	mov	rdx, QWORD PTR .refptr.OAM[rip]
	mov	r8d, 384
	lea	rcx, gOamBuffer[rip]
	call	CpuFastSet
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L169:
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 128
	lea	rcx, gObjPalette[rip]
	lea	rdx, 512[rax]
	call	CpuFastSet
	xor	DWORD PTR gFlags[rip], 2
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L178:
	mov	rdx, QWORD PTR 48[rsp]
	movzx	eax, WORD PTR 512[rbx]
	mov	r9d, -2063597560
	lea	r8, gHBlankIntrs[rip]
	mov	ecx, 3
	mov	DWORD PTR 84[rsp], 0
	or	eax, 2
	mov	WORD PTR 512[rbx], ax
	call	DmaSet
	movzx	eax, BYTE PTR gNumHBlankCallbacks[rip]
	test	al, al
	jne	.L183
.L108:
	mov	BYTE PTR gNumHBlankIntrs[rip], al
	mov	eax, DWORD PTR gFlags[rip]
	test	al, 4
	je	.L110
.L179:
	movzx	r9d, BYTE PTR gHBlankCopySize[rip]
	mov	r8, QWORD PTR gHBlankCopyTarget[rip]
	mov	ecx, 3
	mov	rdx, QWORD PTR gBgOffsetsHBlankPrimary[rip]
	shr	r9b
	movzx	r9d, r9b
	or	r9d, -2147483648
	call	DmaSet
	cmp	BYTE PTR sLastCalledVblankFuncId[rip], -1
	jne	.L111
.L180:
	call	ProcessOamBuffers
	mov	r9d, -2147483456
	mov	ecx, 3
	mov	r8, QWORD PTR .refptr.OAM[rip]
	lea	rdx, gOamBuffer[rip]
	call	DmaSet
	mov	r9d, -2147483456
	mov	ecx, 3
	mov	rax, QWORD PTR .refptr.OAM[rip]
	lea	rdx, gOamBuffer[rip+384]
	lea	r8, 384[rax]
	call	DmaSet
	mov	r9d, -2147483456
	mov	ecx, 3
	mov	rax, QWORD PTR .refptr.OAM[rip]
	lea	rdx, gOamBuffer[rip+768]
	lea	r8, 768[rax]
	call	DmaSet
	mov	r9d, -2147483456
	mov	ecx, 3
	mov	rax, QWORD PTR .refptr.OAM[rip]
	lea	rdx, gOamBuffer[rip+1152]
	lea	r8, 1152[rax]
	call	DmaSet
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L177:
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2080374656
	mov	ecx, 3
	lea	rdx, gObjPalette[rip]
	lea	r8, 512[rax]
	call	DmaSet
	xor	DWORD PTR gFlags[rip], 2
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L181:
	mov	rdx, QWORD PTR 48[rsp]
	mov	r9d, -2063597560
	lea	r8, gVBlankIntrs[rip]
	mov	ecx, 3
	mov	DWORD PTR 84[rsp], 0
	call	DmaSet
	movzx	eax, BYTE PTR gNumVBlankCallbacks[rip]
	test	al, al
	je	.L114
	lea	r9, [rax+rax]
	lea	r8, gVBlankIntrs[rip]
	mov	ecx, 3
	or	r9d, -2080374784
	lea	rdx, gVBlankCallbacks[rip]
	call	DmaSet
	movzx	eax, BYTE PTR gNumVBlankCallbacks[rip]
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L176:
	mov	r8, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2080374656
	mov	ecx, 3
	lea	rdx, gBgPalette[rip]
	call	DmaSet
	mov	eax, DWORD PTR gFlags[rip]
	xor	eax, 1
	mov	DWORD PTR gFlags[rip], eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L168:
	mov	rdx, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 128
	lea	rcx, gBgPalette[rip]
	call	CpuFastSet
	mov	eax, DWORD PTR gFlags[rip]
	xor	eax, 1
	mov	DWORD PTR gFlags[rip], eax
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L174:
	xor	r8d, r8d
	lea	rdx, gMultiSioRecv[rip]
	lea	rcx, gMultiSioSend[rip]
	call	MultiSioMain
	mov	DWORD PTR gMultiSioStatusFlags[rip], eax
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L183:
	lea	r9, [rax+rax]
	lea	r8, gHBlankIntrs[rip]
	mov	ecx, 3
	or	r9d, -2080374784
	lea	rdx, gHBlankCallbacks[rip]
	call	DmaSet
	movzx	eax, BYTE PTR gNumHBlankCallbacks[rip]
	jmp	.L108
.L175:
	mov	QWORD PTR gBgOffsetsHBlankPrimary[rip], rcx
	mov	QWORD PTR gBgOffsetsHBlankSecondary[rip], rdx
	jmp	.L102
.L182:
	mov	QWORD PTR gBgOffsetsHBlankPrimary[rip], rcx
	mov	QWORD PTR gBgOffsetsHBlankSecondary[rip], rdx
	jmp	.L118
	.seh_endproc
	.globl	sVblankFuncs
	.section .rdata,"dr"
	.align 32
sVblankFuncs:
	.quad	ProcessVramGraphicsCopyQueue
	.quad	sub_8004010
	.quad	sub_80039E4
	.quad	sub_8002B20
	.globl	gIntrTableTemplate
	.align 32
gIntrTableTemplate:
	.quad	MultiSioIntr
	.quad	VBlankIntr
	.quad	HBlankIntr
	.quad	VCountIntr
	.quad	Timer0Intr
	.quad	Timer1Intr
	.quad	Timer2Intr
	.quad	Dma0Intr
	.quad	Dma1Intr
	.quad	Dma2Intr
	.quad	Dma3Intr
	.quad	KeypadIntr
	.quad	GamepakIntr
	.quad	0
	.globl	gPseudoRandom
	.bss
	.align 4
gPseudoRandom:
	.space 4
	.globl	gExecSoundMain
	.align 4
gExecSoundMain:
	.space 1
	.globl	gInputPlaybackData
	.align 8
gInputPlaybackData:
	.space 8
	.globl	gVBlankIntrs
	.align 16
gVBlankIntrs:
	.space 32
	.globl	gUnknown_03005398
	.align 4
gUnknown_03005398:
	.space 2
	.globl	gUnknown_03005394
	.align 4
gUnknown_03005394:
	.space 2
	.globl	gBgSpritesCount
	.align 4
gBgSpritesCount:
	.space 1
	.globl	gVramHeapState
	.align 32
gVramHeapState:
	.space 896
	.globl	gOamBuffer
	.align 16
gOamBuffer:
	.space 1536
	.globl	gBgSprites_Unknown1
gBgSprites_Unknown1:
	.space 4
	.globl	gOamMallocOrders_EndIndex
	.align 16
gOamMallocOrders_EndIndex:
	.space 32
	.globl	gVramGraphicsCopyCursor
	.align 4
gVramGraphicsCopyCursor:
	.space 1
	.globl	gUnknown_03004D58
	.align 4
gUnknown_03004D58:
	.space 2
	.globl	gBgOffsetsPrimary
	.align 8
gBgOffsetsPrimary:
	.space 8
	.globl	gNumVBlankCallbacks
	.align 4
gNumVBlankCallbacks:
	.space 1
	.globl	gBgSprites
	.align 16
gBgSprites:
	.space 128
	.globl	gIwramHeap
	.align 32
gIwramHeap:
	.space 17416
	.globl	gHBlankIntrs
	.align 16
gHBlankIntrs:
	.space 32
	.globl	gBackgroundsCopyQueueCursor
	.align 4
gBackgroundsCopyQueueCursor:
	.space 1
	.globl	gOamFirstPausedIndex
	.align 4
gOamFirstPausedIndex:
	.space 1
	.globl	gPressedKeys
	.align 4
gPressedKeys:
	.space 2
	.globl	gMultiBootParam
	.align 8
gMultiBootParam:
	.space 104
	.globl	gUnknown_03002A8C
	.align 4
gUnknown_03002A8C:
	.space 2
	.globl	gPrevInput
	.align 4
gPrevInput:
	.space 2
	.globl	gVramGraphicsCopyQueueIndex
	.align 4
gVramGraphicsCopyQueueIndex:
	.space 1
	.globl	gHBlankCopySize
	.align 4
gHBlankCopySize:
	.space 1
	.globl	gBgPalette
	.align 16
gBgPalette:
	.space 512
	.globl	gBackgroundsCopyQueueIndex
gBackgroundsCopyQueueIndex:
	.space 1
	.globl	gHBlankCopyTarget
	.align 8
gHBlankCopyTarget:
	.space 8
	.globl	gVCountSetting
gVCountSetting:
	.space 1
	.globl	gMultiSioSend
	.align 8
gMultiSioSend:
	.space 20
	.globl	gKeysContinuedRepeatIntervals
	.align 16
gKeysContinuedRepeatIntervals:
	.space 10
	.globl	gDispCnt
	.align 2
gDispCnt:
	.space 2
	.globl	gBgScrollRegs
	.align 16
gBgScrollRegs:
	.space 16
	.globl	gUnknown_03002820
	.align 2
gUnknown_03002820:
	.space 2
	.globl	gVramGraphicsCopyQueue
	.align 16
gVramGraphicsCopyQueue:
	.space 256
	.globl	gVramGraphicsCopyQueueBuffer
	.align 32
gVramGraphicsCopyQueueBuffer:
	.space 768
	.globl	gRefSpriteTables
	.align 8
gRefSpriteTables:
	.space 8
	.globl	gFlagsPreVBlank
	.align 4
gFlagsPreVBlank:
	.space 4
	.globl	gOamMallocCopiedOrder
	.align 16
gOamMallocCopiedOrder:
	.space 128
	.globl	gReleasedKeys
	.align 4
gReleasedKeys:
	.space 2
	.globl	gKeysFirstRepeatIntervals
	.align 16
gKeysFirstRepeatIntervals:
	.space 10
	.globl	sLastCalledVblankFuncId
sLastCalledVblankFuncId:
	.space 1
	.globl	gCurTask
	.align 8
gCurTask:
	.space 8
	.globl	gHBlankCallbacks
	.align 16
gHBlankCallbacks:
	.space 32
	.globl	gMosaicReg
	.align 2
gMosaicReg:
	.space 2
	.globl	gOamMallocBuffer
	.align 16
gOamMallocBuffer:
	.space 1536
	.globl	gBgOffsetsSecondary
	.align 8
gBgOffsetsSecondary:
	.space 8
	.globl	gNextTask
	.align 8
gNextTask:
	.space 8
	.globl	gRepeatedKeys
	.align 4
gRepeatedKeys:
	.space 2
	.globl	gBgCntRegs
	.align 8
gBgCntRegs:
	.space 8
	.globl	gBgOffsetsHBlankSecondary
	.align 8
gBgOffsetsHBlankSecondary:
	.space 8
	.globl	gRepeatedKeysTestCounter
	.align 16
gRepeatedKeysTestCounter:
	.space 10
	.globl	gInput
	.align 2
gInput:
	.space 2
	.globl	gBgSprites_Unknown2
	.align 16
gBgSprites_Unknown2:
	.space 16
	.globl	gNumTasks
	.align 4
gNumTasks:
	.space 4
	.globl	gWinRegs
	.align 16
gWinRegs:
	.space 24
	.globl	gFrameCount
	.align 4
gFrameCount:
	.space 4
	.globl	gTilemapsRef
	.align 8
gTilemapsRef:
	.space 8
	.globl	gObjPalette
	.align 32
gObjPalette:
	.space 512
	.globl	gBgOffsetsBuffer
	.align 32
gBgOffsetsBuffer:
	.space 3840
	.globl	gTaskPtrs
	.align 16
gTaskPtrs:
	.space 1024
	.globl	gMultiSioEnabled
gMultiSioEnabled:
	.space 1
	.globl	gMultiSioStatusFlags
	.align 4
gMultiSioStatusFlags:
	.space 4
	.globl	gUnknown_0300194C
	.align 4
gUnknown_0300194C:
	.space 2
	.globl	gNumVBlankIntrs
	.align 4
gNumVBlankIntrs:
	.space 1
	.globl	gUnknown_03001944
	.align 4
gUnknown_03001944:
	.space 2
	.globl	gVramHeapStartAddr
	.align 8
gVramHeapStartAddr:
	.space 8
	.globl	gBgAffineRegs
	.align 16
gBgAffineRegs:
	.space 32
	.globl	gEmptyTask
	.align 16
gEmptyTask:
	.space 72
	.globl	gOamFreeIndex
gOamFreeIndex:
	.space 1
	.globl	gBldRegs
	.align 8
gBldRegs:
	.space 6
	.globl	gNumHBlankIntrs
gNumHBlankIntrs:
	.space 1
	.globl	gMultiSioRecv
	.align 32
gMultiSioRecv:
	.space 80
	.globl	gNumHBlankCallbacks
	.align 4
gNumHBlankCallbacks:
	.space 1
	.globl	gVramHeapMaxTileSlots
	.align 2
gVramHeapMaxTileSlots:
	.space 2
	.globl	gBgOffsetsHBlankPrimary
	.align 8
gBgOffsetsHBlankPrimary:
	.space 8
	.globl	gPhysicalInput
	.align 2
gPhysicalInput:
	.space 2
	.globl	gVBlankCallbacks
	.align 32
gVBlankCallbacks:
	.space 32
	.globl	gOamMallocOrders_StartIndex
	.align 16
gOamMallocOrders_StartIndex:
	.space 32
	.globl	gFlags
	.align 4
gFlags:
	.space 4
	.globl	gBackgroundsCopyQueue
	.align 16
gBackgroundsCopyQueue:
	.space 128
	.globl	gSpriteOffset
	.align 4
gSpriteOffset:
	.space 4
	.globl	gUnknown_030017F0
	.align 4
gUnknown_030017F0:
	.space 2
	.globl	gTasks
	.align 32
gTasks:
	.space 9216
	.globl	gIntrMainBuf
	.align 32
gIntrMainBuf:
	.space 512
	.globl	gIntrTable
	.align 32
gIntrTable:
	.space 128
	.section .rdata,"dr"
	.align 8
.LC0:
	.word	256
	.word	0
	.word	0
	.word	256
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DmaStop;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSync;	.scl	2;	.type	32;	.endef
	.def	DmaWait;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOff;	.scl	2;	.type	32;	.endef
	.def	SoftReset;	.scl	2;	.type	32;	.endef
	.def	m4aSoundInit;	.scl	2;	.type	32;	.endef
	.def	m4aSoundMode;	.scl	2;	.type	32;	.endef
	.def	TasksInit;	.scl	2;	.type	32;	.endef
	.def	EwramInitHeap;	.scl	2;	.type	32;	.endef
	.def	VramResetHeapState;	.scl	2;	.type	32;	.endef
	.def	IdentifyFlash;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	SetFlashTimerIntr;	.scl	2;	.type	32;	.endef
	.def	InputRecorderWrite;	.scl	2;	.type	32;	.endef
	.def	InputRecorderRead;	.scl	2;	.type	32;	.endef
	.def	VBlankIntrWait;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.def	m4aSoundMain;	.scl	2;	.type	32;	.endef
	.def	TasksExec;	.scl	2;	.type	32;	.endef
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.def	sub_8004010;	.scl	2;	.type	32;	.endef
	.def	sub_80039E4;	.scl	2;	.type	32;	.endef
	.def	sub_8002B20;	.scl	2;	.type	32;	.endef
	.def	ProcessOamBuffers;	.scl	2;	.type	32;	.endef
	.def	MultiSioMain;	.scl	2;	.type	32;	.endef
	.def	MultiSioIntr;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.IntrMain, "dr"
	.globl	.refptr.IntrMain
	.linkonce	discard
.refptr.IntrMain:
	.quad	IntrMain
	.section	.rdata$.refptr.INTR_VECTOR, "dr"
	.globl	.refptr.INTR_VECTOR
	.linkonce	discard
.refptr.INTR_VECTOR:
	.quad	INTR_VECTOR
	.section	.rdata$.refptr.gInputRecorder, "dr"
	.globl	.refptr.gInputRecorder
	.linkonce	discard
.refptr.gInputRecorder:
	.quad	gInputRecorder
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.OAM, "dr"
	.globl	.refptr.OAM
	.linkonce	discard
.refptr.OAM:
	.quad	OAM
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.EWRAM_START, "dr"
	.globl	.refptr.EWRAM_START
	.linkonce	discard
.refptr.EWRAM_START:
	.quad	EWRAM_START
	.section	.rdata$.refptr.INTR_CHECK, "dr"
	.globl	.refptr.INTR_CHECK
	.linkonce	discard
.refptr.INTR_CHECK:
	.quad	INTR_CHECK
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
