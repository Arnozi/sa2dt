	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	GenerateNewSaveGame;	.scl	3;	.type	32;	.endef
	.seh_proc	GenerateNewSaveGame
GenerateNewSaveGame:
	push	rdi
	.seh_pushreg	rdi
	.seh_endprologue
	xor	eax, eax
	lea	rdi, 8[rcx]
	mov	r8, rcx
	mov	QWORD PTR [rcx], 0
	and	rdi, -8
	lea	rdx, 680[r8]
	mov	QWORD PTR 876[rcx], 0
	sub	rcx, rdi
	add	ecx, 884
	shr	ecx, 3
	rep stosq
	mov	eax, -1
	mov	BYTE PTR 19[r8], 1
	mov	BYTE PTR 6[r8], 2
	mov	DWORD PTR 44[r8], 131073
	mov	WORD PTR 32[r8], ax
	mov	eax, 256
	mov	WORD PTR 48[r8], ax
	lea	rax, 50[r8]
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r10d, -29536
	mov	r11d, -29536
	mov	edi, -29536
	add	rax, 6
	mov	WORD PTR -6[rax], r10w
	mov	WORD PTR -4[rax], r11w
	mov	WORD PTR -2[rax], di
	cmp	rdx, rax
	jne	.L2
	xor	r9d, r9d
	mov	BYTE PTR 30[r8], 0
	lea	rax, 880[r8]
	mov	WORD PTR 28[r8], r9w
	.p2align 4,,10
	.p2align 3
.L3:
	mov	ecx, -1
	mov	DWORD PTR 16[rdx], 0
	add	rdx, 20
	mov	WORD PTR -16[rdx], cx
	cmp	rax, rdx
	jne	.L3
	xor	eax, eax
	mov	BYTE PTR 27[r8], 0
	mov	DWORD PTR 880[r8], 0
	mov	WORD PTR 25[r8], ax
	mov	DWORD PTR 21[r8], 0
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	EraseSaveSector;	.scl	3;	.type	32;	.endef
	.seh_proc	EraseSaveSector
EraseSaveSector:
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
	mov	esi, ecx
	call	m4aMPlayAllStop
	call	m4aSoundVSyncOff
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	xor	eax, eax
	xor	edx, edx
	mov	rdi, QWORD PTR .refptr.gFlags[rip]
	xor	ecx, ecx
	movzx	r13d, WORD PTR 512[rbx]
	movzx	r12d, WORD PTR 520[rbx]
	movzx	ebp, WORD PTR 4[rbx]
	mov	WORD PTR 512[rbx], ax
	mov	eax, DWORD PTR [rdi]
	mov	WORD PTR 520[rbx], dx
	mov	WORD PTR 4[rbx], cx
	xor	ecx, ecx
	and	eax, -5
	or	ah, -128
	mov	DWORD PTR [rdi], eax
	call	DmaStop
	mov	ecx, 1
	call	DmaStop
	mov	ecx, 2
	call	DmaStop
	mov	ecx, 3
	call	DmaStop
	mov	rax, QWORD PTR .refptr.EraseFlashSector[rip]
	movzx	ecx, si
	call	[QWORD PTR [rax]]
	mov	WORD PTR 512[rbx], r13w
	mov	esi, eax
	mov	WORD PTR 520[rbx], r12w
	mov	WORD PTR 4[rbx], bp
	call	m4aSoundVSyncOn
	and	DWORD PTR [rdi], -32769
	mov	eax, esi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	WriteToSaveSector;	.scl	3;	.type	32;	.endef
	.seh_proc	WriteToSaveSector
WriteToSaveSector:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, rcx
	mov	esi, edx
	call	m4aMPlayAllStop
	call	m4aSoundVSyncOff
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	xor	eax, eax
	xor	edx, edx
	mov	rdi, QWORD PTR .refptr.gFlags[rip]
	xor	ecx, ecx
	movzx	r14d, WORD PTR 512[rbx]
	movzx	r13d, WORD PTR 520[rbx]
	movzx	r12d, WORD PTR 4[rbx]
	mov	WORD PTR 512[rbx], ax
	mov	eax, DWORD PTR [rdi]
	mov	WORD PTR 520[rbx], dx
	mov	WORD PTR 4[rbx], cx
	xor	ecx, ecx
	and	eax, -5
	or	ah, -128
	mov	DWORD PTR [rdi], eax
	call	DmaStop
	mov	ecx, 1
	call	DmaStop
	mov	ecx, 2
	call	DmaStop
	mov	ecx, 3
	call	DmaStop
	movzx	ecx, si
	mov	r8d, 888
	mov	rdx, rbp
	call	ProgramFlashSectorAndVerifyNBytes
	mov	WORD PTR 512[rbx], r14w
	mov	esi, eax
	mov	WORD PTR 520[rbx], r13w
	mov	WORD PTR 4[rbx], r12w
	call	m4aSoundVSyncOn
	and	DWORD PTR [rdi], -32769
	mov	eax, esi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.def	PackSaveSectorData.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	PackSaveSectorData.isra.0
