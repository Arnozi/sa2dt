	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8014C60
	.def	sub_8014C60;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014C60
sub_8014C60:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, BYTE PTR 76[rbx]
	lea	edx, 1[rax]
	mov	BYTE PTR 76[rbx], dl
	cmp	al, 32
	ja	.L4
	mov	eax, DWORD PTR 72[rbx]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 64[rbx]
	add	edx, DWORD PTR 68[rbx]
	add	eax, 256
	mov	DWORD PTR 68[rbx], edx
	sar	edx, 8
	sub	dx, WORD PTR [rcx]
	mov	DWORD PTR 72[rbx], eax
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 38[rbx], dx
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L4:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_8015360
	.def	sub_8015360;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015360
sub_8015360:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	sub_8015604
	.def	sub_8015604;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015604
sub_8015604:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateCheese
	.def	CreateCheese;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCheese
CreateCheese:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L19
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 29
	je	.L26
	cmp	BYTE PTR 141[rcx], 1
	je	.L27
.L7:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	r8, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	xor	eax, eax
.L8:
	cmp	QWORD PTR [r8+rax*8], 0
	je	.L28
	add	rax, 1
	cmp	rax, 4
	jne	.L8
	mov	ecx, 4
.L14:
	mov	rdx, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	xor	eax, eax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L16:
	add	rax, 1
	cmp	eax, ecx
	jnb	.L7
