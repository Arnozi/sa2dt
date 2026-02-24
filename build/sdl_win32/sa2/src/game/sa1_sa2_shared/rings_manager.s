	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_RingsMgrMain
	.def	Task_RingsMgrMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_RingsMgrMain
Task_RingsMgrMain:
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
	sub	rsp, 136
	.seh_stackalloc	136
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movsx	r12d, BYTE PTR 26[rax]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	ebx, r12d
	neg	ebx
	test	BYTE PTR [rax], 2
	jne	.L1
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	movzx	esi, BYTE PTR 27[rax]
	mov	rax, QWORD PTR [rdi]
	mov	r14, QWORD PTR 24[rax]
	mov	ebp, esi
	neg	ebp
	mov	rax, QWORD PTR 64[r14]
	mov	QWORD PTR 104[rsp], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L3
	cmp	al, 28
	je	.L168
	cmp	al, 29
	je	.L7
.L162:
	movsx	eax, bpl
	xor	r15d, r15d
	mov	DWORD PTR 72[rsp], eax
	movsx	eax, sil
	mov	DWORD PTR 88[rsp], eax
.L6:
	mov	rcx, r14
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 24[r14]
	mov	QWORD PTR 112[rsp], rax
	mov	rax, QWORD PTR 104[rsp]
	lea	rdi, 12[rax]
	movzx	r11d, WORD PTR 4[rax]
	movzx	eax, WORD PTR 8[rax]
	mov	QWORD PTR 64[rsp], rdi
	mov	edi, DWORD PTR 88[rsp]
	mov	DWORD PTR 92[rsp], eax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r9d, DWORD PTR 16[rax]
	mov	eax, DWORD PTR 72[rsp]
	mov	edx, r9d
	sar	edx, 8
	add	eax, edx
	lea	edx, 8[rdx+rdi]
	sar	eax, 8
	sar	edx, 8
	movzx	esi, ax
	cmp	esi, edx
	jg	.L163
	mov	edi, DWORD PTR 92[rsp]
	mov	edx, esi
	cmp	esi, edi
	jnb	.L163
	add	eax, 1
	movsx	r13d, bl
	mov	QWORD PTR 120[rsp], r14
	movzx	ebx, ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	DWORD PTR 84[rsp], r13d
	mov	r13d, r11d
	mov	QWORD PTR 96[rsp], rax
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, r9d
	sar	ecx, 8
	mov	r8d, DWORD PTR 12[rax]
	mov	eax, DWORD PTR 84[rsp]
	mov	r10d, r8d
	sar	r10d, 8
	lea	eax, -8[r10+rax]
	lea	r10d, 16[r10+r12]
	sar	eax, 8
	sar	r10d, 8
	movzx	ebp, ax
	cmp	ebp, r10d
	jg	.L14
	cmp	ebp, r13d
	jnb	.L14
	imul	edx, r13d
	sal	esi, 5
	mov	rdi, QWORD PTR 104[rsp]
	mov	r10d, ebp
	mov	DWORD PTR 32[rsp], esi
	lea	esi, 1[rax]
	movzx	eax, ax
	mov	ebp, ebx
	movzx	esi, si
	lea	rax, 3[rdx+rax]
	mov	r11d, esi
	lea	rdi, [rdi+rax*4]
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L15:
	lea	eax, 16[r12+rdx]
	mov	r10d, r11d
	sar	eax, 8
	cmp	r11d, eax
	jg	.L156
.L171:
	lea	eax, 1[r11]
	add	rdi, 4
	cmp	r11d, r13d
	jnb	.L156
	mov	r11d, eax
.L26:
	mov	eax, DWORD PTR [rdi]
	mov	edx, r8d
	mov	ecx, r9d
	sar	edx, 8
	sar	ecx, 8
	test	eax, eax
	je	.L15
	mov	rbx, QWORD PTR 64[rsp]
	lea	rbx, -8[rbx+rax]
	movzx	eax, BYTE PTR [rbx]
	cmp	al, -1
	je	.L15
	mov	r14d, r10d
	mov	QWORD PTR 56[rsp], rdi
	mov	edi, DWORD PTR 84[rsp]
	mov	DWORD PTR 40[rsp], r13d
	sal	r14d, 5
	mov	DWORD PTR 48[rsp], r11d
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L170:
	lea	esi, 8[rax]
	cmp	r10d, esi
	jg	.L18