PackSaveSectorData.isra.0:
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
	xor	eax, eax
	lea	rdi, 8[rcx]
	mov	rbx, rcx
	mov	rbp, rdx
	mov	edx, DWORD PTR 4[rcx]
	mov	QWORD PTR 880[rcx], 0
	and	rdi, -8
	sub	rcx, rdi
	add	edx, 1
	add	ecx, 888
	shr	ecx, 3
	rep stosq
	mov	DWORD PTR [rbx], 1162299213
	mov	DWORD PTR 4[rbx], edx
	mov	eax, DWORD PTR 0[rbp]
	mov	DWORD PTR 8[rbx], eax
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 12[rbx], rax
	mov	eax, DWORD PTR 40[rbp]
	mov	DWORD PTR 20[rbx], eax
	movzx	eax, BYTE PTR 6[rbp]
	mov	BYTE PTR 24[rbx], al
	cmp	BYTE PTR 4[rbp], 0
	je	.L12
	mov	BYTE PTR 25[rbx], 1
.L12:
	cmp	BYTE PTR 5[rbp], 0
	je	.L13
	or	BYTE PTR 25[rbx], 2
.L13:
	cmp	BYTE PTR 25[rbp], 0
	je	.L14
	mov	BYTE PTR 26[rbx], 1
.L14:
	movzx	eax, BYTE PTR 26[rbp]
	test	al, al
	je	.L15
	add	eax, eax
	and	eax, 6
	or	BYTE PTR 26[rbx], al
.L15:
	cmp	BYTE PTR 27[rbp], 0
	je	.L16
	or	BYTE PTR 26[rbx], 8
.L16:
	cmp	BYTE PTR 21[rbp], 0
	je	.L17
	or	BYTE PTR 26[rbx], 16
.L17:
	cmp	BYTE PTR 22[rbp], 0
	je	.L18
	or	BYTE PTR 26[rbx], 32
.L18:
	cmp	BYTE PTR 23[rbp], 0
	je	.L19
	or	BYTE PTR 26[rbx], 64
.L19:
	cmp	BYTE PTR 24[rbp], 0
	je	.L20
	or	BYTE PTR 26[rbx], -128
.L20:
	movzx	eax, BYTE PTR 19[rbp]
	test	al, 2
	je	.L21
	mov	BYTE PTR 27[rbx], 1
.L21:
	test	al, 4
	je	.L22
	or	BYTE PTR 27[rbx], 2
.L22:
	test	al, 8
	je	.L23
	or	BYTE PTR 27[rbx], 4
.L23:
	test	al, 16
	je	.L24
	or	BYTE PTR 27[rbx], 8
.L24:
	cmp	BYTE PTR 17[rbp], 0
	je	.L25
	or	BYTE PTR 27[rbx], 32
.L25:
	cmp	BYTE PTR 18[rbp], 0
	je	.L26
	or	BYTE PTR 27[rbx], 16
.L26:
	cmp	BYTE PTR 20[rbp], 0
	je	.L27
	or	BYTE PTR 27[rbx], 64
.L27:
	movzx	eax, WORD PTR 44[rbp]
	cmp	ax, 2
	je	.L28
	cmp	ax, 256
	je	.L29
	cmp	ax, 1
	je	.L30
.L31:
	movzx	eax, WORD PTR 46[rbp]
	cmp	ax, 2
	je	.L32
.L58:
	cmp	ax, 256
	je	.L33
	cmp	ax, 1
	je	.L34
.L35:
	movzx	eax, WORD PTR 48[rbp]
	cmp	ax, 2
	je	.L36
.L57:
	cmp	ax, 256
	je	.L37
	cmp	ax, 1
	je	.L38
