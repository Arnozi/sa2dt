	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	MultiBootMain
	.def	MultiBootMain;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBootMain
MultiBootMain:
	push	r14
	.seh_pushreg	r14
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
	cmp	BYTE PTR 24[rcx], -23
	mov	rbx, rcx
	je	.L26
	movzx	r8d, BYTE PTR 98[rcx]
	cmp	r8b, 15
	ja	.L3
	cmp	BYTE PTR 96[rcx], 0
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	jne	.L4
.L5:
	movzx	eax, BYTE PTR 24[rbx]
	cmp	al, -33
	ja	.L160
	cmp	al, 2
	je	.L27
	jbe	.L161
	cmp	al, -48
	je	.L31
	cmp	al, -47
	jne	.L162
	movzx	r8d, BYTE PTR 97[rbx]
	lea	rdx, 294[rsi]
	mov	eax, 3
.L62:
	bt	r8d, eax
	movzx	ecx, WORD PTR [rdx]
	jnc	.L61
	movzx	ecx, ch
	cmp	ecx, 115
	jne	.L156
.L61:
	sub	rdx, 2
	sub	eax, 1
	jne	.L62
	mov	rcx, rbx
	call	MultiBoot
	test	eax, eax
	jne	.L63
	mov	edx, 400
	mov	BYTE PTR 24[rbx], -32
	mov	WORD PTR 22[rbx], dx
	.p2align 4,,10
	.p2align 3
.L26:
	xor	eax, eax
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	test	al, al
	je	.L163
	movzx	r9d, BYTE PTR 29[rbx]
.L42:
	mov	BYTE PTR 97[rbx], 0
	lea	rdx, 294[rsi]
	mov	eax, 2
	xor	r10d, r10d
	lea	rdi, gMultiBootRequiredData[rip]
	mov	r11d, 1
.L48:
	movzx	r8d, WORD PTR [rdx]
	mov	ecx, r8d
	movzx	ecx, ch
	cmp	ecx, 114
	je	.L164
.L46:
	sub	rax, 1
	sub	rdx, 2
	cmp	rax, -1
	jne	.L48
	cmp	r9b, r10b
	je	.L49
.L155:
	movzx	r9d, BYTE PTR 30[rbx]
.L43:
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	movzx	edx, r9b
	mov	r14d, 8323
	or	dh, 98
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], r14w
	mov	BYTE PTR 96[rbx], 1
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	r11d, BYTE PTR 97[rbx]
	lea	r10, 294[rsi]
	mov	eax, 3
	lea	r9, gMultiBootRequiredData[rip+4]
.L52:
	mov	ecx, eax
	movzx	edx, r11b
	sar	edx, cl
	mov	ecx, eax
	sub	eax, 1
	and	edx, 1
	je	.L51
	movzx	edx, WORD PTR [r10]
	cmp	dx, WORD PTR [r9]
	je	.L51
	mov	edx, 1
	sal	edx, cl
	xor	r11d, edx
	mov	BYTE PTR 97[rbx], r11b
.L51:
	sub	r10, 2
	sub	r9, 2
	test	eax, eax
	jne	.L52
	test	r11b, r11b
	je	.L72
	mov	BYTE PTR 24[rbx], 4
	mov	eax, 4
.L69:
	mov	rcx, QWORD PTR 48[rbx]
	movzx	eax, al
	movzx	edx, BYTE PTR -3[rcx+rax]
	movzx	eax, BYTE PTR -4[rcx+rax]
	sal	edx, 8
	or	edx, eax
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	mov	eax, 8323
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], ax
	cmp	BYTE PTR 99[rbx], 1
	mov	BYTE PTR 96[rbx], 1
	jne	.L26
	mov	eax, 31069
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L165:
	sub	eax, 1
	je	.L4
.L71:
	movzx	edx, WORD PTR 296[rsi]
	and	edx, 128
	jne	.L165