.L19:
	mov	esi, DWORD PTR 32[rsp]
	movzx	r10d, BYTE PTR 1[rbx]
	mov	r11d, DWORD PTR 72[rsp]
	add	r10d, esi
	sal	r10d, 3
	add	r11d, ecx
	lea	esi, -16[r10]
	cmp	esi, r11d
	jg	.L77
	cmp	r11d, r10d
	jle	.L20
.L77:
	lea	r13d, -15[r10]
	cmp	r11d, r13d
	jge	.L16
	mov	r11d, DWORD PTR 88[rsp]
	add	r11d, ecx
	cmp	esi, r11d
	jg	.L16
.L20:
	mov	rsi, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rsi]
	lea	r8d, 1[rdx]
	mov	WORD PTR [rsi], r8w
	mov	rsi, QWORD PTR 96[rsp]
	movzx	r9d, BYTE PTR [rsi]
	mov	rsi, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rsi], 29
	je	.L22
	mov	ecx, r8d
	shr	dx, 2
	shr	cx, 2
	movzx	edx, dx
	movzx	ecx, cx
	imul	edx, edx, 5243
	imul	ecx, ecx, 5243
	shr	edx, 17
	shr	ecx, 17
	cmp	cx, dx
	je	.L22
	test	r9b, r9b
	jne	.L22
	mov	rsi, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rsi]
	mov	edx, ecx
	add	edx, 1
	cmp	cx, 255
	mov	ecx, -1
	cmove	edx, ecx
	mov	BYTE PTR [rsi], dl
	mov	rsi, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rsi], 16
.L24:
	movsx	ecx, ax
	movsx	edx, r10w
	call	CreateCollectRingEffect
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR [rbx], -2
	mov	r8d, DWORD PTR 12[rax]
	mov	r9d, DWORD PTR 16[rax]
	mov	edx, r8d
	mov	ecx, r9d
	sar	edx, 8
	sar	ecx, 8
	.p2align 4,,10
	.p2align 3
.L16:
	movzx	eax, BYTE PTR 2[rbx]
	add	rbx, 2
	cmp	al, -1
	je	.L169
.L25:
	mov	edx, r8d
	mov	ecx, r9d
	sar	edx, 8
	sar	ecx, 8
	cmp	al, -2
	je	.L16
	test	r15d, r15d
	jne	.L17
	mov	rsi, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rsi], 29
	je	.L16
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rsi], -128
	jne	.L16
.L17:
	add	eax, r14d
	lea	r10d, [rdi+rdx]
	sal	eax, 3
	lea	r11d, -8[rax]
	cmp	r11d, r10d
	jle	.L170
.L18:
	lea	esi, -7[rax]
	cmp	r10d, esi
	jge	.L16
	lea	r10d, [r12+rdx]
	cmp	r11d, r10d
	jle	.L19
	movzx	eax, BYTE PTR 2[rbx]
	add	rbx, 2
	cmp	al, -1
	jne	.L25
	.p2align 4,,10
	.p2align 3
.L169:
	mov	r11d, DWORD PTR 48[rsp]
	lea	eax, 16[r12+rdx]
	mov	r13d, DWORD PTR 40[rsp]
	sar	eax, 8
	mov	rdi, QWORD PTR 56[rsp]
	mov	r10d, r11d
	cmp	r11d, eax
	jle	.L171
	.p2align 4,,10
	.p2align 3
.L156:
	mov	ebx, ebp
.L14:
	mov	eax, DWORD PTR 88[rsp]
	mov	esi, ebx
	lea	eax, 8[rax+rcx]
	sar	eax, 8
	cmp	ebx, eax
	jg	.L157
	mov	edi, DWORD PTR 92[rsp]
	lea	eax, 1[rbx]
	mov	edx, ebx
	cmp	ebx, edi
	jnb	.L157
	mov	ebx, eax
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L160:
	mov	r13d, edi
	movzx	edi, WORD PTR 84[rsp]