.L18:
	cmp	BYTE PTR [rax+rdx], 1
	jne	.L16
	mov	eax, eax
	xor	r9d, r9d
	mov	edx, 144
	mov	rax, QWORD PTR [r8+rax*8]
	lea	rcx, sub_801420C[rip]
	mov	r8d, 20496
	mov	rbx, QWORD PTR 24[rax]
	lea	rax, sub_8015360[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rsi, QWORD PTR 24[rax]
	mov	QWORD PTR 136[rsi], rbx
	test	rbx, rbx
	je	.L7
	mov	QWORD PTR gCheese[rip], rsi
	lea	rbx, 32[rsi]
	mov	QWORD PTR [rsi], 0
.L12:
	xor	edx, edx
	mov	eax, 514
	mov	ecx, 9
	mov	DWORD PTR 12[rsi], 2
	mov	WORD PTR 16[rsi], dx
	mov	WORD PTR 8[rsi], ax
	call	VramMalloc
	movzx	edx, WORD PTR 16[rsi]
	mov	r8d, 4351
	mov	DWORD PTR 32[rbx], 8192
	mov	QWORD PTR 8[rbx], rax
	lea	rax, gUnknown_080D5548[rip]
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	DWORD PTR 42[rbx], 1088
	mov	WORD PTR 49[rbx], r8w
	mov	WORD PTR 18[rbx], cx
	xor	ecx, ecx
	mov	BYTE PTR 48[rbx], al
	mov	WORD PTR 16[rbx], cx
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 64[rbx], -1
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	mov	QWORD PTR gCheese[rip], 0
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	movzx	ecx, al
	test	al, al
	jne	.L14
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L27:
	lea	rax, sub_8015360[rip]
	xor	r9d, r9d
	mov	r8d, 20496
	mov	edx, 144
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_801420C[rip]
	call	TaskCreate
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 12[rax]
	mov	QWORD PTR gCheese[rip], rsi
	lea	rbx, 32[rsi]
	mov	QWORD PTR [rsi], rax
	jmp	.L12
	.seh_endproc
	.p2align 4
	.globl	sub_801412C
	.def	sub_801412C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801412C
sub_801412C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 16[rcx]
	mov	rbx, rcx
	lea	rsi, 32[rcx]
	cmp	ax, 18
	je	.L30
	lea	rdx, gUnknown_080D5548[rip]
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	edx, WORD PTR 2[rdx+rax*4]
	mov	eax, edx
	add	edx, ecx
	cmp	DWORD PTR 20[rbx], edx
	je	.L30
	mov	BYTE PTR 80[rbx], al
	movzx	eax, al
	add	eax, ecx
	mov	WORD PTR 50[rbx], cx
	mov	DWORD PTR 20[rbx], eax
	mov	BYTE PTR 81[rbx], -1
	mov	DWORD PTR 88[rbx], -1
	mov	DWORD PTR 96[rbx], -1
.L30:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movzx	ecx, WORD PTR 12[rbx]
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 70[rbx], ax
	movzx	eax, WORD PTR 5[rbx]
	sub	ax, WORD PTR 4[rdx]
	movzx	edx, BYTE PTR 120[rbx]
	mov	WORD PTR 72[rbx], ax
	mov	eax, ecx
	not	eax
	add	edx, 64
	and	eax, 1
	sal	eax, 10
	mov	r8d, eax
	xor	r8d, 2048
	cmp	dl, -128
	cmova	eax, r8d
	mov	edx, eax
	xor	dh, 8
	and	ecx, 8
	mov	rcx, rsi
	cmovne	eax, edx
	mov	edx, DWORD PTR 64[rbx]
	and	dh, -13
	or	eax, edx
	mov	rdx, QWORD PTR 128[rbx]
	and	ah, -49
	mov	DWORD PTR 64[rbx], eax
	mov	edx, DWORD PTR 32[rdx]
	and	edx, 12288
	or	eax, edx
	mov	DWORD PTR 64[rbx], eax
	call	UpdateSpriteAnimation
	test	BYTE PTR 12[rbx], 2
	je	.L39
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8014BB0
	.def	sub_8014BB0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014BB0
sub_8014BB0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, sub_8015604[rip]
	xor	r9d, r9d
	mov	edx, 80
	mov	r8d, 20544
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	lea	rcx, sub_8014C60[rip]
	call	TaskCreate
	mov	edx, -64
	mov	ecx, 4
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 64
	mov	BYTE PTR 76[rbx], 0
	cmp	WORD PTR 68[rsi], 18
	cmovne	edx, eax
	movd	xmm1, DWORD PTR [rsi]
	movd	xmm0, edx
	punpckldq	xmm0, xmm1
	movq	QWORD PTR 64[rbx], xmm0
	mov	eax, DWORD PTR 4[rsi]
	mov	DWORD PTR 72[rbx], eax
	call	VramMalloc
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	BYTE PTR 50[rbx], 16
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	WORD PTR 48[rbx], ax
	movzx	eax, WORD PTR 69[rbx]
	sub	ax, WORD PTR [rdx]
	mov	DWORD PTR 16[rbx], 30736384
	mov	WORD PTR 38[rbx], ax
	movzx	eax, WORD PTR 73[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	DWORD PTR 32[rbx], 8192
	mov	WORD PTR 40[rbx], ax
	mov	DWORD PTR 42[rbx], 512
	mov	BYTE PTR 53[rbx], 0
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8014CC8
	.def	sub_8014CC8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014CC8
sub_8014CC8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	movzx	r11d, WORD PTR 12[rcx]
	mov	r9d, edx
	and	r9d, 3
	mov	rax, rcx
	mov	ecx, DWORD PTR 116[rcx]
	mov	r8d, DWORD PTR 104[rax]
	mov	ebx, DWORD PTR 108[rax]
	cmp	r9b, 2
	je	.L44
	cmp	dl, 28
	je	.L79
	cmp	dl, 29
	je	.L44
.L78:
	movzx	esi, BYTE PTR 120[rax]
	mov	r10d, DWORD PTR [rax]
	and	ecx, 1
	mov	r9d, DWORD PTR 4[rax]
	lea	edx, -96[rsi]
	test	r11b, 8
	je	.L49
.L81:
	test	ecx, ecx
	jne	.L80
	mov	edx, 95
	and	r11d, -2
	sub	edx, esi
.L51:
	movzx	edx, dl
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 12[rax], r11w
	lea	edx, 256[0+rdx*4]
	movsx	rcx, edx
	sub	edx, 256
	movsx	rdx, edx
	movzx	ecx, WORD PTR [rsi+rcx*2]
	movzx	edx, WORD PTR [rsi+rdx*2]
	sar	cx, 6
	sar	dx, 6
	movsx	ecx, cx
	movsx	edx, dx
	sal	ecx, 5
	sal	edx, 5
	add	ecx, r8d
	add	edx, ebx
	cmp	BYTE PTR 8[rax], 2
	je	.L55
	sub	r8d, r10d
	mov	esi, r8d
	neg	esi
	cmovns	r8d, esi
	cmp	r8d, 20480
	jle	.L56
	mov	BYTE PTR 8[rax], 2
.L55:
	mov	esi, ecx
	sub	esi, r10d
	mov	r8d, esi
	neg	r8d
	cmovs	r8d, esi
	cmp	r8d, 1023
	jg	.L58
	mov	BYTE PTR 8[rax], 4
.L58:
	cmp	ecx, r10d
	jle	.L59
	movzx	ecx, BYTE PTR 8[rax]
	shr	r8d, cl
	mov	ecx, 4095
	cmp	r8d, ecx
	cmovle	ecx, r8d
	add	r10d, ecx
	cmp	r8d, 256
	jbe	.L61
	and	r11d, -2
	mov	WORD PTR 12[rax], r11w
.L61:
	cmp	BYTE PTR 9[rax], 2
	je	.L64
	sub	ebx, r9d
	mov	ecx, ebx
	neg	ecx
	cmovs	ecx, ebx
	cmp	ecx, 20480
	jle	.L65
	mov	BYTE PTR 9[rax], 2
.L64:
	mov	ecx, edx
	sub	ecx, r9d
	mov	r8d, ecx
	neg	r8d
	cmovs	r8d, ecx
	xor	r11d, r11d
	cmp	r8d, 1023
	jg	.L67
	mov	BYTE PTR 9[rax], 4
	mov	r11d, 1
.L67:
	cmp	edx, r9d
	jle	.L68
	movzx	ecx, BYTE PTR 9[rax]
	mov	edx, 4095
	shr	r8d, cl
	cmp	r8d, edx
	cmovg	r8d, edx
	add	r9d, r8d
.L69:
	mov	DWORD PTR [rax], r10d
	mov	DWORD PTR 4[rax], r9d
	mov	eax, r11d
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L78
.L44:
	test	r11b, 4
	jne	.L78
	test	ecx, 1048576
	jne	.L78
	movzx	esi, BYTE PTR 120[rax]
	or	r11d, 4
	mov	r9d, ebx
	mov	r10d, r8d
	and	ecx, 1
	lea	edx, -96[rsi]
	test	r11b, 8
	jne	.L81
	.p2align 4,,10
	.p2align 3
.L49:
	test	ecx, ecx
	je	.L52
	mov	ecx, r11d
	or	r11d, 1
	lea	edx, -32[rsi]
	and	ecx, -2
	cmp	sil, 65
	cmovnb	r11d, ecx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L80:
	mov	edx, 31
	or	r11d, 1
	sub	edx, esi
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L52:
	mov	ecx, r11d
	and	r11d, -2
	or	ecx, 1
	cmp	sil, 65
	cmovnb	r11d, ecx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L59:
	jge	.L61
	movzx	ecx, BYTE PTR 8[rax]
	shr	r8d, cl
	mov	ecx, -4095
	neg	r8d
	cmp	r8d, ecx
	cmovge	ecx, r8d
	add	r10d, ecx
	cmp	r8d, -256
	jge	.L61
	or	r11d, 1
	mov	WORD PTR 12[rax], r11w
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L68:
	jge	.L69
	movzx	ecx, BYTE PTR 9[rax]
	mov	edx, -4095
	mov	DWORD PTR [rax], r10d
	shr	r8d, cl
	neg	r8d
	cmp	r8d, edx
	cmovl	r8d, edx
	add	r9d, r8d
	mov	DWORD PTR 4[rax], r9d
	mov	eax, r11d
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	cmp	ecx, 12289
	setl	cl
	add	ecx, 3
	mov	BYTE PTR 9[rax], cl
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L56:
	cmp	r8d, 12289
	setl	r8b
	add	r8d, 3
	mov	BYTE PTR 8[rax], r8b
	jmp	.L55
	.seh_endproc
	.p2align 4
	.globl	sub_8014EFC
	.def	sub_8014EFC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014EFC
sub_8014EFC:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	esi, edx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rax, rcx
	mov	ebx, r8d
	mov	ecx, r9d
	movzx	r10d, WORD PTR 12[rax]
	mov	r8d, DWORD PTR 116[rax]
	movzx	edx, BYTE PTR [rdx]
	mov	edi, DWORD PTR 104[rax]
	mov	r9d, DWORD PTR 108[rax]
	mov	r11d, edx
	and	r11d, 3
	cmp	r11b, 2
	je	.L83
	cmp	dl, 28
	je	.L109
	cmp	dl, 29
	je	.L83
.L85:
	movzx	r11d, BYTE PTR 120[rax]
	and	r8d, 1
	lea	edx, -96[r11]
	test	r10b, 8
	je	.L86
	test	r8d, r8d
	jne	.L110
	mov	edx, 95
	and	r10d, -2
	sub	edx, r11d
.L88:
	movzx	edx, dl
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movsx	esi, si
	movsx	ebx, bx
	lea	r11d, 256[0+rdx*4]
	mov	WORD PTR 12[rax], r10w
	movsx	rdx, r11d
	sub	r11d, 256
	movsx	r11, r11d
	movzx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, WORD PTR [r8+r11*2]
	mov	r11d, 1
	sar	dx, 6
	sar	r8w, 6
	movsx	edx, dx
	movsx	r8d, r8w
	imul	edx, esi
	imul	r8d, ebx
	add	edx, edi
	add	r8d, r9d
	test	cl, cl
	je	.L92
	mov	ebp, DWORD PTR [rax]
	mov	edi, edx
	mov	ebx, DWORD PTR 4[rax]
	mov	esi, r8d
	xor	r11d, r11d
	sub	edi, ebp
	sub	esi, ebx
	lea	r9d, 1535[rdi]
	cmp	r9d, 3070
	ja	.L93
	lea	r9d, 1535[rsi]
	cmp	r9d, 3070
	setbe	r11b
.L93:
	mov	r9d, edi
	neg	r9d
	cmovs	r9d, edi
	cmp	ebp, edx
	jge	.L94
	shr	r9d, cl
	mov	edx, ebp
	test	r9d, r9d
	jne	.L111
.L95:
	mov	r9d, esi
	neg	r9d
	cmovs	r9d, esi
	cmp	r8d, ebx
	jle	.L98
	mov	r8d, 4095
	shr	r9d, cl
	cmp	r9d, r8d
	mov	ecx, r9d
	cmovg	ecx, r8d
	lea	r8d, [rcx+rbx]
.L92:
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR 4[rax], r8d
	mov	eax, r11d
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L85
.L83:
	test	r10b, 4
	jne	.L85
	test	r8d, 1048576
	jne	.L85
	mov	rdx, QWORD PTR 104[rax]
	or	r10d, 4
	mov	QWORD PTR [rax], rdx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L86:
	test	r8d, r8d
	je	.L89
	mov	r8d, r10d
	or	r10d, 1
	lea	edx, -32[r11]
	and	r8d, -2
	cmp	r11b, 65
	cmovnb	r10d, r8d
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L110:
	mov	edx, 31
	or	r10d, 1
	sub	edx, r11d
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L89:
	mov	r8d, r10d
	and	r10d, -2
	or	r8d, 1
	cmp	r11b, 65
	cmovnb	r10d, r8d
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L94:
	mov	edx, ebp
	jle	.L95
	shr	r9d, cl
	mov	edi, -4095
	neg	r9d
	cmp	r9d, edi
	cmovge	edi, r9d
	add	edx, edi
	test	r9d, r9d
	je	.L95
	or	r10d, 1
	mov	WORD PTR 12[rax], r10w
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L98:
	mov	r8d, ebx
	jge	.L92
	shr	r9d, cl
	mov	ecx, -4095
	mov	DWORD PTR [rax], edx
	neg	r9d
	cmp	r9d, ecx
	cmovl	r9d, ecx
	add	r8d, r9d
	mov	DWORD PTR 4[rax], r8d
	mov	eax, r11d
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	and	r10d, -2
	mov	WORD PTR 12[rax], r10w
	mov	r10d, 4095
	cmp	r9d, r10d
	cmovg	r9d, r10d
	add	edx, r9d
	jmp	.L95
	.seh_endproc
	.p2align 4
	.globl	sub_8015118
	.def	sub_8015118;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015118
sub_8015118:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	sub	eax, 3
	cmp	al, 1
	jbe	.L133
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR 12[rax]
	mov	rbx, QWORD PTR 160[rax]
	mov	QWORD PTR 104[rcx], rdx
	mov	edx, DWORD PTR 20[rax]
	mov	DWORD PTR 112[rcx], edx
	lea	rdx, 16[rbx]
	mov	QWORD PTR 128[rcx], rdx
	mov	edx, DWORD PTR 36[rax]
	mov	DWORD PTR 116[rcx], edx
	test	edx, 4194304
	je	.L134
.L123:
	xor	edx, edx
.L112:
	mov	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L134:
	movzx	eax, BYTE PTR 40[rax]
	and	edx, 2
	mov	edx, 0
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	cmovne	eax, edx
	mov	BYTE PTR 120[rcx], al
	movzx	eax, WORD PTR 12[rcx]
	mov	edx, eax
	or	eax, 8
	and	edx, -9
	test	BYTE PTR [r8], -128
	cmove	eax, edx
	mov	WORD PTR 12[rcx], ax
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L133:
	mov	r8, QWORD PTR 136[rcx]
	mov	r9d, DWORD PTR 108[rcx]
	mov	ebx, 1
	mov	esi, DWORD PTR 104[rcx]
	movsx	eax, WORD PTR 98[r8]
	sar	r9d, 8
	movsx	edx, WORD PTR 96[r8]
	movd	xmm1, eax
	mov	r10d, eax
	sub	eax, r9d
	mov	r11d, edx
	mov	r9d, eax
	movd	xmm0, edx
	neg	r9d
	punpckldq	xmm0, xmm1
	cmovns	eax, r9d
	pslld	xmm0, 8
	cmp	eax, 30
	jg	.L114
	sar	esi, 8
	sub	edx, esi
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	cmp	eax, 30
	setg	bl
.L114:
	mov	eax, 32
	movq	QWORD PTR 104[rcx], xmm0
	mov	edx, 1
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, eax
	sub	r9w, WORD PTR [rsi]
	add	r9d, r11d
	cmp	r9w, 304
	ja	.L112
	sub	ax, WORD PTR 4[rsi]
	add	eax, r10d
	cmp	ax, 224
	ja	.L112
	mov	DWORD PTR 112[rcx], 65537
	movzx	edx, WORD PTR 100[r8]
	mov	QWORD PTR 128[rcx], r8
	mov	eax, edx
	shr	ax
	xor	eax, 1
	and	eax, 1
	test	dl, 64
	je	.L132
	or	eax, 1048576
.L132:
	mov	DWORD PTR 116[rcx], eax
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	je	.L135
.L118:
	movzx	eax, WORD PTR 72[r8]
	movzx	r8d, WORD PTR 12[rcx]
	shr	ax, 2
	and	edx, 8
	mov	BYTE PTR 120[rcx], al
	je	.L120
	test	al, al
	jne	.L136
.L121:
	or	r8d, 8
	mov	WORD PTR 12[rcx], r8w
.L119:
	test	bl, bl
	je	.L123
	xor	r9d, r9d
	mov	r8d, 16
	xor	edx, edx
	call	sub_8014EFC
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L120:
	and	r8d, -9
	mov	WORD PTR 12[rcx], r8w
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L135:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 38[rax], 64
	jne	.L119
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L136:
	mov	edx, 127
	sub	edx, eax
	mov	BYTE PTR 120[rcx], dl
	jmp	.L121
	.seh_endproc
	.p2align 4
	.globl	sub_801420C
	.def	sub_801420C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801420C
sub_801420C:
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
	mov	rsi, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	xor	edx, edx
	xor	r9d, r9d
	mov	r8d, 24
	mov	rcx, rbx
	call	sub_8014EFC
	mov	rax, QWORD PTR 128[rbx]
	lea	rdx, sub_8014350[rip]
	cmp	WORD PTR 18[rax], 121
	je	.L147
.L138:
	mov	QWORD PTR 40[rsi], rdx
	mov	rcx, rbx
	call	sub_801412C
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L139
	cmp	al, 28
	je	.L148
	cmp	al, 29
	jne	.L137
.L139:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8014350[rip]
	mov	QWORD PTR 40[rax], rdi
.L137:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	je	.L139
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L147:
	cmp	BYTE PTR 48[rax], 0
	jne	.L138
	xor	edx, edx
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rcx, rbx
	call	sub_8014EFC
	mov	BYTE PTR 10[rbx], 0
	lea	rdx, sub_80142AC[rip]
	jmp	.L138
	.seh_endproc
	.p2align 4
	.globl	sub_80142AC
	.def	sub_80142AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80142AC
sub_80142AC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	xor	edx, edx
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rcx, rbx
	call	sub_8014EFC
	movzx	eax, WORD PTR 12[rbx]
	mov	rdx, QWORD PTR 128[rbx]
	and	eax, -2
	cmp	WORD PTR 36[rdx], 182
	mov	WORD PTR 12[rbx], ax
	jbe	.L150
	mov	BYTE PTR 10[rbx], 1
.L151:
	cmp	WORD PTR 18[rdx], 121
	jne	.L157
.L153:
	mov	edx, 15
	mov	rcx, rbx
	mov	WORD PTR 16[rbx], dx
	mov	edx, eax
	and	eax, -3
	or	edx, 2
	test	BYTE PTR 118[rbx], 16
	cmovne	eax, edx
	mov	WORD PTR 12[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L150:
	cmp	BYTE PTR 10[rbx], 0
	jne	.L151
	cmp	BYTE PTR 48[rdx], 0
	je	.L153
.L157:
	xor	r9d, r9d
	mov	r8d, 16
	mov	edx, -32
	mov	rcx, rbx
	call	sub_8014EFC
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rsi], rax
	movzx	eax, WORD PTR 12[rbx]
	jmp	.L153
	.seh_endproc
	.p2align 4
	.globl	sub_8014350
	.def	sub_8014350;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014350
sub_8014350:
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
	mov	rsi, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	cmp	al, 1
	je	.L173
	mov	rcx, rbx
	call	sub_8014CC8
	mov	rdx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	jbe	.L160
	movzx	edx, WORD PTR 16[rbx]
.L161:
	movzx	eax, WORD PTR 12[rbx]
	mov	ecx, eax
	and	eax, -3
	or	ecx, 2
	test	BYTE PTR 118[rbx], 16
	cmovne	eax, ecx
	mov	WORD PTR 12[rbx], ax
	cmp	dx, 15
	ja	.L164
	lea	rcx, .L166[rip]
	movsx	rax, DWORD PTR [rcx+rdx*4]
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L166:
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L172-.L166
	.long	.L164-.L166
	.long	.L171-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L170-.L166
	.long	.L164-.L166
	.long	.L169-.L166
	.long	.L168-.L166
	.long	.L167-.L166
	.long	.L164-.L166
	.long	.L165-.L166
	.text
	.p2align 4,,10
	.p2align 3
.L160:
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	edx, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], dx
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L169:
	lea	rax, sub_8015378[rip]
	mov	QWORD PTR 40[rsi], rax
.L164:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L173:
	xor	r9d, r9d
	mov	r8d, 32
	mov	edx, 32
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_8014EFC
	.p2align 4,,10
	.p2align 3
.L165:
	lea	rax, sub_80142AC[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rsi], rax
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L167:
	lea	rax, sub_80154B0[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rsi], rax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L168:
	xor	edx, edx
	lea	rax, sub_8015464[rip]
	mov	WORD PTR 16[rbx], dx
	mov	QWORD PTR 40[rsi], rax
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L170:
	lea	rax, sub_80144CC[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rsi], rax
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L171:
	mov	BYTE PTR 10[rbx], 0
	mov	ecx, 228
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8014A68[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L172:
	lea	rax, sub_80145D8[rip]
	mov	QWORD PTR 40[rsi], rax
	jmp	.L164
	.seh_endproc
	.p2align 4
	.globl	sub_80144CC
	.def	sub_80144CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80144CC
sub_80144CC:
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
	mov	rdi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdi]
	mov	rcx, rbx
	call	sub_8015118
	cmp	al, 1
	je	.L185
	mov	rsi, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 36[rsi]
	cmp	ax, 175
	ja	.L186
	mov	eax, 9
	mov	WORD PTR 16[rbx], ax
.L181:
	movzx	eax, WORD PTR 18[rsi]
	cmp	ax, 181
	ja	.L182
	sub	eax, 91
	lea	rdx, gUnknown_080D5628[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	movzx	edx, BYTE PTR 48[rsi]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	cmp	BYTE PTR [rdx+rax], 9
	je	.L183
.L182:
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rdi], rax
.L183:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L186:
	mov	edx, 10
	mov	WORD PTR 16[rbx], dx
	cmp	ax, 255
	ja	.L187
	cmp	ax, 191
	ja	.L188
.L179:
	movzx	eax, BYTE PTR 10[rbx]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	add	eax, 2
	mov	BYTE PTR 10[rbx], al
	lea	rax, 0[0+rax*4]
	and	eax, 1020
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 9
	cwde
	add	DWORD PTR 4[rbx], eax
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L188:
	mov	r9d, 4
	mov	r8d, 4
	mov	edx, -28
	mov	rcx, rbx
	call	sub_8014EFC
	test	BYTE PTR 116[rbx], 1
	je	.L180
.L184:
	and	WORD PTR 12[rbx], -2
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L187:
	mov	r9d, 4
	mov	r8d, 4
	mov	edx, 28
	mov	rcx, rbx
	call	sub_8014EFC
	test	BYTE PTR 116[rbx], 1
	je	.L184
.L180:
	or	WORD PTR 12[rbx], 1
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L185:
	xor	r9d, r9d
	mov	r8d, 32
	mov	edx, 32
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_8014EFC
	.seh_endproc
	.p2align 4
	.globl	sub_8014A68
	.def	sub_8014A68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014A68
sub_8014A68:
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
	mov	rcx, rbx
	call	sub_8015118
	movzx	eax, BYTE PTR 10[rbx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	mov	ecx, eax
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	add	ecx, 16
	cdqe
	movzx	edx, WORD PTR [r8+rdx*2]
	mov	BYTE PTR 10[rbx], cl
	mov	rcx, rbx
	movzx	r8d, WORD PTR [r8+rax*2]
	sar	dx, 9
	sar	r8w, 9
	movsx	edx, dx
	movsx	r8d, r8w
	call	sub_8014EFC
	mov	rdx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	jbe	.L190
	movzx	eax, WORD PTR 16[rbx]
.L191:
	cmp	ax, 4
	je	.L192
	mov	ecx, 228
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8014350[rip]
	mov	QWORD PTR 40[rax], rsi
.L192:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L190:
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], ax
	jmp	.L191
	.seh_endproc
	.p2align 4
	.globl	sub_8014AFC
	.def	sub_8014AFC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014AFC
sub_8014AFC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	movzx	eax, BYTE PTR 10[rbx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	mov	ecx, eax
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	add	ecx, 2
	cdqe
	movzx	edx, WORD PTR [r8+rdx*2]
	mov	BYTE PTR 10[rbx], cl
	mov	rcx, rbx
	movzx	r8d, WORD PTR [r8+rax*2]
	sar	dx, 9
	sar	r8w, 11
	movsx	edx, dx
	add	r8d, 48
	movzx	r8d, r8w
	call	sub_8014EFC
	mov	rdx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	jbe	.L197
	movzx	eax, WORD PTR 16[rbx]
.L198:
	cmp	ax, 12
	je	.L199
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rsi], rax
.L199:
	mov	rcx, rbx
	movzx	esi, WORD PTR 68[rbx]
	call	sub_801412C
	movzx	eax, WORD PTR 68[rbx]
	cmp	ax, 63
	je	.L213
.L200:
	cmp	si, 18
	je	.L196
	cmp	ax, 18
	je	.L214
.L196:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], ax
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L213:
	cmp	si, 63
	je	.L196
	mov	rcx, rbx
	call	sub_8014BB0
	movzx	eax, WORD PTR 68[rbx]
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L214:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8014BB0
	.seh_endproc
	.p2align 4
	.globl	sub_8015378
	.def	sub_8015378;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015378