.L39:
	mov	rax, QWORD PTR 7[rbp]
	lea	rdi, 52[rbx]
	lea	rsi, 50[rbp]
	and	rdi, -8
	mov	QWORD PTR 31[rbx], rax
	movzx	eax, BYTE PTR 29[rbp]
	movzx	edx, BYTE PTR 28[rbp]
	sal	eax, 8
	or	eax, edx
	movzx	edx, BYTE PTR 16[rbp]
	sal	eax, 8
	or	eax, edx
	movzx	edx, BYTE PTR 15[rbp]
	sal	eax, 8
	or	eax, edx
	mov	DWORD PTR 39[rbx], eax
	movzx	eax, BYTE PTR 30[rbp]
	mov	BYTE PTR 43[rbx], al
	lea	rax, 44[rbx]
	mov	rdx, QWORD PTR 50[rbp]
	sub	rax, rdi
	mov	QWORD PTR 44[rbx], rdx
	sub	rsi, rax
	mov	rcx, QWORD PTR 672[rbp]
	add	eax, 630
	shr	eax, 3
	mov	QWORD PTR 666[rbx], rcx
	mov	ecx, eax
	rep movsq
	movdqu	xmm2, XMMWORD PTR 680[rbp]
	movups	XMMWORD PTR 676[rbx], xmm2
	movdqu	xmm3, XMMWORD PTR 696[rbp]
	movups	XMMWORD PTR 692[rbx], xmm3
	movdqu	xmm4, XMMWORD PTR 712[rbp]
	movups	XMMWORD PTR 708[rbx], xmm4
	movdqu	xmm5, XMMWORD PTR 728[rbp]
	movups	XMMWORD PTR 724[rbx], xmm5
	movdqu	xmm1, XMMWORD PTR 744[rbp]
	movups	XMMWORD PTR 740[rbx], xmm1
	movdqu	xmm2, XMMWORD PTR 760[rbp]
	movups	XMMWORD PTR 756[rbx], xmm2
	movdqu	xmm3, XMMWORD PTR 776[rbp]
	movups	XMMWORD PTR 772[rbx], xmm3
	movdqu	xmm4, XMMWORD PTR 792[rbp]
	movups	XMMWORD PTR 788[rbx], xmm4
	movdqu	xmm5, XMMWORD PTR 808[rbp]
	movups	XMMWORD PTR 804[rbx], xmm5
	movdqu	xmm1, XMMWORD PTR 824[rbp]
	movups	XMMWORD PTR 820[rbx], xmm1
	movdqu	xmm2, XMMWORD PTR 840[rbp]
	movups	XMMWORD PTR 836[rbx], xmm2
	movdqu	xmm3, XMMWORD PTR 856[rbp]
	movups	XMMWORD PTR 852[rbx], xmm3
	mov	rdx, QWORD PTR 872[rbp]
	mov	QWORD PTR 868[rbx], rdx
	call	Random
	mov	esi, eax
	call	Random
	sal	esi, 16
	lea	rcx, 888[rbx]
	xor	edx, edx
	movzx	eax, ax
	movd	xmm1, DWORD PTR 880[rbp]
	or	esi, eax
	mov	rax, rbx
	movd	xmm0, esi
	punpckldq	xmm0, xmm1
	movq	QWORD PTR 876[rbx], xmm0
	.p2align 4,,10
	.p2align 3
.L40:
	add	edx, DWORD PTR [rax]
	add	rax, 8
	cmp	rax, rcx
	jne	.L40
	mov	DWORD PTR 884[rbx], edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L38:
	mov	BYTE PTR 30[rbx], 1
	jmp	.L39
.L34:
	mov	BYTE PTR 29[rbx], 1
	movzx	eax, WORD PTR 48[rbp]
	cmp	ax, 2
	jne	.L57
.L36:
	mov	BYTE PTR 30[rbx], 2
	jmp	.L39
.L30:
	mov	BYTE PTR 28[rbx], 1
	movzx	eax, WORD PTR 46[rbp]
	cmp	ax, 2
	jne	.L58
.L32:
	mov	BYTE PTR 29[rbx], 2
	jmp	.L35
.L37:
	mov	BYTE PTR 30[rbx], 4
	jmp	.L39
.L33:
	mov	BYTE PTR 29[rbx], 4
	jmp	.L35
.L29:
	mov	BYTE PTR 28[rbx], 4
	jmp	.L31
.L28:
	mov	BYTE PTR 28[rbx], 2
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	InsertMultiplayerProfile
	.def	InsertMultiplayerProfile;	.scl	2;	.type	32;	.endef
	.seh_proc	InsertMultiplayerProfile
InsertMultiplayerProfile:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rdi, QWORD PTR gLoadedSaveGame[rip]
	mov	esi, ecx
	mov	rbx, rdx
	lea	rdx, 684[rdi]
	xor	ecx, ecx
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L60:
	add	ecx, 1
	add	rdx, 20
	cmp	cx, 10
	je	.L70
.L65:
	cmp	DWORD PTR -4[rdx], esi
	jne	.L60
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L61:
	movzx	r9d, WORD PTR [rdx+rax]
	cmp	WORD PTR [rbx+rax], r9w
	jne	.L60
	add	rax, 2
	cmp	rax, 12
	jne	.L61
	movdqu	xmm0, XMMWORD PTR -4[rdx]
	mov	eax, DWORD PTR 12[rdx]
	movups	XMMWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 48[rsp], eax
	test	cx, cx
	je	.L64
	movsx	rax, cx
	lea	r8, [rax+rax*4]
	lea	eax, -1[rcx]
	movsx	rax, ax
	sal	r8, 2
	imul	rax, rax, -20
	lea	rdx, 660[rax+r8]
	lea	rcx, 680[rax+r8]
	add	rdx, rdi
	add	rcx, rdi
	call	memmove