.L56:
	add	edi, 1
	lea	r8d, 239[rcx]
	movzx	edx, di
	mov	eax, edx
	sal	eax, 8
	cmp	r8d, eax
	jl	.L1
	mov	eax, DWORD PTR 92[rsp]
	cmp	edx, eax
	jb	.L66
.L1:
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	cmp	r8w, 255
	jbe	.L24
	cmp	r9b, 5
	jne	.L24
	mov	rsi, QWORD PTR .refptr.gRingCount[rip]
	mov	edx, 255
	mov	WORD PTR [rsi], dx
	jmp	.L24
.L157:
	mov	r14, QWORD PTR 120[rsp]
	mov	r11d, r13d
.L13:
	mov	rax, QWORD PTR 96[rsp]
	cmp	BYTE PTR [rax], 2
	jbe	.L172
	xor	esi, esi
	mov	QWORD PTR 56[rsp], r14
	mov	r15, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	mov	ebp, r11d
	mov	r8, rsi
	jmp	.L11
.L30:
	add	r8, 1
	cmp	r8, 4
	je	.L173
.L11:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	cmp	al, r8b
	je	.L30
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rax, QWORD PTR [rax+r8*8]
	test	rax, rax
	je	.L30
	mov	rdi, QWORD PTR 24[rax]
	movsx	r10d, WORD PTR 98[rdi]
	movsx	eax, BYTE PTR 61[rdi]
	movsx	ecx, BYTE PTR 63[rdi]
	add	eax, r10d
	sar	eax, 8
	lea	edx, 8[rcx+r10]
	movzx	r14d, ax
	sar	edx, 8
	cmp	r14d, edx
	jg	.L30
	mov	ebx, DWORD PTR 92[rsp]
	mov	r13d, r14d
	cmp	r14d, ebx
	jnb	.L30
	add	eax, 1
	mov	QWORD PTR 72[rsp], r8
	mov	r9d, r14d
	movsx	edx, BYTE PTR 62[rdi]
	movzx	ebx, ax
	movzx	eax, WORD PTR 96[rdi]
	mov	r14, QWORD PTR 64[rsp]
	mov	WORD PTR 40[rsp], ax
	.p2align 4,,10
	.p2align 3
.L42:
	movsx	r8d, WORD PTR 40[rsp]
	movsx	eax, BYTE PTR 60[rdi]
	lea	esi, -8[rax+r8]
	lea	eax, 16[rdx+r8]
	sar	esi, 8
	sar	eax, 8
	movzx	r12d, si
	cmp	r12d, eax
	jg	.L31
	cmp	r12d, ebp
	jnb	.L31
	sal	r9d, 5
	imul	r13d, ebp
	add	esi, 1
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 32[rsp], r9d
	movzx	esi, si
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L32:
	lea	eax, 16[rdx+r8]
	mov	r12d, esi
	sar	eax, 8
	cmp	esi, eax
	jg	.L164
.L155:
	lea	eax, 1[rsi]
	cmp	esi, ebp
	jnb	.L164
	mov	esi, eax
.L41:
	lea	eax, -1[rsi]
	movzx	eax, ax
	add	rax, r13
	mov	eax, DWORD PTR [r14+rax*4]
	test	eax, eax
	je	.L32
	lea	rbx, -8[r14+rax]
	movzx	eax, BYTE PTR [rbx]
	cmp	al, -1
	je	.L32
	sal	r12d, 5
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L175:
	lea	r9d, 8[rcx]
	cmp	eax, r9d
	jg	.L34
.L35:
	mov	eax, DWORD PTR 32[rsp]
	movzx	edx, BYTE PTR -1[rbx]
	add	edx, eax
	movsx	eax, BYTE PTR 61[rdi]
	sal	edx, 3
	lea	r9d, -16[rdx]
	add	eax, r10d
	cmp	r9d, eax
	jg	.L78
	cmp	eax, edx
	jle	.L37
.L78:
	lea	r11d, -15[rdx]
	cmp	eax, r11d
	jge	.L33
	movsx	eax, BYTE PTR 63[rdi]
	add	eax, r10d
	cmp	r9d, eax
	jg	.L33