.L4:
	mov	BYTE PTR 96[rbx], 0
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 252
	cmp	ax, 8
	je	.L5
	xor	ebp, ebp
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 29[rbx], bp
	mov	BYTE PTR 98[rbx], 15
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L3:
	sub	r8d, 1
	mov	BYTE PTR 98[rcx], r8b
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L163:
	movzx	edx, WORD PTR 294[rsi]
	cmp	dx, -1
	jne	.L74
	movzx	edx, WORD PTR 292[rsi]
	cmp	dx, -1
	jne	.L75
	movzx	ecx, WORD PTR 290[rsi]
	cmp	cx, -1
	setne	cl
	setne	dl
	movzx	ecx, cl
	lea	r9d, [rdx+rdx]
	add	ecx, ecx
.L34:
	movzx	edx, BYTE PTR 30[rbx]
	mov	BYTE PTR 29[rbx], r9b
	movzx	r10d, WORD PTR 294[rsi]
	test	dl, 8
	je	.L35
	cmp	r10w, 29192
	jne	.L154
.L35:
	movzx	r10d, WORD PTR 292[rsi]
	test	dl, 4
	je	.L37
	cmp	r10w, 29188
	jne	.L154
.L37:
	movzx	r10d, WORD PTR 290[rsi]
	test	dl, 2
	je	.L39
	cmp	r10w, 29186
	jne	.L154
.L39:
	mov	eax, edx
	and	eax, r9d
	mov	BYTE PTR 30[rbx], al
	test	ecx, ecx
	je	.L77
	test	r8b, r8b
	jne	.L166
	cmp	al, r9b
	je	.L43
	mov	BYTE PTR 30[rbx], 0
	mov	BYTE PTR 24[rbx], 1
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	r10d, BYTE PTR 97[rbx]
	lea	rdx, 294[rsi]
	xor	r11d, r11d
	mov	eax, 2
	mov	r9d, 1
	lea	rdi, gMultiBootRequiredData[rip]
.L57:
	movzx	ecx, WORD PTR [rdx]
	lea	r8d, 1[rax]
	bt	r10d, r8d
	mov	BYTE PTR 25[rbx+rax], cl
	jnc	.L54
	movzx	ebp, ch
	mov	r8d, ebp
	sub	r8d, 114
	cmp	r8d, 1
	ja	.L156
	cmp	cx, WORD PTR [rdi+rax*2]
	cmove	r9d, r11d
.L54:
	sub	rax, 1
	sub	rdx, 2
	cmp	rax, -1
	jne	.L57
	test	r9d, r9d
	je	.L167
	movzx	edx, BYTE PTR 27[rbx]
	movzx	eax, BYTE PTR 26[rbx]
	mov	BYTE PTR 24[rbx], -47
	lea	eax, 17[rdx+rax]
	movzx	edx, BYTE PTR 25[rbx]
	add	edx, eax
	mov	BYTE PTR 20[rbx], dl
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 140
	cmp	ax, 8
	je	.L60
	.p2align 4,,10
	.p2align 3
.L158:
	xor	r10d, r10d
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 29[rbx], r10w
	mov	BYTE PTR 98[rbx], 15
	mov	BYTE PTR 96[rbx], 0
.L157:
	xor	eax, 8
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, 8195
	xor	r9d, r9d
	movzx	eax, ax
	mov	WORD PTR 22[rbx], dx
	mov	WORD PTR 308[rsi], cx
	mov	WORD PTR 296[rsi], r8w
	mov	WORD PTR 298[rsi], r9w
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	lea	ecx, 1[rax]
	mov	ebp, r11d
	mov	WORD PTR [rdi+rax*2], r8w
	sal	ebp, cl
	movzx	ecx, r8b
	cmp	ebp, ecx
	jne	.L46
	or	r10d, r8d
	mov	BYTE PTR 97[rbx], r10b
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L160:
	cmp	al, -32
	je	.L8
	lea	edx, 25[rax]
	movzx	r10d, BYTE PTR 30[rbx]
	lea	rcx, 294[rsi]
	cmp	dl, 1
	mov	edx, 3
	ja	.L14