.L64:
	movdqu	xmm1, XMMWORD PTR 32[rsp]
	mov	eax, DWORD PTR 48[rsp]
	movups	XMMWORD PTR 680[rdi], xmm1
	mov	DWORD PTR 696[rdi], eax
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L70:
	lea	rdx, 680[rdi]
	lea	rcx, 700[rdi]
	mov	r8d, 180
	call	memmove
	mov	DWORD PTR 680[rdi], esi
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L66:
	movzx	edx, WORD PTR [rbx+rax]
	mov	WORD PTR 684[rdi+rax], dx
	add	rax, 2
	cmp	rax, 12
	jne	.L66
	mov	DWORD PTR 696[rdi], 1
.L59:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	RecordOwnMultiplayerResult
	.def	RecordOwnMultiplayerResult;	.scl	2;	.type	32;	.endef
	.seh_proc	RecordOwnMultiplayerResult
RecordOwnMultiplayerResult:
	.seh_endprologue
	cmp	cx, 1
	je	.L72
	cmp	cx, 2
	je	.L73
	test	cx, cx
	jne	.L71
	mov	rdx, QWORD PTR gLoadedSaveGame[rip]
	movzx	eax, BYTE PTR 28[rdx]
	cmp	al, 98
	ja	.L71
	add	eax, 1
	mov	BYTE PTR 28[rdx], al