.L37:
	movzx	r9d, BYTE PTR 102[rdi]
	mov	r11, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	eax, BYTE PTR 18[rdi]
	movsx	r9, BYTE PTR [r11+r9]
	sub	eax, 28
	sub	al, BYTE PTR [r15+r9*2]
	cmp	al, 1
	ja	.L39
	test	BYTE PTR 100[rdi], 4
	jne	.L33
.L39:
	movsx	edx, dx
	movsx	ecx, cx
	call	CreateCollectRingEffect
	mov	BYTE PTR -2[rbx], -2
	movsx	r8d, WORD PTR 96[rdi]
	movsx	r10d, WORD PTR 98[rdi]
	mov	WORD PTR 40[rsp], r8w
	.p2align 4,,10
	.p2align 3
.L33:
	movzx	eax, BYTE PTR [rbx]
	cmp	al, -1
	je	.L174
.L40:
	add	rbx, 2
	cmp	al, -2
	je	.L33
	movzx	ecx, al
	movsx	eax, BYTE PTR 60[rdi]
	add	ecx, r12d
	sal	ecx, 3
	add	eax, r8d
	lea	edx, -8[rcx]
	cmp	edx, eax
	jle	.L175
.L34:
	lea	r9d, -7[rcx]
	cmp	eax, r9d
	jge	.L33
	movsx	eax, BYTE PTR 62[rdi]
	add	eax, r8d
	cmp	edx, eax
	jle	.L35
	movzx	eax, BYTE PTR [rbx]
	cmp	al, -1
	jne	.L40
	.p2align 4,,10
	.p2align 3
.L174:
	movsx	edx, BYTE PTR 62[rdi]
	mov	r12d, esi
	lea	eax, 16[rdx+r8]
	sar	eax, 8
	cmp	esi, eax
	jle	.L155
	.p2align 4,,10
	.p2align 3
.L164:
	mov	ebx, DWORD PTR 48[rsp]
	movsx	ecx, BYTE PTR 63[rdi]
.L31:
	lea	eax, 8[rcx+r10]
	mov	r9d, ebx
	sar	eax, 8
	cmp	ebx, eax
	jg	.L158
	lea	eax, 1[rbx]
	mov	r13d, ebx
	mov	ebx, DWORD PTR 92[rsp]
	cmp	r9d, ebx
	jnb	.L158
	mov	ebx, eax
	jmp	.L42
.L158:
	mov	r8, QWORD PTR 72[rsp]
	add	r8, 1
	cmp	r8, 4
	jne	.L11
.L173:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r11d, ebp
	mov	r14, QWORD PTR 56[rsp]
	mov	edx, DWORD PTR 4[rax]
	mov	ecx, edx
	sar	ecx, 8
	mov	edi, ecx
	test	BYTE PTR 59[rbx], 8
	jne	.L176
.L43:
	movzx	r8d, di
	add	edx, 239
	mov	ecx, r8d
	sal	ecx, 8
	cmp	edx, ecx
	jl	.L1
	mov	ebx, DWORD PTR 92[rsp]
	cmp	r8d, ebx
	jnb	.L1
	mov	ecx, DWORD PTR 4[rax]
	xor	r13d, r13d
	mov	edx, r8d
	mov	r12, rax
	.p2align 4,,10
	.p2align 3
.L66:
	mov	eax, DWORD PTR [r12]
	mov	esi, eax
	lea	r9d, 425[rax]
	sar	esi, 8
	movzx	ebp, si
	mov	ebx, esi
	mov	r8d, ebp
	sal	r8d, 8
	cmp	r9d, r8d
	jl	.L56
	cmp	ebp, r11d
	jnb	.L56
	mov	r15d, edx
	imul	edx, r11d
	movzx	esi, si
	mov	WORD PTR 84[rsp], di
	sal	r15d, 5
	mov	edi, r13d
	mov	r13d, r15d
	mov	r15d, ebp
	mov	ebp, ebx
	lea	rdx, 3[rdx+rsi]
	mov	rsi, QWORD PTR 104[rsp]
	lea	rsi, [rsi+rdx*4]
	mov	rbx, rsi
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L57:
	add	ebp, 1
	movzx	r15d, bp
	mov	edx, r15d
	sal	edx, 8
	cmp	r9d, edx
	jl	.L160
	add	rbx, 4
	cmp	r15d, r11d
	jnb	.L160