sub_8015378:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	mov	r9d, 1
	mov	edx, 8
	mov	rcx, rbx
	mov	r8d, 15
	call	sub_8014EFC
	cmp	al, 1
	jne	.L216
	lea	rax, sub_80153F8[rip]
	mov	QWORD PTR 40[rsi], rax
.L216:
	mov	rdx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	jbe	.L217
	movzx	eax, WORD PTR 16[rbx]
.L218:
	cmp	ax, 11
	je	.L219
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rsi], rax
.L219:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L217:
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], ax
	jmp	.L218
	.seh_endproc
	.p2align 4
	.globl	sub_80153F8
	.def	sub_80153F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80153F8
sub_80153F8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	mov	edx, 8
	xor	r9d, r9d
	mov	rcx, rbx
	mov	r8d, 15
	call	sub_8014EFC
	mov	rdx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	jbe	.L224
	movzx	eax, WORD PTR 16[rbx]
.L225:
	cmp	ax, 11
	je	.L226
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rsi], rax
.L226:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L224:
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], ax
	jmp	.L225
	.seh_endproc
	.p2align 4
	.globl	sub_8015464
	.def	sub_8015464;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015464
sub_8015464:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	mov	r9d, 3
	mov	edx, 32
	mov	rcx, rbx
	mov	r8d, 48
	call	sub_8014EFC
	cmp	al, 1
	jne	.L231
	lea	rax, sub_8014AFC[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rsi], rax