.L10:
	bt	r10d, edx
	movzx	r9d, WORD PTR [rcx]
	jnc	.L20
	cmp	DWORD PTR 4[rbx], r9d
	jne	.L168
.L20:
	sub	rcx, 2
	sub	edx, 1
	jne	.L10
	add	eax, 1
	mov	BYTE PTR 24[rbx], al
	cmp	al, -23
	je	.L26
	mov	rax, QWORD PTR 48[rbx]
	movzx	eax, WORD PTR 174[rax]
	movd	xmm0, eax
	mov	edx, eax
	pshufd	xmm0, xmm0, 0xe0
	movq	QWORD PTR [rbx], xmm0
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	bt	r10d, edx
	movzx	r9d, WORD PTR [rcx]
	jnc	.L13
	cmp	DWORD PTR 4[rbx], r9d
	jne	.L8
.L13:
	sub	rcx, 2
	sub	edx, 1
	jne	.L14
	mov	edx, DWORD PTR [rbx]
	add	eax, 1
	mov	BYTE PTR 24[rbx], al
	movzx	eax, dx
	mov	DWORD PTR 4[rbx], eax
	test	edx, edx
	jne	.L15
	mov	rax, QWORD PTR 48[rbx]
	movzx	edx, WORD PTR 172[rax]
	mov	DWORD PTR 4[rbx], edx
	sal	edx, 5
.L15:
	shr	edx, 5
	mov	DWORD PTR [rbx], edx
.L16:
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	mov	r10d, 8323
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], r10w
	cmp	BYTE PTR 99[rbx], 1
	mov	BYTE PTR 96[rbx], 1
	jne	.L169
	movzx	eax, BYTE PTR 24[rbx]
	cmp	al, -23
	je	.L26
	cmp	al, -31
	jbe	.L22
	mov	eax, 31069
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L170:
	sub	eax, 1
	je	.L4
.L24:
	movzx	edx, WORD PTR 296[rsi]
	and	edx, 128
	jne	.L170
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L162:
	mov	edx, eax
	mov	r11d, 98
	movzx	r14d, BYTE PTR 97[rbx]
	lea	r9, 294[rsi]
	shr	dl
	mov	ecx, 3
	mov	r12d, 1
	movzx	edx, dl
	sub	r11d, edx
.L66:
	movzx	r10d, r14b
	bt	r10d, ecx
	jnc	.L64
	movzx	r10d, WORD PTR [r9]
	mov	edi, r12d
	sal	edi, cl
	mov	edx, r10d
	movzx	ebp, dh
	cmp	ebp, r11d
	je	.L171
.L65:
	xor	r14d, edi
	mov	BYTE PTR 97[rbx], r14b
.L64:
	sub	r9, 2
	sub	ecx, 1
	jne	.L66
	cmp	al, -60
	je	.L172
.L67:
	test	r14b, r14b
	je	.L72
	add	eax, 2
	mov	BYTE PTR 24[rbx], al
	cmp	al, -60
	jne	.L69
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L171:
	movzx	r10d, r10b
	cmp	edi, r10d
	jne	.L65
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L63:
	xor	eax, eax
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 29[rbx], ax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	xor	eax, eax
	mov	BYTE PTR 96[rbx], 0
	mov	WORD PTR 308[rsi], ax
	mov	eax, 8195
	mov	WORD PTR 296[rsi], ax
	xor	eax, eax
	mov	WORD PTR 298[rsi], ax
	mov	eax, 112
	mov	BYTE PTR 98[rbx], 30
	jmp	.L1
.L154:
	mov	BYTE PTR 30[rbx], 0
	.p2align 4,,10
	.p2align 3
.L77:
	mov	r8d, 14
.L38:
	mov	BYTE PTR 98[rbx], r8b
	mov	r9d, eax
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L60:
	movzx	edx, dl
	mov	edi, 8323
	or	dh, 100
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], di
	mov	BYTE PTR 96[rbx], 1
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L8:
	mov	BYTE PTR 24[rbx], -31
	movzx	eax, WORD PTR 296[rsi]
	mov	QWORD PTR [rbx], 1048576
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	xor	r11d, r11d
	mov	edi, 8323
	mov	WORD PTR 298[rsi], r11w
	mov	WORD PTR 296[rsi], di
	mov	BYTE PTR 96[rbx], 1