.L63:
	mov	edx, DWORD PTR [rbx]
	test	edx, edx
	je	.L57
	mov	rsi, QWORD PTR 64[rsp]
	lea	rsi, -8[rsi+rdx]
	movzx	edx, BYTE PTR [rsi]
	cmp	dl, -1
	je	.L57
	sal	r15d, 5
	mov	WORD PTR 40[rsp], bp
	mov	ebp, edi
	mov	QWORD PTR 48[rsp], rbx
	mov	edi, r15d
	mov	rbx, rsi
	mov	DWORD PTR 32[rsp], r11d
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L58:
	movzx	edx, BYTE PTR [rbx]
	cmp	dl, -1
	je	.L177
.L62:
	add	rbx, 2
	cmp	dl, -2
	je	.L58
	movzx	esi, dl
	movzx	r15d, BYTE PTR -1[rbx]
	add	esi, edi
	sal	esi, 3
	mov	edx, esi
	sub	edx, eax
	add	edx, 8
	cmp	edx, 442
	ja	.L58
	add	r15d, r13d
	sal	r15d, 3
	mov	edx, r15d
	sub	edx, ecx
	cmp	edx, 256
	ja	.L58
	test	bpl, bpl
	je	.L59
	movzx	edx, BYTE PTR 51[r14]
	cmp	dl, -1
	je	.L59
	mov	rcx, QWORD PTR .refptr.gOamMallocBuffer[rip]
	lea	rax, [rdx+rdx*2]
	lea	rdx, [rcx+rax*4]
	movzx	ecx, WORD PTR 42[r14]
	mov	QWORD PTR 56[rsp], rdx
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	r8, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], r8
	je	.L1
	mov	rdx, QWORD PTR 56[rsp]
	mov	r9d, -2147483643
	mov	ecx, 3
	movzx	esi, si
	mov	QWORD PTR 72[rsp], r8
	sal	r15d, 16
	call	DmaSet
	mov	ecx, DWORD PTR 4[r12]
	mov	eax, DWORD PTR [r12]
	or	r15d, esi
	mov	rsi, QWORD PTR 112[rsp]
	movd	xmm1, r15d
	mov	r8, QWORD PTR 72[rsp]
	mov	edx, ecx
	movzx	r9d, ax
	sal	edx, 16
	movd	xmm0, DWORD PTR 8[rsi]
	or	edx, r9d
	movd	xmm2, edx
	paddw	xmm0, xmm2
	psubw	xmm1, xmm0
	movd	DWORD PTR [r8], xmm1
.L61:
	movzx	edx, BYTE PTR [rbx]
	add	ebp, 1
	cmp	dl, -1
	jne	.L62
	.p2align 4,,10
	.p2align 3
.L177:
	mov	edi, ebp
	mov	r11d, DWORD PTR 32[rsp]
	movzx	ebp, WORD PTR 40[rsp]
	lea	r9d, 425[rax]
	mov	rbx, QWORD PTR 48[rsp]
	jmp	.L57
.L172:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 4[rax]
	mov	ecx, edx
	sar	ecx, 8
	mov	edi, ecx
	test	BYTE PTR 59[rbx], 8
	je	.L43
.L67:
	movzx	r12d, di
	add	edx, 239
	mov	ecx, r12d
	sal	ecx, 8
	cmp	edx, ecx
	jl	.L1
	mov	ebx, DWORD PTR 92[rsp]
	cmp	r12d, ebx
	jnb	.L1
	mov	r9d, DWORD PTR 4[rax]
	mov	rdx, QWORD PTR 64[rsp]
	xor	r13d, r13d
	mov	r15, rax