.L231:
	xor	eax, eax
	mov	rcx, rbx
	mov	WORD PTR 16[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.seh_endproc
	.p2align 4
	.globl	sub_80154B0
	.def	sub_80154B0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80154B0
sub_80154B0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	mov	r9d, 4
	xor	edx, edx
	mov	rcx, rbx
	mov	r8d, 48
	call	sub_8014EFC
	movzx	eax, BYTE PTR 10[rbx]
	cmp	al, 60
	je	.L233
	add	eax, 1
.L234:
	mov	BYTE PTR 10[rbx], al
	mov	rcx, rbx
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L233:
	lea	rax, sub_8015500[rip]
	mov	QWORD PTR 40[rsi], rax
	mov	eax, 1
	jmp	.L234
	.seh_endproc
	.p2align 4
	.globl	sub_8015500
	.def	sub_8015500;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015500
sub_8015500:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	xor	r9d, r9d
	mov	r8d, -2
	xor	edx, edx
	mov	rcx, rbx
	call	sub_8014EFC
	movzx	eax, BYTE PTR 10[rbx]
	cmp	al, 8
	jne	.L236
	lea	rdx, sub_801555C[rip]
	mov	ecx, 1
	mov	QWORD PTR 40[rsi], rdx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 114[rdx], cx
.L236:
	add	eax, 1
	mov	rcx, rbx
	mov	BYTE PTR 10[rbx], al
	mov	eax, 13
	mov	WORD PTR 16[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.seh_endproc
	.p2align 4
	.globl	sub_801555C
	.def	sub_801555C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801555C
sub_801555C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	xor	edx, edx
	xor	r9d, r9d
	mov	r8d, -2
	mov	rcx, rbx
	call	sub_8014EFC
	mov	rdx, QWORD PTR 128[rbx]
	mov	eax, 14
	mov	WORD PTR 16[rbx], ax
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	ja	.L239
	sub	eax, 91
	lea	rcx, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	WORD PTR 16[rbx], ax
	cmp	ax, 14
	je	.L239
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rsi], rax
.L239:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_801412C
	.seh_endproc
	.p2align 4
	.globl	sub_80152EC
	.def	sub_80152EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80152EC
sub_80152EC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR 128[rcx]
	movzx	eax, WORD PTR 18[rdx]
	cmp	ax, 181
	ja	.L244
	sub	eax, 91
	lea	r8, gUnknown_080D5628[rip]
	movzx	edx, BYTE PTR 48[rdx]
	cdqe
	movzx	eax, BYTE PTR [r8+rax]
	add	eax, edx
	lea	rdx, gUnknown_080D5590[rip]
	cdqe
	cmp	BYTE PTR [rdx+rax], 4
	je	.L246
.L244:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	xor	eax, eax
	mov	BYTE PTR 10[rcx], 0
	mov	WORD PTR 14[rcx], ax
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
	and	WORD PTR 12[rcx], -17
	mov	ecx, 228
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8014A68[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8014834
	.def	sub_8014834;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8014834
sub_8014834:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	edx, WORD PTR 12[rbx]
	mov	r8, QWORD PTR 24[rbx]
	test	dl, 16
	je	.L248
	mov	rcx, QWORD PTR 128[rbx]
	movzx	ecx, WORD PTR 18[rcx]
	sub	ecx, 105
	cmp	cx, 8
	ja	.L249
	mov	r9d, 273
	bt	r9, rcx
	jnc	.L249
.L248:
	movzx	edx, BYTE PTR 10[rbx]
	mov	ecx, 6
	mov	WORD PTR 16[rbx], cx
	lea	ecx, 1[rdx]
	mov	BYTE PTR 10[rbx], cl
	cmp	dl, 8
	jbe	.L250
	lea	rdx, sub_80148B8[rip]
	mov	QWORD PTR 40[rax], rdx
	xor	edx, edx
	mov	BYTE PTR 10[rbx], 0
	mov	WORD PTR 14[rbx], dx
.L250:
	cmp	BYTE PTR 61[r8], 0
	jne	.L251
	lea	rcx, sub_80148B8[rip]
	mov	QWORD PTR 40[rax], rcx
	xor	eax, eax
	mov	BYTE PTR 10[rbx], 0
	mov	WORD PTR 14[rbx], ax
.L251:
	call	sub_80152EC
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L249:
	and	edx, -17
	mov	WORD PTR 12[rbx], dx
	jmp	.L248
	.seh_endproc
	.p2align 4
	.globl	sub_801464C
	.def	sub_801464C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801464C
sub_801464C:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	mov	ecx, edx
	mov	r11, QWORD PTR 24[rbx]
	movzx	eax, WORD PTR 12[rbx]
	and	ecx, 3
	cmp	cl, 2
	je	.L256
	cmp	dl, 28
	je	.L315
	cmp	dl, 29
	je	.L256
.L313:
	mov	r8d, DWORD PTR [rbx]
	mov	r9d, DWORD PTR 4[rbx]
	mov	edi, 12
	mov	ecx, 3
.L258:
	test	al, 16
	je	.L261
	mov	rdx, QWORD PTR 128[rbx]
	movzx	edx, WORD PTR 18[rdx]
	sub	edx, 105
	cmp	dx, 8
	ja	.L262
	mov	r10d, 273
	bt	r10, rdx
	jnc	.L262
.L261:
	movzx	eax, BYTE PTR 10[rbx]
	mov	r10d, 5
	mov	WORD PTR 16[rbx], r10w
	test	al, al
	je	.L264
	mov	edx, 6
	add	eax, 1
	mov	WORD PTR 16[rbx], dx
	cmp	al, 8
	jbe	.L316
	xor	ebp, ebp
	lea	rax, sub_80148B8[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	WORD PTR 14[rbx], bp
	mov	QWORD PTR 40[rsi], rax
.L264:
	movzx	eax, WORD PTR 62[r11]
	mov	r10d, r8d
	movzx	edx, WORD PTR 64[r11]
	sar	r10d, 8
	mov	ebp, eax
	sub	ebp, r10d
	js	.L267
	cmp	ebp, edi
	jl	.L268
.L269:
	sal	eax, 8
	mov	r10d, r8d
	mov	edi, eax
	sub	r10d, eax
	sub	edi, r8d
	cmp	eax, r8d
	mov	eax, edi
	cmovl	eax, r10d
	jle	.L275
	mov	r10d, eax
	shr	r10d, cl
	test	r10d, r10d
	jne	.L288
	test	eax, eax
	je	.L288
	add	r8d, 512
.L278:
	lea	eax, -4[rdx]
	sal	eax, 8
	mov	r10d, eax
	sub	r10d, r9d
	mov	edx, r10d
	neg	edx
	cmovs	edx, r10d
	cmp	eax, r9d
	jle	.L281
	mov	eax, edx
	shr	eax, cl
	test	eax, eax
	jne	.L290
	test	edx, edx
	je	.L290
	add	r9d, 512
.L284:
	mov	DWORD PTR [rbx], r8d
	mov	DWORD PTR 4[rbx], r9d
	cmp	BYTE PTR 61[r11], 0
	jne	.L287
	xor	eax, eax
	mov	BYTE PTR 10[rbx], 0
	mov	WORD PTR 14[rbx], ax
	lea	rax, sub_80148B8[rip]
	mov	QWORD PTR 40[rsi], rax
.L287:
	call	sub_80152EC
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L315:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L313
.L256:
	test	al, 4
	jne	.L314
	test	BYTE PTR 118[rbx], 16
	jne	.L314
	mov	r8d, DWORD PTR 104[rbx]
	mov	r9d, DWORD PTR 108[rbx]
	or	eax, 4
	mov	edi, 32
	mov	WORD PTR 12[rbx], ax
	mov	ecx, 2
	mov	DWORD PTR [rbx], r8d
	mov	DWORD PTR 4[rbx], r9d
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L314:
	mov	r8d, DWORD PTR [rbx]
	mov	r9d, DWORD PTR 4[rbx]
	mov	edi, 32
	mov	ecx, 2
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L281:
	jge	.L284
	mov	eax, edx
	shr	eax, cl
	neg	eax
	jne	.L291
	test	edx, edx
	je	.L291
	sub	r9d, 512
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L275:
	jge	.L278
	mov	r10d, eax
	shr	r10d, cl
	neg	r10d
	jne	.L289
	test	eax, eax
	je	.L289
	sub	r8d, 512
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L267:
	sub	r10d, eax
	cmp	r10d, edi
	jge	.L269
.L268:
	mov	r10d, r9d
	mov	ebp, edx
	sar	r10d, 8
	add	r10d, 4
	sub	ebp, r10d
	js	.L317
	cmp	edi, ebp
	jle	.L269
.L271:
	cmp	BYTE PTR 10[rbx], 0
	jne	.L272
	mov	BYTE PTR 10[rbx], 1
.L272:
	mov	r10d, 6
	mov	WORD PTR 16[rbx], r10w
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L262:
	and	eax, -17
	mov	WORD PTR 12[rbx], ax
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L290:
	mov	edx, 4095
	cmp	eax, edx
	cmovg	eax, edx
	add	r9d, eax
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L288:
	mov	eax, 4095
	cmp	r10d, eax
	cmovg	r10d, eax
	add	r8d, r10d
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L289:
	mov	eax, -4095
	cmp	r10d, eax
	cmovl	r10d, eax
	add	r8d, r10d
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L291:
	mov	edx, -4095
	cmp	eax, edx
	cmovl	eax, edx
	add	r9d, eax
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L317:
	sub	r10d, edx
	cmp	edi, r10d
	jg	.L271
	jmp	.L269
.L316:
	mov	BYTE PTR 10[rbx], al
	jmp	.L264
	.seh_endproc
	.p2align 4
	.globl	sub_80145D8
	.def	sub_80145D8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80145D8
sub_80145D8:
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
	mov	rsi, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rsi]
	mov	rcx, rbx
	call	sub_8015118
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	cmp	DWORD PTR [rax], 39999
	jle	.L321
	lea	rax, sub_80149EC[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rsi], rax
.L320:
	call	sub_80152EC
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L321:
	mov	rax, QWORD PTR 8[rax]
	mov	ecx, 229
	mov	QWORD PTR 24[rbx], rax
	mov	BYTE PTR 61[rax], 1
	mov	BYTE PTR 10[rbx], 0
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdx, sub_801464C[rip]
	mov	QWORD PTR 40[rax], rdx
	or	WORD PTR 12[rbx], 16
	jmp	.L320
	.seh_endproc
	.p2align 4
	.globl	sub_80149EC
	.def	sub_80149EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80149EC
sub_80149EC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	eax, 7
	mov	rbx, QWORD PTR 24[rdx]
	mov	WORD PTR 16[rbx], ax
	movzx	eax, BYTE PTR 10[rbx]
	lea	ecx, 1[rax]
	mov	BYTE PTR 10[rbx], cl
	cmp	al, 60
	jbe	.L324
	mov	rcx, QWORD PTR 128[rbx]
	movzx	eax, WORD PTR 18[rcx]
	cmp	ax, 181
	ja	.L324
	sub	eax, 91
	lea	r8, gUnknown_080D5628[rip]
	movzx	ecx, BYTE PTR 48[rcx]
	cdqe
	movzx	eax, BYTE PTR [r8+rax]
	add	eax, ecx
	lea	rcx, gUnknown_080D5590[rip]
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	mov	WORD PTR 16[rbx], ax
	cmp	ax, 7
	je	.L324
	lea	rax, sub_8014350[rip]
	mov	QWORD PTR 40[rdx], rax
.L324:
	mov	rcx, rbx
	call	sub_8015118
	mov	rcx, rbx
	call	sub_8014CC8
	call	sub_80152EC
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_801412C
	.seh_endproc
	.p2align 4
	.globl	sub_80148B8
	.def	sub_80148B8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80148B8
sub_80148B8:
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
	mov	esi, 1
	mov	rdi, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	rbx, QWORD PTR 24[rdi]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L330
	cmp	al, 28
	je	.L374
	xor	esi, esi
	cmp	al, 29
	setne	sil
	lea	esi, 1[rsi+rsi]
.L330:
	movzx	eax, WORD PTR 12[rbx]
	test	al, 16
	je	.L332
	mov	rdx, QWORD PTR 128[rbx]
	movzx	edx, WORD PTR 18[rdx]
	sub	edx, 105
	cmp	dx, 8
	ja	.L333
	mov	ecx, 273
	bt	rcx, rdx
	jnc	.L333
.L332:
	mov	rcx, rbx
	call	sub_8015118
	mov	rcx, rbx
	mov	r9d, esi
	mov	edx, 32
	mov	r8d, 32
	call	sub_8014EFC
	mov	rcx, QWORD PTR 128[rbx]
	cmp	al, 1
	je	.L334
	movzx	eax, WORD PTR 14[rbx]
.L335:
	movzx	edx, WORD PTR 18[rcx]
	xor	r8d, r8d
	mov	WORD PTR 16[rbx], r8w
	cmp	dx, 181
	jbe	.L339
.L352:
	test	BYTE PTR 12[rbx], 16
	jne	.L341
.L340:
	movzx	edx, BYTE PTR 10[rbx]
	test	dl, dl
	jne	.L375
.L341:
	cmp	ax, 120
	jle	.L344
	lea	rsi, sub_8014350[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rdi], rsi
.L344:
	add	eax, 1
	mov	WORD PTR 14[rbx], ax
	call	sub_80152EC
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_801412C
	.p2align 4,,10
	.p2align 3
.L334:
	movzx	edx, WORD PTR 18[rcx]
	movzx	eax, WORD PTR 14[rbx]
	cmp	dx, 181
	ja	.L336
	movzx	r8d, dx
	lea	r9, gUnknown_080D5628[rip]
	lea	r10, gUnknown_080D5590[rip]
	sub	r8d, 91
	movsx	r8, r8d
	movzx	r9d, BYTE PTR [r9+r8]
	movzx	r8d, BYTE PTR 48[rcx]
	add	r8d, r9d
	movsx	r8, r8d
	movzx	r8d, BYTE PTR [r10+r8]
	cmp	ax, 60
	jle	.L337
	cmp	r8b, 2
	jne	.L349
	xor	r8d, r8d
	mov	WORD PTR 16[rbx], r8w
	.p2align 4,,10
	.p2align 3
.L339:
	test	BYTE PTR 12[rbx], 16
	jne	.L341
	sub	edx, 91
	lea	r8, gUnknown_080D5628[rip]
	lea	r10, gUnknown_080D5590[rip]
	movsx	rdx, edx
	movzx	r9d, BYTE PTR [r8+rdx]
.L351:
	movzx	edx, BYTE PTR 48[rcx]
	mov	ecx, 7
	add	edx, r9d
	movsx	rdx, edx
	cmp	BYTE PTR [r10+rdx], 2
	jne	.L340
.L342:
	mov	edx, 16
	mov	BYTE PTR 10[rbx], cl
	mov	WORD PTR 16[rbx], dx
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L374:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 1
	sbb	esi, esi
	and	esi, -2
	add	esi, 3
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L333:
	and	eax, -17
	mov	WORD PTR 12[rbx], ax
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L336:
	cmp	ax, 60
	jle	.L348
	cmp	WORD PTR 16[rbx], 2
	je	.L376
.L349:
	lea	rsi, sub_8014350[rip]
	mov	BYTE PTR 10[rbx], 0
	mov	QWORD PTR 40[rdi], rsi
	jmp	.L335
	.p2align 4,,10
	.p2align 3
.L348:
	xor	esi, esi
	mov	WORD PTR 16[rbx], si
	test	BYTE PTR 12[rbx], 16
	jne	.L344
	movzx	edx, BYTE PTR 10[rbx]
	test	dl, dl
	je	.L344
	mov	r9d, 16
	sub	edx, 1
	mov	WORD PTR 16[rbx], r9w
	mov	BYTE PTR 10[rbx], dl
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L337:
	xor	r11d, r11d
	mov	WORD PTR 16[rbx], r11w
	test	BYTE PTR 12[rbx], 16
	je	.L351
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L375:
	lea	ecx, -1[rdx]
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L376:
	xor	edx, edx
	mov	WORD PTR 16[rbx], dx
	jmp	.L352
	.seh_endproc
	.p2align 4
	.globl	sub_80155D0
	.def	sub_80155D0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80155D0
sub_80155D0:
	.seh_endprologue
	movzx	eax, WORD PTR 12[rcx]
	test	al, 4
	jne	.L377
	test	BYTE PTR 118[rcx], 16
	jne	.L377
	mov	rdx, QWORD PTR 104[rcx]
	or	eax, 4
	mov	WORD PTR 12[rcx], ax
	mov	QWORD PTR [rcx], rdx
.L377:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8015618
	.def	sub_8015618;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8015618
sub_8015618:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	gUnknown_080D5628
	.section .rdata,"dr"
	.align 32
gUnknown_080D5628:
	.ascii "\0\1\4\6\10\12\13\14\16\20\26\31\34\35\36\36 #\36&()*\0\0\0\0\0+./14689:\0>@\0\0\0B\0\0\0\0DGILNQSUV\0^_kwxz|}\200\203\204\215\217\220\222\223\226\227"
	.globl	gUnknown_080D5590
	.align 32
gUnknown_080D5590:
	.ascii "\0\11\12\12\0\0\0\0\0\0\3\3\0\0\0\0\0\0\0\0\1\1\0\0\0\0\0\0\0\0\2\2\4\4\0\4\0\2\0\0\0\13\2\20\20\20\20\17\0\0\0\0\14\14\15\16\0\21\0\0\0\0\0\0\0\0\0\0\10\10\10\10\10\5\5\5\5\5\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\10\10\10\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.globl	gUnknown_080D5548
	.align 32
gUnknown_080D5548:
	.word	455
	.word	0
	.word	456
	.word	0
	.word	457
	.word	0
	.word	455
	.word	0
	.word	456
	.word	0
	.word	457
	.word	0
	.word	457
	.word	1
	.word	458
	.word	0
	.word	459
	.word	0
	.word	460
	.word	0
	.word	460
	.word	1
	.word	461
	.word	0
	.word	462
	.word	0
	.word	463
	.word	0
	.word	463
	.word	1
	.word	464
	.word	0
	.word	465
	.word	0
	.word	470
	.word	0
	.globl	gCheese
	.bss
	.align 8
gCheese:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
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