.L12:
	movzx	eax, WORD PTR 22[rbx]
	test	ax, ax
	je	.L173
	sub	eax, 1
	mov	WORD PTR 22[rbx], ax
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L49:
	mov	BYTE PTR 24[rbx], 2
	movzx	eax, WORD PTR 296[rsi]
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	movzx	edx, r9b
	mov	r12d, 8323
	or	dh, 97
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], r12w
	mov	BYTE PTR 96[rbx], 1
	jmp	.L26
.L167:
	movzx	eax, WORD PTR 296[rsi]
	movzx	edx, BYTE PTR 28[rbx]
	and	ax, 140
	cmp	ax, 8
	jne	.L158
	or	dh, 99
	mov	ebp, 8323
	mov	WORD PTR 298[rsi], dx
	mov	WORD PTR 296[rsi], bp
	mov	BYTE PTR 96[rbx], 1
	jmp	.L26
.L156:
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	r10d, 8195
	xor	r11d, r11d
	mov	BYTE PTR 24[rbx], 0
	mov	eax, 96
	mov	WORD PTR 29[rbx], cx
	mov	BYTE PTR 98[rbx], 15
	mov	BYTE PTR 96[rbx], 0
	mov	WORD PTR 22[rbx], r8w
	mov	WORD PTR 308[rsi], r9w
	mov	WORD PTR 296[rsi], r10w
	mov	WORD PTR 298[rsi], r11w
	jmp	.L1
.L173:
	xor	eax, eax
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 29[rbx], ax
	xor	eax, eax
	mov	BYTE PTR 98[rbx], 15
	mov	BYTE PTR 96[rbx], 0
	mov	WORD PTR 308[rsi], ax
	mov	eax, 8195
	mov	WORD PTR 296[rsi], ax
	xor	eax, eax
	mov	WORD PTR 298[rsi], ax
.L21:
	mov	eax, 113
	jmp	.L1
.L75:
	mov	r9d, 6
	mov	ecx, 6
	jmp	.L34
.L74:
	mov	r9d, 14
	mov	ecx, 14
	jmp	.L34
.L72:
	xor	r11d, r11d
	xor	edi, edi
	xor	ebp, ebp
	mov	r12d, 8195
	xor	r14d, r14d
	mov	BYTE PTR 24[rbx], 0
	mov	eax, 80
	mov	WORD PTR 29[rbx], r11w
	mov	BYTE PTR 98[rbx], 15
	mov	BYTE PTR 96[rbx], 0
	mov	WORD PTR 22[rbx], di
	mov	WORD PTR 308[rsi], bp
	mov	WORD PTR 296[rsi], r12w
	mov	WORD PTR 298[rsi], r14w
	jmp	.L1
.L169:
	movzx	eax, BYTE PTR 24[rbx]
.L22:
	cmp	al, -23
	jne	.L12
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L168:
	xor	eax, eax
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, 8195
	xor	r9d, r9d
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 29[rbx], ax
	mov	BYTE PTR 98[rbx], 15
	mov	BYTE PTR 96[rbx], 0
	mov	WORD PTR 22[rbx], dx
	mov	WORD PTR 308[rsi], cx
	mov	WORD PTR 296[rsi], r8w
	mov	WORD PTR 298[rsi], r9w
	jmp	.L21
.L172:
	mov	edx, r14d
	mov	BYTE PTR 24[rbx], 0
	and	edx, 14
	mov	BYTE PTR 30[rbx], dl
	mov	r9d, edx
	jmp	.L43
.L166:
	sub	r8d, 1
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	MultiBootStartProbe
	.def	MultiBootStartProbe;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBootStartProbe
MultiBootStartProbe:
	.seh_endprologue
	cmp	BYTE PTR 24[rcx], 0
	jne	.L177
	mov	BYTE PTR 98[rcx], 0
	mov	BYTE PTR 30[rcx], 0
	mov	BYTE PTR 24[rcx], 1
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	xor	eax, eax
	xor	edx, edx
	mov	BYTE PTR 24[rcx], 0
	mov	r8d, 8195
	mov	WORD PTR 29[rcx], ax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	r9d, r9d
	mov	BYTE PTR 98[rcx], 15
	mov	BYTE PTR 96[rcx], 0
	mov	WORD PTR 22[rcx], dx
	xor	ecx, ecx
	mov	WORD PTR 308[rax], cx
	mov	WORD PTR 296[rax], r8w
	mov	WORD PTR 298[rax], r9w
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiBootStartMaster
	.def	MultiBootStartMaster;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBootStartMaster
MultiBootStartMaster:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, DWORD PTR 40[rsp]
	cmp	BYTE PTR 24[rax], 0
	jne	.L179
	cmp	BYTE PTR 30[rax], 0
	je	.L179
	cmp	BYTE PTR 98[rax], 0
	jne	.L179
	add	r8d, 15
	mov	QWORD PTR 32[rax], rdx
	and	r8d, -16
	lea	r11d, -256[r8]
	cmp	r11d, 261888
	ja	.L190
	movsx	r8, r8d
	add	rdx, r8
	mov	QWORD PTR 40[rax], rdx
	test	cl, cl
	je	.L183
	jg	.L184
	cmp	cl, -4
	jb	.L185
	movzx	r9d, r9b
	movsx	ecx, cl
	mov	r10d, 3
	sal	r9d, 3
	sub	r10d, ecx
	or	r10d, r9d
.L185:
	add	r10d, r10d
	mov	BYTE PTR 24[rax], -48
	or	r10d, -127
	mov	BYTE PTR 28[rax], r10b
	ret
	.p2align 4,,10
	.p2align 3
.L179:
	mov	BYTE PTR 24[rax], 0
.L190:
	xor	edx, edx
	xor	ecx, ecx
	mov	BYTE PTR 98[rax], 15
	xor	r8d, r8d
	mov	WORD PTR 29[rax], dx
	mov	r9d, 8195
	xor	r10d, r10d
	mov	BYTE PTR 96[rax], 0
	mov	WORD PTR 22[rax], cx
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	WORD PTR 308[rax], r8w
	mov	WORD PTR 296[rax], r9w
	mov	WORD PTR 298[rax], r10w
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	lea	edx, -1[rcx]
	cmp	dl, 3
	ja	.L185
	movzx	r9d, r9b
	movsx	ecx, cl
	sal	r9d, 3
	sub	ecx, 1
	mov	r10d, r9d
	or	r10d, ecx
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L183:
	or	r9d, 56
	movzx	r10d, r9b
	jmp	.L185
	.seh_endproc
	.p2align 4
	.globl	MultiBootInit
	.def	MultiBootInit;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBootInit
MultiBootInit:
	.seh_endprologue
	xor	eax, eax
	xor	edx, edx
	mov	r8d, 8195
	xor	r9d, r9d
	mov	WORD PTR 29[rcx], ax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 24[rcx], 0
	mov	BYTE PTR 98[rcx], 15
	mov	BYTE PTR 96[rcx], 0
	mov	WORD PTR 22[rcx], dx
	xor	ecx, ecx
	mov	WORD PTR 308[rax], cx
	mov	WORD PTR 296[rax], r8w
	mov	WORD PTR 298[rax], r9w
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiBootCheckComplete
	.def	MultiBootCheckComplete;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBootCheckComplete
MultiBootCheckComplete:
	.seh_endprologue
	xor	eax, eax
	cmp	BYTE PTR 24[rcx], -23
	sete	al
	ret
	.seh_endproc
.lcomm gMultiBootRequiredData,6,2
	.ident	"GCC: (GNU) 13-win32"
	.def	MultiBoot;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