.L55:
	mov	eax, DWORD PTR [r15]
	mov	r8d, eax
	lea	r10d, 425[rax]
	sar	r8d, 8
	movzx	ebp, r8w
	mov	ebx, r8d
	mov	ecx, ebp
	sal	ecx, 8
	cmp	r10d, ecx
	jl	.L45
	mov	ecx, r11d
	movzx	r8d, r8w
	imul	ecx, r12d
	add	r8, rcx
	mov	r8d, DWORD PTR [rdx+r8*4]
	cmp	ebp, r11d
	jnb	.L45
	mov	WORD PTR 84[rsp], di
	sal	r12d, 5
	mov	esi, ebx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L47:
	add	esi, 1
	movzx	ebp, si
	mov	r8d, ebp
	sal	r8d, 8
	cmp	r10d, r8d
	jl	.L159
	movzx	r8d, si
	add	r8, rcx
	mov	r8d, DWORD PTR [rdx+r8*4]
	cmp	ebp, r11d
	jnb	.L159
.L46:
	test	r8d, r8d
	je	.L47
	lea	rbx, -8[rdx+r8]
	movzx	r8d, BYTE PTR [rbx]
	cmp	r8b, -1
	je	.L47
	sal	ebp, 5
	mov	WORD PTR 64[rsp], si
	mov	DWORD PTR 48[rsp], r11d
	mov	esi, ebp
	mov	rbp, rbx
	mov	QWORD PTR 56[rsp], rdx
	mov	QWORD PTR 72[rsp], rcx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L51:
	mov	rcx, QWORD PTR .refptr.gOamMallocBuffer[rip]
	lea	rax, [rdx+rdx*2]
	lea	rdx, [rcx+rax*4]
	movzx	ecx, WORD PTR 42[r14]
	mov	QWORD PTR 32[rsp], rdx
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	r8, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], r8
	je	.L1
	mov	rdx, QWORD PTR 32[rsp]
	mov	ecx, 3
	movzx	edi, di
	sal	ebx, 16
	mov	r9d, -2147483643
	mov	QWORD PTR 40[rsp], r8
	or	ebx, edi
	call	DmaSet
	mov	r9d, DWORD PTR 4[r15]
	mov	eax, DWORD PTR [r15]
	movd	xmm1, ebx
	mov	rdi, QWORD PTR 112[rsp]
	mov	r8, QWORD PTR 40[rsp]
	mov	edx, r9d
	movzx	ecx, ax
	sal	edx, 16
	movd	xmm0, DWORD PTR 8[rdi]
	or	edx, ecx
	movd	xmm3, edx
	paddw	xmm0, xmm3
	psubw	xmm1, xmm0
	movd	DWORD PTR [r8], xmm1
.L52:
	add	r13d, 1
.L48:
	movzx	r8d, BYTE PTR 0[rbp]
	cmp	r8b, -1
	je	.L178
.L53:
	add	rbp, 2
	cmp	r8b, -2
	je	.L48
	movzx	edi, r8b
	movzx	ebx, BYTE PTR -1[rbp]
	add	edi, esi
	sal	edi, 3
	mov	edx, edi
	sub	edx, eax
	add	edx, 8
	cmp	edx, 442
	ja	.L48
	add	ebx, r12d
	sal	ebx, 3
	mov	edx, ebx
	sub	edx, r9d
	cmp	edx, 256
	ja	.L48
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 12[rcx]
	mov	edx, ecx
	mov	DWORD PTR 32[rsp], ecx
	lea	ecx, -64[rdi]
	sar	edx, 8
	cmp	ecx, edx
	jg	.L49
	lea	ecx, 64[rdi]
	cmp	edx, ecx
	jg	.L49
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 16[rcx]
	mov	edx, ecx
	mov	DWORD PTR 32[rsp], ecx
	lea	ecx, -72[rbx]
	sar	edx, 8
	cmp	ecx, edx
	jg	.L49
	lea	ecx, 56[rbx]
	cmp	edx, ecx
	jle	.L179
	.p2align 4,,10
	.p2align 3
.L49:
	test	r13b, r13b
	je	.L50
	movzx	edx, BYTE PTR 51[r14]
	cmp	dl, -1
	jne	.L51