.L71:
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rdx, QWORD PTR gLoadedSaveGame[rip]
	movzx	eax, BYTE PTR 30[rdx]
	cmp	al, 98
	ja	.L71
	add	eax, 1
	mov	BYTE PTR 30[rdx], al
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	mov	rdx, QWORD PTR gLoadedSaveGame[rip]
	movzx	eax, BYTE PTR 29[rdx]
	cmp	al, 98
	ja	.L71
	add	eax, 1
	mov	BYTE PTR 29[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	RecordMultiplayerResult
	.def	RecordMultiplayerResult;	.scl	2;	.type	32;	.endef
	.seh_proc	RecordMultiplayerResult
RecordMultiplayerResult:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11, QWORD PTR gLoadedSaveGame[rip]
	xor	r10d, r10d
	lea	r9, 684[r11]
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L76:
	add	r10, 1
	add	r9, 20
	cmp	r10, 10
	je	.L75
.L81:
	cmp	DWORD PTR -4[r9], ecx
	jne	.L76
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L77:
	movzx	ebx, WORD PTR [r9+rax]
	cmp	WORD PTR [rdx+rax], bx
	jne	.L76
	add	rax, 2
	cmp	rax, 12
	jne	.L77
	movsx	rax, r10d
	cmp	r8w, 1
	je	.L78
	cmp	r8w, 2
	je	.L79
	test	r8w, r8w
	jne	.L75
	lea	rax, [rax+rax*4]
	lea	rdx, [r11+rax*4]
	movzx	eax, BYTE PTR 697[rdx]
	cmp	al, 98
	ja	.L75
	add	eax, 1
	mov	BYTE PTR 697[rdx], al
.L75:
	pop	rbx
	ret
.L79:
	lea	rax, [rax+rax*4]
	lea	rdx, [r11+rax*4]
	movzx	eax, BYTE PTR 699[rdx]
	cmp	al, 98
	ja	.L75
	add	eax, 1
	mov	BYTE PTR 699[rdx], al
	pop	rbx
	ret
.L78:
	movsx	r10, r10d
	lea	rax, [r10+r10*4]
	lea	rdx, [r11+rax*4]
	movzx	eax, BYTE PTR 698[rdx]
	cmp	al, 98
	ja	.L75
	add	eax, 1
	mov	BYTE PTR 698[rdx], al
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	SaveInit
	.def	SaveInit;	.scl	2;	.type	32;	.endef
	.seh_proc	SaveInit
SaveInit:
	push	rdi
	.seh_pushreg	rdi
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ecx, 884
	call	EwramMalloc
	mov	ecx, 884
	mov	QWORD PTR gLoadedSaveGame[rip], rax
	call	EwramMalloc
	mov	ecx, 888
	mov	QWORD PTR gLastWrittenSaveGame[rip], rax
	call	EwramMalloc
	mov	rcx, QWORD PTR gLoadedSaveGame[rip]
	mov	QWORD PTR gSaveSectorDataBuffer[rip], rax
	call	GenerateNewSaveGame
	mov	rcx, QWORD PTR gLastWrittenSaveGame[rip]
	call	GenerateNewSaveGame
	mov	r8, QWORD PTR gSaveSectorDataBuffer[rip]
	xor	eax, eax
	lea	rdi, 8[r8]
	mov	rcx, r8
	mov	QWORD PTR [r8], 0
	lea	rdx, 674[r8]
	mov	QWORD PTR 880[r8], 0
	and	rdi, -8
	sub	rcx, rdi
	add	ecx, 888
	shr	ecx, 3
	rep stosq
	mov	edi, -1
	mov	DWORD PTR [r8], 1162299213
	mov	eax, 513
	mov	WORD PTR 12[r8], di
	mov	BYTE PTR 24[r8], 2
	mov	BYTE PTR 30[r8], 4
	mov	WORD PTR 28[r8], ax
	lea	rax, 44[r8]
	.p2align 4,,10
	.p2align 3
.L85:
	mov	r9d, -29536
	mov	r10d, -29536
	mov	r11d, -29536
	add	rax, 6
	mov	WORD PTR -6[rax], r9w
	mov	WORD PTR -4[rax], r10w
	mov	WORD PTR -2[rax], r11w
	cmp	rax, rdx
	jne	.L85
	lea	rax, 676[r8]
	lea	rdx, 876[r8]
	.p2align 4,,10
	.p2align 3
.L86:
	mov	ecx, -1
	mov	DWORD PTR 16[rax], 0
	add	rax, 20
	mov	WORD PTR -16[rax], cx
	cmp	rax, rdx
	jne	.L86
	mov	DWORD PTR 880[r8], 0
	add	rsp, 32
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	SaveGameExists
	.def	SaveGameExists;	.scl	2;	.type	32;	.endef
	.seh_proc	SaveGameExists
SaveGameExists:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 168
	.seh_stackalloc	168
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	ebx, DWORD PTR [rax]
	and	ebx, 256
	jne	.L92
	lea	rsi, 32[rsp]
	.p2align 4,,10
	.p2align 3
.L94:
	xor	edx, edx
	mov	r9d, 8
	mov	r8, rsi
	mov	ecx, ebx
	call	ReadFlash
	cmp	DWORD PTR [rsi], 1162299213
	je	.L95
	add	ebx, 1
	add	rsi, 8
	cmp	ebx, 10
	jne	.L94
.L92:
	xor	eax, eax
	add	rsp, 168
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	mov	eax, 1
	add	rsp, 168
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	LoadSaveGame
	.def	LoadSaveGame;	.scl	2;	.type	32;	.endef
	.seh_proc	LoadSaveGame
LoadSaveGame:
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
	sub	rsp, 152
	.seh_stackalloc	152
	.seh_endprologue
	mov	rbx, QWORD PTR gLoadedSaveGame[rip]
	mov	r12, QWORD PTR gLastWrittenSaveGame[rip]
	mov	rbp, QWORD PTR gSaveSectorDataBuffer[rip]
	mov	rax, QWORD PTR [rbx]
	lea	rsi, 892[r12]
	mov	QWORD PTR [r12], rax
	lea	rax, 892[rbx]
	mov	QWORD PTR 48[rsp], rsi
	mov	rsi, rbx
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 876[rbx]
	mov	QWORD PTR 876[r12], rax
	lea	rax, 8[r12]
	mov	rdi, rax
	mov	QWORD PTR 56[rsp], rax
	mov	rax, r12
	and	rdi, -8
	sub	rax, rdi
	sub	rsi, rax
	add	eax, 884
	shr	eax, 3
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	rep movsq
	mov	eax, DWORD PTR [rax]
	test	ah, 1
	je	.L141
.L110:
	xor	eax, eax
.L97:
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L141:
	xor	edi, edi
	xor	r15d, r15d
	xor	esi, esi
	mov	r14d, -1
	lea	r13, 64[rsp]
	.p2align 4,,10
	.p2align 3
.L98:
	xor	edx, edx
	mov	r9d, 8
	lea	r8, 0[r13+r15*8]
	mov	ecx, r15d
	call	ReadFlash
	cmp	DWORD PTR 0[r13+r15*8], 1162299213
	jne	.L100
	mov	edx, DWORD PTR 4[r13+r15*8]
	cmp	edi, edx
	cmovb	esi, r15d
	cmovb	edi, edx
	cmp	r14d, edx
	cmova	r14d, edx
.L100:
	add	r15, 1
	cmp	r15, 10
	jne	.L98
	test	r14d, r14d
	jne	.L102
	xor	edx, edx
	jmp	.L105
.L103:
	add	rdx, 1
	cmp	rdx, 10
	je	.L102
.L105:
	cmp	r14d, 65535
	ja	.L103
	mov	ecx, r14d
	mov	r14d, DWORD PTR 4[r13+rdx*8]
	mov	r8d, esi
	mov	esi, edx
	cmp	ecx, r14d
	jb	.L103
.L187:
	add	rdx, 1
	cmp	rdx, 10
	je	.L142
	mov	r14d, DWORD PTR 4[r13+rdx*8]
	mov	esi, edx
	cmp	ecx, r14d
	jnb	.L187
	add	rdx, 1
	cmp	rdx, 10
	jne	.L105
.L102:
	mov	edi, 10
	lea	r14, 888[rbp]
.L109:
	xor	edx, edx
	movzx	ecx, si
	mov	r9d, 888
	mov	r8, rbp
	call	ReadFlash
	movsx	r15d, si
	mov	rax, rbp
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L106:
	add	edx, DWORD PTR [rax]
	add	rax, 8
	cmp	r14, rax
	jne	.L106
	cmp	edx, DWORD PTR 884[rbp]
	jne	.L188
	lea	rdi, 8[rbx]
	mov	rcx, rbx
	mov	QWORD PTR [rbx], 0
	mov	rax, QWORD PTR 40[rsp]
	and	rdi, -8
	sub	rcx, rdi
	mov	QWORD PTR -16[rax], 0
	xor	eax, eax
	add	ecx, 884
	shr	ecx, 3
	rep stosq
	mov	rax, QWORD PTR 12[rbp]
	mov	QWORD PTR 32[rbx], rax
	mov	eax, DWORD PTR 20[rbp]
	mov	DWORD PTR 40[rbx], eax
	mov	eax, DWORD PTR 8[rbp]
	mov	DWORD PTR [rbx], eax
	movzx	eax, BYTE PTR 24[rbp]
	mov	BYTE PTR 6[rbx], al
	movzx	eax, BYTE PTR 25[rbp]
	test	al, 1
	je	.L140
	mov	BYTE PTR 4[rbx], 1
.L140:
	test	al, 2
	je	.L111
	mov	BYTE PTR 5[rbx], 1
.L111:
	movzx	eax, BYTE PTR 26[rbp]
	test	al, 1
	je	.L112
	mov	BYTE PTR 25[rbx], 1
.L112:
	test	al, 6
	je	.L113
	mov	edx, eax
	shr	dx
	and	edx, 3
	mov	BYTE PTR 26[rbx], dl
.L113:
	test	al, 8
	je	.L114
	mov	BYTE PTR 27[rbx], 1
.L114:
	test	al, 16
	je	.L115
	mov	BYTE PTR 21[rbx], 1
.L115:
	test	al, 32
	je	.L116
	mov	BYTE PTR 22[rbx], 1
.L116:
	test	al, 64
	je	.L117
	mov	BYTE PTR 23[rbx], 1
.L117:
	test	al, al
	js	.L189
.L118:
	movzx	edx, BYTE PTR 27[rbp]
	mov	eax, edx
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -2
	add	eax, 3
	test	dl, 2
	je	.L185
	or	eax, 4
.L185:
	mov	BYTE PTR 19[rbx], al
	test	dl, 4
	je	.L122
	or	BYTE PTR 19[rbx], 8
.L122:
	test	dl, 8
	je	.L123
	or	BYTE PTR 19[rbx], 16
.L123:
	test	dl, 32
	je	.L124
	mov	BYTE PTR 17[rbx], 1
.L124:
	test	dl, 16
	je	.L125
	mov	BYTE PTR 18[rbx], 1
.L125:
	and	edx, 64
	jne	.L190
.L126:
	movzx	eax, BYTE PTR 28[rbp]
	cmp	al, 2
	je	.L127
	cmp	al, 4
	je	.L128
	cmp	al, 1
	jne	.L130
	mov	r11d, 1
	mov	WORD PTR 44[rbx], r11w
.L130:
	movzx	eax, BYTE PTR 29[rbp]
	cmp	al, 2
	je	.L131
	cmp	al, 4
	je	.L132
	cmp	al, 1
	jne	.L134
	mov	r8d, 1
	mov	WORD PTR 46[rbx], r8w
.L134:
	movzx	eax, BYTE PTR 30[rbp]
	cmp	al, 2
	je	.L135
	cmp	al, 4
	je	.L136
	cmp	al, 1
	jne	.L138
	mov	eax, 1
	mov	WORD PTR 48[rbx], ax
.L138:
	mov	rax, QWORD PTR 31[rbp]
	lea	rdi, 58[rbx]
	lea	rsi, 44[rbp]
	and	rdi, -8
	mov	QWORD PTR 7[rbx], rax
	movzx	eax, WORD PTR 39[rbp]
	mov	WORD PTR 15[rbx], ax
	movzx	eax, WORD PTR 41[rbp]
	mov	WORD PTR 28[rbx], ax
	movzx	eax, BYTE PTR 43[rbp]
	mov	BYTE PTR 30[rbx], al
	mov	rdx, QWORD PTR 44[rbp]
	lea	rax, 50[rbx]
	sub	rax, rdi
	mov	QWORD PTR 50[rbx], rdx
	mov	rcx, QWORD PTR 666[rbp]
	sub	rsi, rax
	mov	QWORD PTR 672[rbx], rcx
	lea	ecx, 630[rax]
	shr	ecx, 3
	rep movsq
	movdqu	xmm0, XMMWORD PTR 676[rbp]
	movups	XMMWORD PTR 680[rbx], xmm0
	movdqu	xmm1, XMMWORD PTR 692[rbp]
	movups	XMMWORD PTR 696[rbx], xmm1
	movdqu	xmm2, XMMWORD PTR 708[rbp]
	movups	XMMWORD PTR 712[rbx], xmm2
	movdqu	xmm3, XMMWORD PTR 724[rbp]
	movups	XMMWORD PTR 728[rbx], xmm3
	movdqu	xmm4, XMMWORD PTR 740[rbp]
	movups	XMMWORD PTR 744[rbx], xmm4
	movdqu	xmm5, XMMWORD PTR 756[rbp]
	movups	XMMWORD PTR 760[rbx], xmm5
	movdqu	xmm0, XMMWORD PTR 772[rbp]
	movups	XMMWORD PTR 776[rbx], xmm0
	movdqu	xmm1, XMMWORD PTR 788[rbp]
	movups	XMMWORD PTR 792[rbx], xmm1
	movdqu	xmm2, XMMWORD PTR 804[rbp]
	movups	XMMWORD PTR 808[rbx], xmm2
	movdqu	xmm3, XMMWORD PTR 820[rbp]
	movups	XMMWORD PTR 824[rbx], xmm3
	movdqu	xmm4, XMMWORD PTR 836[rbp]
	movups	XMMWORD PTR 840[rbx], xmm4
	movdqu	xmm5, XMMWORD PTR 852[rbp]
	movups	XMMWORD PTR 856[rbx], xmm5
	mov	rax, QWORD PTR 868[rbp]
	mov	QWORD PTR 872[rbx], rax
	mov	eax, DWORD PTR 880[rbp]
	mov	DWORD PTR 880[rbx], eax
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR [r12], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	rdi, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR -16[rax]
	mov	QWORD PTR -16[rdi], rax
	mov	rdi, QWORD PTR 56[rsp]
	mov	eax, 1
	and	rdi, -8
	sub	r12, rdi
	sub	rbx, r12
	lea	ecx, 884[r12]
	mov	rsi, rbx
	shr	ecx, 3
	rep movsq
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L188:
	mov	ecx, r15d
	call	EraseSaveSector
	mov	eax, 9
	sub	si, 1
	cmovc	esi, eax
	sub	di, 1
	jne	.L109
	jmp	.L110
.L190:
	mov	BYTE PTR 20[rbx], 1
	jmp	.L126
.L128:
	mov	edi, 256
	mov	WORD PTR 44[rbx], di
	jmp	.L130
.L189:
	mov	BYTE PTR 24[rbx], 1
	jmp	.L118
.L142:
	mov	esi, r8d
	jmp	.L102
.L127:
	mov	esi, 2
	mov	WORD PTR 44[rbx], si
	jmp	.L130
.L136:
	mov	ecx, 256
	mov	WORD PTR 48[rbx], cx
	jmp	.L138
.L135:
	mov	edx, 2
	mov	WORD PTR 48[rbx], dx
	jmp	.L138
.L132:
	mov	r10d, 256
	mov	WORD PTR 46[rbx], r10w
	jmp	.L134
.L131:
	mov	r9d, 2
	mov	WORD PTR 46[rbx], r9w
	jmp	.L134
	.seh_endproc
	.p2align 4
	.globl	WriteSaveGame
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.seh_proc	WriteSaveGame
WriteSaveGame:
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
	sub	rsp, 112
	.seh_stackalloc	112
	.seh_endprologue
	mov	rsi, QWORD PTR gLoadedSaveGame[rip]
	mov	rbp, QWORD PTR gLastWrittenSaveGame[rip]
	xor	eax, eax
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L215:
	add	rax, 2
	cmp	rax, 884
	je	.L214
.L193:
	movzx	ebx, WORD PTR 0[rbp+rax]
	cmp	WORD PTR [rsi+rax], bx
	je	.L215
	mov	ecx, DWORD PTR [rsi]
	mov	rbx, QWORD PTR gSaveSectorDataBuffer[rip]
	test	ecx, ecx
	je	.L200
.L201:
	mov	rax, QWORD PTR [rsi]
	lea	rdi, 8[rbp]
	mov	rdx, rbp
	and	rdi, -8
	mov	QWORD PTR 0[rbp], rax
	mov	rax, QWORD PTR 876[rsi]
	mov	QWORD PTR 876[rbp], rax
	mov	rax, rbp
	sub	rax, rdi
	lea	ecx, 884[rax]
	sub	rsi, rax
	mov	eax, ecx
	shr	eax, 3
	mov	ecx, eax
	rep movsq
	mov	rcx, rbx
	call	PackSaveSectorData.isra.0
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	edi, DWORD PTR [rax]
	xor	eax, eax
	and	edi, 256
	je	.L216
.L191:
	add	rsp, 112
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L214:
	mov	edx, DWORD PTR [rsi]
	mov	eax, 1
	test	edx, edx
	jne	.L191
	mov	rbx, QWORD PTR gSaveSectorDataBuffer[rip]
.L200:
	call	Random
	mov	edi, eax
	call	Random
	sal	edi, 16
	movzx	eax, ax
	or	edi, eax
	mov	DWORD PTR [rsi], edi
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L216:
	xor	esi, esi
	mov	r13d, -1
	mov	r12d, -1
	lea	rbp, 32[rsp]
	.p2align 4,,10
	.p2align 3
.L198:
	xor	edx, edx
	mov	r9d, 8
	lea	r8, 0[rbp+rsi*8]
	mov	ecx, esi
	call	ReadFlash
	cmp	DWORD PTR 0[rbp+rsi*8], 1162299213
	mov	r14d, esi
	jne	.L196
	mov	eax, DWORD PTR 4[rbp+rsi*8]
	cmp	edi, eax
	cmovb	edi, eax
	cmp	eax, r12d
	cmovb	r13d, esi
	cmovb	r12d, eax
	add	rsi, 1
	cmp	rsi, 10
	jne	.L198
	xor	edx, edx
	cmp	edi, -1
	je	.L199
	cmp	r13w, -1
	je	.L199
	mov	r14d, r13d
.L196:
	movsx	edx, r14w
.L199:
	mov	rcx, rbx
	call	WriteToSaveSector
	test	ax, ax
	sete	al
	movzx	eax, al
	add	rsp, 112
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	NewSaveGame
	.def	NewSaveGame;	.scl	2;	.type	32;	.endef
	.seh_proc	NewSaveGame
NewSaveGame:
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
	mov	rsi, QWORD PTR gLoadedSaveGame[rip]
	mov	rbp, QWORD PTR gLastWrittenSaveGame[rip]
	mov	rbx, QWORD PTR gSaveSectorDataBuffer[rip]
	mov	edi, DWORD PTR 880[rsi]
	movzx	r12d, BYTE PTR 6[rsi]
	mov	rcx, rsi
	call	GenerateNewSaveGame
	mov	DWORD PTR 880[rsi], edi
	lea	rdi, 8[rbp]
	mov	rcx, rbp
	mov	BYTE PTR 6[rsi], r12b
	mov	rax, QWORD PTR [rsi]
	and	rdi, -8
	sub	rcx, rdi
	mov	QWORD PTR 0[rbp], rax
	mov	rax, QWORD PTR 876[rsi]
	sub	rsi, rcx
	add	ecx, 884
	shr	ecx, 3
	mov	QWORD PTR 876[rbp], rax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	rep movsq
	mov	eax, DWORD PTR [rax]
	test	ah, 1
	je	.L222
.L218:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	mov	DWORD PTR 4[rbx], 0
	mov	rdx, rbp
	mov	rcx, rbx
	call	PackSaveSectorData.isra.0
	xor	edx, edx
	mov	rcx, rbx
	call	WriteToSaveSector
	test	ax, ax
	jne	.L218
	mov	ebx, 1
	.p2align 4,,10
	.p2align 3
.L219:
	mov	ecx, ebx
	call	EraseSaveSector
	test	ax, ax
	jne	.L218
	add	ebx, 1
	cmp	ebx, 10
	jne	.L219
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	LoadCompletedSaveGame
	.def	LoadCompletedSaveGame;	.scl	2;	.type	32;	.endef
	.seh_proc	LoadCompletedSaveGame
LoadCompletedSaveGame:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR gLoadedSaveGame[rip]
	mov	eax, DWORD PTR [rbx]
	test	eax, eax
	je	.L225
.L224:
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	mov	BYTE PTR 27[rbx], 1
	mov	DWORD PTR 880[rbx], 0
	mov	DWORD PTR 23[rbx], 33620225
	movups	XMMWORD PTR 7[rbx], xmm0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L225:
	call	Random
	mov	esi, eax
	call	Random
	sal	esi, 16
	movzx	eax, ax
	or	esi, eax
	mov	DWORD PTR [rbx], esi
	jmp	.L224
	.seh_endproc
	.globl	gSaveSectorDataBuffer
	.bss
	.align 8
gSaveSectorDataBuffer:
	.space 8
	.globl	gLoadedSaveGame
	.align 8
gLoadedSaveGame:
	.space 8
	.globl	gLastWrittenSaveGame
	.align 8
gLastWrittenSaveGame:
	.space 8
	.section .rdata,"dr"
	.align 16
.LC3:
	.byte	30
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	1
	.byte	31
	.byte	1
	.byte	1
	.byte	1
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOff;	.scl	2;	.type	32;	.endef
	.def	DmaStop;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOn;	.scl	2;	.type	32;	.endef
	.def	ProgramFlashSectorAndVerifyNBytes;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.def	ReadFlash;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.EraseFlashSector, "dr"
	.globl	.refptr.EraseFlashSector
	.linkonce	discard
.refptr.EraseFlashSector:
	.quad	EraseFlashSector
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