.L50:
	sub	edi, eax
	sub	ebx, r9d
	mov	BYTE PTR 51[r14], -1
	mov	rcx, r14
	mov	WORD PTR 38[r14], di
	mov	WORD PTR 40[r14], bx
	call	DisplaySprite
	mov	eax, DWORD PTR [r15]
	mov	r9d, DWORD PTR 4[r15]
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L59:
	sub	esi, eax
	sub	r15d, ecx
	mov	BYTE PTR 51[r14], -1
	mov	rcx, r14
	mov	WORD PTR 38[r14], si
	mov	WORD PTR 40[r14], r15w
	call	DisplaySprite
	mov	eax, DWORD PTR [r12]
	mov	ecx, DWORD PTR 4[r12]
	jmp	.L61
.L3:
	mov	r15, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	cmp	BYTE PTR [r15], 0
	je	.L8
	mov	r13, QWORD PTR .refptr.gBossRingsRespawnCount[rip]
	cmp	BYTE PTR 0[r13], 0
	jne	.L68
.L8:
	cmp	al, 29
	je	.L9
.L70:
	mov	rax, QWORD PTR [rdi]
	mov	r14, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 64[r14]
	mov	QWORD PTR 104[rsp], rax
	jmp	.L162
.L176:
	mov	rbx, QWORD PTR 96[rsp]
	cmp	BYTE PTR [rbx], 5
	je	.L43
	jmp	.L67
.L7:
	mov	r15, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	cmp	BYTE PTR [r15], 0
	je	.L9
	mov	r13, QWORD PTR .refptr.gBossRingsRespawnCount[rip]
	cmp	BYTE PTR 0[r13], 0
	jne	.L68
.L9:
	call	SuperSonicGetFlags
	xor	r15d, r15d
	mov	r12d, 10
	mov	ebx, -10
	test	eax, 540
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	sete	r15b
	lea	rdx, 16[rax]
	lea	rcx, 12[rax]
	call	SuperSonicGetPos
	mov	rax, QWORD PTR [rdi]
	mov	DWORD PTR 88[rsp], 10
	mov	DWORD PTR 72[rsp], -10
	mov	r14, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 64[r14]
	mov	QWORD PTR 104[rsp], rax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L178:
	mov	r11d, DWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	lea	r10d, 425[rax]
	movzx	esi, WORD PTR 64[rsp]
	mov	rcx, QWORD PTR 72[rsp]
	jmp	.L47
.L159:
	movzx	edi, WORD PTR 84[rsp]
.L45:
	add	edi, 1
	lea	ecx, 239[r9]
	movzx	r12d, di
	mov	eax, r12d
	sal	eax, 8
	cmp	ecx, eax
	jl	.L1
	mov	eax, DWORD PTR 92[rsp]
	cmp	r12d, eax
	jb	.L55
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L179:
	movsx	edx, bx
	movsx	ecx, di
	call	CreateMagneticRing
	mov	BYTE PTR -2[rbp], -2
	mov	eax, DWORD PTR [r15]
	mov	r9d, DWORD PTR 4[r15]
	jmp	.L48
.L168:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L162
	mov	r15, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	cmp	BYTE PTR [r15], 0
	je	.L162
	mov	r13, QWORD PTR .refptr.gBossRingsRespawnCount[rip]
	cmp	BYTE PTR 0[r13], 0
	je	.L70
.L68:
	lea	rdx, gSpritePosData_rings[rip]
	mov	rcx, QWORD PTR [rdx+rax*8]
	mov	rdx, QWORD PTR 104[rsp]
	call	RLUnCompWram
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	sub	BYTE PTR 0[r13], 1
	mov	BYTE PTR [r15], 0
	movzx	eax, BYTE PTR [rax]
	jmp	.L8
.L163:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	QWORD PTR 96[rsp], rax
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_RingsMgr
	.def	TaskDestructor_RingsMgr;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_RingsMgr
TaskDestructor_RingsMgr:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 64[rax]
	jmp	EwramFree
	.seh_endproc
	.p2align 4
	.globl	CreateStageRingsManager
	.def	CreateStageRingsManager;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageRingsManager
CreateStageRingsManager:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L182
	lea	rax, TaskDestructor_RingsMgr[rip]
	mov	edx, 72
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_RingsMgrMain[rip]
	lea	rdi, gSpritePosData_rings[rip]
	call	TaskCreate
	mov	rbp, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rbx, rax
	movsx	rax, BYTE PTR 0[rbp]
	mov	rax, QWORD PTR [rdi+rax*8]
	mov	ecx, DWORD PTR [rax]
	shr	ecx, 8
	call	EwramMalloc
	mov	rsi, rax
	movsx	rax, BYTE PTR 0[rbp]
	mov	rdx, rsi
	mov	rcx, QWORD PTR [rdi+rax*8]
	call	RLUnCompWram
.L183:
	mov	rax, QWORD PTR 24[rbx]
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	xor	ecx, ecx
	mov	QWORD PTR 64[rax], rsi
	mov	rax, QWORD PTR 24[rbx]
	lea	rdx, 73472[rdi]
	mov	QWORD PTR 8[rax], rdx
	mov	edx, -256
	mov	DWORD PTR 16[rax], 47579136
	mov	WORD PTR 48[rax], dx
	mov	BYTE PTR 50[rax], 16
	mov	BYTE PTR 53[rax], 0
	mov	QWORD PTR 32[rax], 270848
	mov	DWORD PTR 40[rax], 83886080
	mov	WORD PTR 44[rax], cx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L182:
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 72
	lea	rcx, Task_RingsMgrMain[rip]
	call	TaskCreate
	mov	rbx, rax
	mov	rax, QWORD PTR .refptr.EWRAM_START[rip]
	mov	rdx, QWORD PTR 208908[rax]
	mov	rcx, QWORD PTR 208904[rax]
	mov	edx, DWORD PTR [rdx]
	shr	edx, 8
	lea	edx, 12[0+rdx*4]
	and	edx, 134217712
	lea	rsi, 258048[rax+rdx]
	mov	rdx, rsi
	call	RLUnCompWram
	jmp	.L183
	.seh_endproc
	.globl	gSpritePosData_rings
	.section .rdata,"dr"
	.align 32
gSpritePosData_rings:
	.quad	zone1_act1_rings
	.quad	zone1_act2_rings
	.quad	zone1_boss_rings
	.quad	zone1_act2_rings
	.quad	zone2_act1_rings
	.quad	zone2_act2_rings
	.quad	zone2_boss_rings
	.quad	zone2_act2_rings
	.quad	zone3_act1_rings
	.quad	zone3_act2_rings
	.quad	zone3_boss_rings
	.quad	zone3_act2_rings
	.quad	zone4_act1_rings
	.quad	zone4_act2_rings
	.quad	zone4_boss_rings
	.quad	zone4_act2_rings
	.quad	zone5_act1_rings
	.quad	zone5_act2_rings
	.quad	zone5_boss_rings
	.quad	zone5_act2_rings
	.quad	zone6_act1_rings
	.quad	zone6_act2_rings
	.quad	zone6_boss_rings
	.quad	zone6_act2_rings
	.quad	zone7_act1_rings
	.quad	zone7_act2_rings
	.quad	zone7_boss_rings
	.quad	zone7_act2_rings
	.quad	zone8_act1_rings
	.quad	zone8_act2_rings
	.quad	zone8_boss_rings
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	CreateCollectRingEffect;	.scl	2;	.type	32;	.endef
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetFlags;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetPos;	.scl	2;	.type	32;	.endef
	.def	CreateMagneticRing;	.scl	2;	.type	32;	.endef
	.def	RLUnCompWram;	.scl	2;	.type	32;	.endef
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gOamMallocBuffer, "dr"
	.globl	.refptr.gOamMallocBuffer
	.linkonce	discard
.refptr.gOamMallocBuffer:
	.quad	gOamMallocBuffer
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gBossRingsRespawnCount, "dr"
	.globl	.refptr.gBossRingsRespawnCount
	.linkonce	discard
.refptr.gBossRingsRespawnCount:
	.quad	gBossRingsRespawnCount
	.section	.rdata$.refptr.gBossRingsShallRespawn, "dr"
	.globl	.refptr.gBossRingsShallRespawn
	.linkonce	discard
.refptr.gBossRingsShallRespawn:
	.quad	gBossRingsShallRespawn
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
