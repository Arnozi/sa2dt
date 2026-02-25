	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8044A14;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8044A14
sub_8044A14:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	mov	edx, DWORD PTR [rdx]
	movzx	r11d, BYTE PTR 182[rcx]
	sal	edx, 4
	and	edx, 1008
	movsx	edx, WORD PTR [r10+rdx*2]
	mov	rax, rcx
	movsx	ebx, WORD PTR 184[rax]
	movzx	r8d, WORD PTR 186[rax]
	sar	edx, 9
	add	dx, 1000
	mov	r9d, ebx
	and	dx, 1023
	mov	WORD PTR 50[rcx], dx
	movzx	edx, dx
	mov	rcx, r11
	mov	WORD PTR 54[rax+r11*2], bx
	mov	WORD PTR 118[rax+r11*2], r8w
	lea	r11d, 256[rdx]
	movsx	r11, r11d
	movsx	r11d, WORD PTR [r10+r11*2]
	lea	r11d, [r11+r11*4]
	sar	r11d, 11
	cmp	ebx, r11d
	jge	.L2
	add	r9d, 2
	movsx	ebx, r9w
	cmp	ebx, r11d
	jg	.L12
.L5:
	mov	WORD PTR 184[rax], r9w
.L4:
	movsx	edx, WORD PTR [r10+rdx*2]
	movsx	r9d, r8w
	lea	edx, [rdx+rdx*4]
	sar	edx, 11
	cmp	r9d, edx
	jge	.L6
	add	r8d, 2
	movsx	r9d, r8w
	cmp	r9d, edx
	jg	.L13
.L9:
	movzx	ebx, WORD PTR 188[rax]
	mov	WORD PTR 186[rax], r8w
	lea	edx, 1[rbx]
	cmp	dx, 119
	ja	.L10
.L15:
	mov	WORD PTR 188[rax], dx
.L11:
	mov	DWORD PTR 944[rax], -1
	add	ecx, 1
	mov	DWORD PTR 952[rax], -1
	and	ecx, 31
	mov	BYTE PTR 182[rax], cl
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	sub	r8d, 2
	movsx	r9d, r8w
	cmp	r9d, edx
	jge	.L9
.L13:
	movzx	ebx, WORD PTR 188[rax]
	mov	WORD PTR 186[rax], dx
	lea	edx, 1[rbx]
	cmp	dx, 119
	jbe	.L15
.L10:
	xor	edx, edx
	mov	BYTE PTR 191[rax], 1
	mov	WORD PTR 188[rax], dx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L2:
	sub	r9d, 2
	movsx	ebx, r9w
	cmp	ebx, r11d
	jge	.L5
.L12:
	mov	WORD PTR 184[rax], r11w
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	sub_8044EB0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8044EB0
sub_8044EB0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	r10d, BYTE PTR 190[rcx]
	movzx	r9d, BYTE PTR 182[rcx]
	movsx	esi, WORD PTR 184[rcx]
	mov	edx, r10d
	mov	r11, r9
	sal	edx, 4
	mov	r8d, esi
	and	edx, 1008
	mov	rax, rcx
	movsx	edx, WORD PTR [rbx+rdx*2]
	lea	edx, [rdx+rdx*4]
	sar	edx, 11
	add	dx, WORD PTR 50[rcx]
	and	dx, 1023
	mov	WORD PTR 50[rcx], dx
	movzx	edx, dx
	mov	WORD PTR 54[rcx+r9*2], si
	movzx	ecx, WORD PTR 186[rcx]
	mov	WORD PTR 118[rax+r9*2], cx
	lea	r9d, 256[rdx]
	movsx	r9, r9d
	movsx	r9d, WORD PTR [rbx+r9*2]
	lea	r9d, [r9+r9*4]
	sar	r9d, 10
	cmp	esi, r9d
	jge	.L17
	add	r8d, 10
	movsx	esi, r8w
	cmp	esi, r9d
	jg	.L26
.L20:
	mov	WORD PTR 184[rax], r8w
.L19:
	movsx	r8, edx
	movsx	edx, WORD PTR [rbx+r8*2]
	lea	r8d, [rdx+rdx*4]
	movsx	edx, cx
	sar	r8d, 10
	cmp	edx, r8d
	jge	.L21
	add	ecx, 10
	movsx	edx, cx
	cmp	edx, r8d
	jg	.L27
.L24:
	mov	WORD PTR 186[rax], cx
.L23:
	lea	ecx, -1[r10]
	mov	BYTE PTR 190[rax], cl
	test	cl, cl
	jne	.L25
	mov	edx, 672
	mov	ecx, -254
	mov	BYTE PTR 191[rax], 0
	mov	DWORD PTR 944[rax], -1
	mov	DWORD PTR 952[rax], -1
	mov	WORD PTR 906[rax], dx
	mov	WORD PTR 936[rax], cx
.L25:
	lea	edx, 1[r11]
	and	edx, 31
	mov	BYTE PTR 182[rax], dl
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	sub	ecx, 10
	movsx	edx, cx
	cmp	edx, r8d
	jge	.L24
.L27:
	mov	WORD PTR 186[rax], r8w
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L17:
	sub	r8d, 10
	movsx	esi, r8w
	cmp	esi, r9d
	jge	.L20
.L26:
	mov	WORD PTR 184[rax], r9w
	jmp	.L19
	.seh_endproc
	.p2align 4
	.def	sub_80451C4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80451C4
sub_80451C4:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movzx	esi, WORD PTR 50[rcx]
	lea	edx, -12[rsi]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	and	dx, 1023
	mov	rax, rcx
	mov	ecx, edx
	mov	WORD PTR 50[rax], dx
	movzx	r8d, WORD PTR 184[rax]
	movzx	edx, BYTE PTR 182[rax]
	movzx	r10d, WORD PTR 186[rax]
	mov	WORD PTR 54[rax+rdx*2], r8w
	mov	r9, rdx
	mov	WORD PTR 118[rax+rdx*2], r10w
	movzx	edx, cx
	movzx	r11d, BYTE PTR 190[rax]
	lea	ecx, 256[rdx]
	movsx	rcx, ecx
	mov	ebx, r11d
	movsx	ecx, WORD PTR [rsi+rcx*2]
	shr	bl, 4
	movzx	ebx, bl
	lea	edi, [rcx+rcx*8]
	lea	ecx, [rcx+rdi*2]
	movsx	edi, r8w
	sub	ecx, ebx
	sar	ecx, 11
	cmp	edi, ecx
	jge	.L29
	add	r8d, 10
	movsx	edi, r8w
	cmp	edi, ecx
	jg	.L38
.L32:
	mov	WORD PTR 184[rax], r8w
.L31:
	movsx	r8, edx
	movsx	edx, WORD PTR [rsi+r8*2]
	lea	ecx, [rdx+rdx*8]
	lea	edx, [rdx+rcx*2]
	movsx	ecx, r10w
	sub	edx, ebx
	sar	edx, 11
	cmp	ecx, edx
	jge	.L33
	lea	ecx, 10[r10]
	movsx	r8d, cx
	cmp	r8d, edx
	jg	.L39
.L36:
	mov	WORD PTR 186[rax], cx
.L35:
	lea	ecx, -1[r11]
	mov	BYTE PTR 190[rax], cl
	test	cl, cl
	jne	.L37
	mov	edx, 672
	mov	ecx, -254
	mov	BYTE PTR 191[rax], 0
	mov	DWORD PTR 944[rax], -1
	mov	DWORD PTR 952[rax], -1
	mov	WORD PTR 906[rax], dx
	mov	WORD PTR 936[rax], cx
.L37:
	lea	edx, 1[r9]
	and	edx, 31
	mov	BYTE PTR 182[rax], dl
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	lea	ecx, -10[r10]
	movsx	r8d, cx
	cmp	r8d, edx
	jge	.L36
.L39:
	mov	WORD PTR 186[rax], dx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L29:
	sub	r8d, 10
	movsx	edi, r8w
	cmp	edi, ecx
	jge	.L32
.L38:
	mov	WORD PTR 184[rax], cx
	jmp	.L31
	.seh_endproc
	.p2align 4
	.def	sub_8044B28;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8044B28
sub_8044B28:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	mov	r9d, DWORD PTR [rax]
	movzx	r8d, BYTE PTR 182[rcx]
	movsx	esi, WORD PTR 184[rcx]
	mov	eax, r9d
	mov	r10, r8
	sal	eax, 4
	and	eax, 1008
	mov	rbx, rcx
	movsx	eax, WORD PTR [r11+rax*2]
	movzx	edx, WORD PTR 186[rbx]
	sar	eax, 9
	add	ax, 1000
	and	ax, 1023
	mov	WORD PTR 50[rcx], ax
	movzx	eax, ax
	mov	ecx, esi
	mov	WORD PTR 54[rbx+r8*2], si
	mov	WORD PTR 118[rbx+r8*2], dx
	lea	r8d, 256[rax]
	movsx	r8, r8d
	movsx	r8d, WORD PTR [r11+r8*2]
	lea	r8d, [r8+r8*4]
	sar	r8d, 10
	cmp	esi, r8d
	jge	.L41
	add	ecx, 2
	movsx	esi, cx
	cmp	esi, r8d
	jg	.L56
.L44:
	mov	WORD PTR 184[rbx], cx
.L43:
	movsx	rcx, eax
	movsx	eax, WORD PTR [r11+rcx*2]
	lea	ecx, [rax+rax*4]
	movsx	eax, dx
	sar	ecx, 10
	cmp	eax, ecx
	jge	.L45
	add	edx, 2
	movsx	eax, dx
	cmp	eax, ecx
	jg	.L57
.L48:
	mov	WORD PTR 186[rbx], dx
.L47:
	movzx	eax, WORD PTR 188[rbx]
	lea	edx, 1[rax]
	mov	WORD PTR 188[rbx], dx
	cmp	dx, 79
	jbe	.L49
	cmp	BYTE PTR 17[rbx], 0
	je	.L50
.L52:
	mov	eax, 64
	mov	edx, 2
.L51:
	xor	ecx, ecx
	mov	r8d, 672
	mov	r9d, -255
	mov	BYTE PTR 190[rbx], al
	mov	WORD PTR 188[rbx], cx
	mov	BYTE PTR 191[rbx], dl
	mov	WORD PTR 906[rbx], r8w
	mov	WORD PTR 936[rbx], r9w
.L53:
	lea	eax, 1[r10]
	and	eax, 31
	mov	BYTE PTR 182[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	sub	edx, 2
	movsx	eax, dx
	cmp	eax, ecx
	jge	.L48
.L57:
	mov	WORD PTR 186[rbx], cx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L41:
	sub	ecx, 2
	movsx	esi, cx
	cmp	esi, r8d
	jge	.L44
.L56:
	mov	WORD PTR 184[rbx], r8w
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L49:
	cmp	dx, 70
	jne	.L53
	mov	ecx, 250
	call	m4aSongNumStart
	movzx	r10d, BYTE PTR 182[rbx]
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L50:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	test	al, 1
	jne	.L52
	and	r9d, 2
	cmp	r9d, 1
	sbb	eax, eax
	and	eax, 32
	add	eax, 64
	neg	r9d
	sbb	dl, dl
	add	edx, 5
	jmp	.L51
	.seh_endproc
	.p2align 4
	.def	sub_8044FE4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8044FE4
sub_8044FE4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, BYTE PTR 190[rcx]
	mov	rbx, rcx
	cmp	al, 64
	je	.L75
.L59:
	cmp	al, 27
	je	.L76
.L60:
	movzx	r9d, BYTE PTR 182[rbx]
	movsx	r11d, WORD PTR 184[rbx]
	movzx	ecx, WORD PTR 186[rbx]
	movzx	r10d, WORD PTR 50[rbx]
	mov	WORD PTR 54[rbx+r9*2], r11w
	mov	rdx, r9
	mov	r8d, r11d
	mov	WORD PTR 118[rbx+r9*2], cx
	lea	r9d, 256[r10]
	movsx	r9, r9d
	movsx	r9d, WORD PTR [rsi+r9*2]
	lea	r9d, [r9+r9*4]
	sar	r9d, 9
	cmp	r11d, r9d
	jge	.L62
	add	r8d, 10
	movsx	r11d, r8w
	cmp	r11d, r9d
	jg	.L73
.L65:
	mov	WORD PTR 184[rbx], r8w
.L64:
	movsx	r8d, WORD PTR [rsi+r10*2]
	movsx	r9d, cx
	lea	r8d, [r8+r8*4]
	sar	r8d, 9
	cmp	r9d, r8d
	jge	.L66
	add	ecx, 10
	movsx	r9d, cx
	cmp	r9d, r8d
	jg	.L74
.L69:
	mov	WORD PTR 186[rbx], cx
.L68:
	sub	eax, 1
	mov	BYTE PTR 190[rbx], al
	test	al, al
	jne	.L70
	mov	eax, 672
	mov	ecx, -254
	mov	BYTE PTR 191[rbx], 0
	mov	DWORD PTR 944[rbx], -1
	mov	DWORD PTR 952[rbx], -1
	mov	WORD PTR 906[rbx], ax
	mov	WORD PTR 936[rbx], cx
.L70:
	add	edx, 1
	and	edx, 31
	mov	BYTE PTR 182[rbx], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	sub	r8d, 10
	movsx	r11d, r8w
	cmp	r11d, r9d
	jge	.L65
.L73:
	mov	WORD PTR 184[rbx], r9w
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L66:
	sub	ecx, 10
	movsx	r9d, cx
	cmp	r9d, r8d
	jge	.L69
.L74:
	mov	WORD PTR 186[rbx], r8w
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L76:
	mov	ecx, 251
	call	m4aSongNumStart
	mov	BYTE PTR 192[rbx], 16
	lea	rdx, gUnknown_080D7FB0[rip+4]
	lea	rax, 978[rbx]
	lea	r8, 64[rdx]
	.p2align 4,,10
	.p2align 3
.L61:
	movzx	ecx, WORD PTR [rdx]
	add	rdx, 8
	add	rax, 64
	mov	WORD PTR -64[rax], cx
	movzx	ecx, BYTE PTR -6[rdx]
	mov	BYTE PTR -33[rax], -1
	mov	BYTE PTR -34[rax], cl
	cmp	r8, rdx
	jne	.L61
	movzx	eax, BYTE PTR 190[rbx]
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L75:
	movzx	eax, WORD PTR 48[rcx]
	mov	r8d, DWORD PTR 4[rcx]
	mov	edx, DWORD PTR 8[rcx]
	lea	ecx, 256[rax]
	movsx	eax, WORD PTR [rsi+rax*2]
	sar	r8d, 8
	movsx	rcx, ecx
	sar	edx, 8
	movsx	ecx, WORD PTR [rsi+rcx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	ecx, [rcx+rcx*4]
	sar	ecx, 11
	lea	ecx, 2[r8+rcx]
	lea	r8d, -17[rdx+rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 12[rax]
	sar	edx, 8
	sub	edx, ecx
	mov	ecx, DWORD PTR 16[rax]
	movsx	edx, dx
	sar	ecx, 8
	sub	ecx, r8d
	movsx	ecx, cx
	call	sub_8004418
	mov	WORD PTR 50[rbx], ax
	movzx	eax, BYTE PTR 190[rbx]
	jmp	.L59
	.seh_endproc
	.p2align 4
	.def	sub_8044CBC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8044CBC
sub_8044CBC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, BYTE PTR 190[rcx]
	mov	rbx, rcx
	cmp	al, 64
	je	.L95
	cmp	al, 27
	je	.L96
.L79:
	movzx	r9d, BYTE PTR 182[rbx]
	movsx	r11d, WORD PTR 184[rbx]
	movzx	ecx, WORD PTR 186[rbx]
	movzx	r10d, WORD PTR 50[rbx]
	mov	WORD PTR 54[rbx+r9*2], r11w
	mov	rdx, r9
	mov	r8d, r11d
	mov	WORD PTR 118[rbx+r9*2], cx
	lea	r9d, 256[r10]
	movsx	r9, r9d
	movsx	r9d, WORD PTR [rsi+r9*2]
	lea	r9d, [r9+r9*4]
	sar	r9d, 10
	cmp	r11d, r9d
	jge	.L81
	add	r8d, 10
	movsx	r11d, r8w
	cmp	r11d, r9d
	jg	.L93
.L84:
	mov	WORD PTR 184[rbx], r8w
.L83:
	movsx	r8d, WORD PTR [rsi+r10*2]
	movsx	r9d, cx
	lea	r8d, [r8+r8*4]
	sar	r8d, 10
	cmp	r9d, r8d
	jge	.L85
	add	ecx, 10
	movsx	r9d, cx
	cmp	r9d, r8d
	jg	.L94
.L88:
	mov	WORD PTR 186[rbx], cx
.L87:
	sub	eax, 1
	mov	BYTE PTR 190[rbx], al
	test	al, al
	jne	.L89
	cmp	BYTE PTR 17[rbx], 0
	je	.L90
	mov	ecx, 672
	mov	r8d, -254
	mov	BYTE PTR 191[rbx], 0
	mov	DWORD PTR 944[rbx], -1
	mov	DWORD PTR 952[rbx], -1
	mov	WORD PTR 906[rbx], cx
	mov	WORD PTR 936[rbx], r8w
.L89:
	add	edx, 1
	and	edx, 31
	mov	BYTE PTR 182[rbx], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	sub	r8d, 10
	movsx	r11d, r8w
	cmp	r11d, r9d
	jge	.L84
.L93:
	mov	WORD PTR 184[rbx], r9w
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L85:
	sub	ecx, 10
	movsx	r9d, cx
	cmp	r9d, r8d
	jge	.L88
.L94:
	mov	WORD PTR 186[rbx], r8w
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L90:
	mov	eax, 895
	mov	WORD PTR 190[rbx], ax
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L95:
	movzx	eax, WORD PTR 48[rcx]
	mov	r8d, DWORD PTR 4[rcx]
	mov	edx, DWORD PTR 8[rcx]
	lea	ecx, 256[rax]
	movsx	eax, WORD PTR [rsi+rax*2]
	sar	r8d, 8
	movsx	rcx, ecx
	sar	edx, 8
	movsx	ecx, WORD PTR [rsi+rcx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	ecx, [rcx+rcx*4]
	sar	ecx, 11
	lea	ecx, 2[r8+rcx]
	lea	r8d, -17[rdx+rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 12[rax]
	sar	edx, 8
	sub	edx, ecx
	mov	ecx, DWORD PTR 16[rax]
	movsx	edx, dx
	sar	ecx, 8
	sub	ecx, r8d
	movsx	ecx, cx
	call	sub_8004418
	mov	WORD PTR 50[rbx], ax
	movzx	eax, BYTE PTR 190[rbx]
	cmp	al, 27
	jne	.L79
.L96:
	mov	ecx, 251
	call	m4aSongNumStart
	mov	BYTE PTR 192[rbx], 16
	lea	rdx, gUnknown_080D7FB0[rip+4]
	lea	rax, 978[rbx]
	lea	r8, 64[rdx]
	.p2align 4,,10
	.p2align 3
.L80:
	movzx	ecx, WORD PTR [rdx]
	add	rdx, 8
	add	rax, 64
	mov	WORD PTR -64[rax], cx
	movzx	ecx, BYTE PTR -6[rdx]
	mov	BYTE PTR -33[rax], -1
	mov	BYTE PTR -34[rax], cl
	cmp	r8, rdx
	jne	.L80
	movzx	eax, BYTE PTR 190[rbx]
	jmp	.L79
	.seh_endproc
	.p2align 4
	.def	SaucerUpdatePosAndRotate;	.scl	3;	.type	32;	.endef
	.seh_proc	SaucerUpdatePosAndRotate
SaucerUpdatePosAndRotate:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	r9d, 8
	mov	r8d, 1
	movsx	eax, WORD PTR 12[rcx]
	movq	xmm1, QWORD PTR 4[rcx]
	movd	xmm0, eax
	movsx	eax, WORD PTR 14[rcx]
	movd	xmm2, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	rbx, rcx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rcx], xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rax
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 50
	call	sub_801E4E4
	movd	xmm0, DWORD PTR 22[rbx]
	movd	xmm1, DWORD PTR .LC3[rip]
	sal	eax, 8
	add	DWORD PTR 8[rbx], eax
	movzx	eax, WORD PTR 48[rbx]
	paddw	xmm0, xmm1
	movd	xmm4, DWORD PTR .LC4[rip]
	add	eax, 2
	and	ax, 1023
	pand	xmm0, xmm4
	mov	WORD PTR 48[rbx], ax
	movd	DWORD PTR 22[rbx], xmm0
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804598C
	.def	sub_804598C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804598C
sub_804598C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_EggSaucerMain
	.def	TaskDestructor_EggSaucerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggSaucerMain
TaskDestructor_EggSaucerMain:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 1472[rax]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8043E2C.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8043E2C.part.0
sub_8043E2C.part.0:
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
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	r9d, 8
	mov	r8d, 1
	movzx	eax, WORD PTR 36[rcx]
	movsx	edi, WORD PTR 34[rcx]
	add	edi, DWORD PTR 40[rcx]
	lea	esi, 16[rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	WORD PTR 36[rcx], si
	movsx	esi, si
	add	esi, DWORD PTR 44[rcx]
	mov	rbx, rcx
	mov	DWORD PTR 40[rcx], edi
	sar	edi, 8
	mov	DWORD PTR 44[rcx], esi
	sar	esi, 8
	mov	edx, edi
	mov	QWORD PTR 40[rsp], rax
	lea	ecx, 10[rsi]
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L101
	movsx	edx, WORD PTR 34[rbx]
	sal	eax, 8
	add	DWORD PTR 44[rbx], eax
	mov	BYTE PTR 32[rbx], 1
	imul	edx, edx, -80
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR 34[rbx], ax
.L101:
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	eax, edi
	movzx	edx, di
	lea	r12, 600[rbx]
	mov	rcx, r12
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 638[rbx], ax
	mov	eax, esi
	sal	eax, 16
	or	eax, edx
	mov	r13d, eax
	mov	eax, esi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 640[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	lea	r12, 528[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 4[rbp]
	movzx	edx, WORD PTR 0[rbp]
	movd	xmm2, r13d
	movd	xmm0, DWORD PTR .LC5[rip]
	mov	DWORD PTR 674[rbx], 16777472
	sal	eax, 16
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movd	xmm1, eax
	movzx	eax, BYTE PTR [rdx]
	psubw	xmm0, xmm1
	lea	ecx, 1[rax]
	or	eax, 4192
	mov	DWORD PTR 560[rbx], eax
	movzx	eax, WORD PTR 26[rbx]
	paddw	xmm0, xmm2
	mov	BYTE PTR [rdx], cl
	lea	rdx, 672[rbx]
	mov	rcx, r12
	mov	WORD PTR 672[rbx], ax
	movd	DWORD PTR 566[rbx], xmm0
	movd	DWORD PTR 678[rbx], xmm0
	call	TransformSprite
	mov	rcx, r12
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -1431655765
	add	eax, 715827882
	cmp	eax, 1431655764
	jbe	.L103
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	sub	edi, DWORD PTR 0[rbp]
	mov	r8d, 1280
	sub	esi, DWORD PTR 4[rbp]
	mov	WORD PTR 66[rsp], r8w
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 15
	lea	ecx, -8[rdi+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 72[rsp], ecx
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 15
	lea	ecx, -8[rsi+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 76[rsp], ecx
	xor	ecx, ecx
	mov	DWORD PTR [rdx], eax
	and	eax, 63
	mov	edx, 1055
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 80[rsp], cx
	lea	rcx, 48[rsp]
	mov	WORD PTR 64[rsp], dx
	lea	rdx, 20[rbx]
	add	rax, 76160
	mov	QWORD PTR 48[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 56[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8045564.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8045564.part.0
sub_8045564.part.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rsi]
	mov	edx, eax
	mov	rbx, rcx
	imul	ecx, eax, -1227133513
	add	ecx, 306783378
	cmp	ecx, 613566756
	jbe	.L109
.L105:
	imul	ecx, eax, -858993459
	add	ecx, 429496728
	ror	ecx
	cmp	ecx, 429496728
	jbe	.L110
.L106:
	imul	eax, edx, 954437177
	add	eax, 238609294
	cmp	eax, 477218588
	jbe	.L111
.L107:
	imul	edx, edx, -1171354717
	add	edx, 195225786
	cmp	edx, 390451572
	jbe	.L112
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	ax, ax, 900
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm1, QWORD PTR 4[rbx]
	imul	edx, DWORD PTR [r8], 1663525
	and	eax, 1020
	psrad	xmm1, 8
	lea	ecx, 256[rax]
	movsx	eax, WORD PTR [r10+rax*2]
	add	edx, 1013904223
	movsx	rcx, ecx
	mov	r9d, edx
	movsx	ecx, WORD PTR [r10+rcx*2]
	and	r9d, 31
	add	r9d, 24
	imul	eax, r9d
	imul	ecx, r9d
	movd	xmm3, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, ecx
	xor	ecx, ecx
	movq	xmm2, QWORD PTR [rax]
	imul	eax, edx, 1663525
	punpckldq	xmm0, xmm3
	mov	edx, 1031
	psrad	xmm0, 14
	mov	WORD PTR 64[rsp], cx
	lea	rcx, 32[rsp]
	psubd	xmm1, xmm2
	add	eax, 1013904223
	mov	DWORD PTR [r8], eax
	and	eax, 63
	mov	r8d, 1280
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	paddd	xmm0, xmm1
	mov	WORD PTR 50[rsp], r8w
	mov	WORD PTR 48[rsp], dx
	lea	rdx, 20[rbx]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	movq	QWORD PTR 56[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	mov	eax, DWORD PTR [rsi]
	mov	edx, eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L112:
	movq	xmm1, QWORD PTR .LC7[rip]
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rcx], 1663525
	lea	edx, 1013904223[rax]
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	imul	edx, edx, 1663525
	movq	xmm2, QWORD PTR [rax]
	xor	eax, eax
	mov	WORD PTR 64[rsp], ax
	movd	xmm4, edx
	mov	edx, 1031
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR 204[rbx]
	psrad	xmm1, 8
	pshufd	xmm5, xmm0, 0xe5
	movd	eax, xmm5
	psubd	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC8[rip]
	imul	eax, eax, 1663525
	pand	xmm2, xmm0
	paddd	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC9[rip]
	add	eax, 1013904223
	mov	DWORD PTR [rcx], eax
	and	eax, 63
	lea	rcx, 32[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	paddd	xmm1, xmm2
	mov	WORD PTR 48[rsp], dx
	mov	edx, 1280
	add	rax, 76160
	mov	WORD PTR 50[rsp], dx
	lea	rdx, 20[rbx]
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	movq	QWORD PTR 56[rsp], xmm1
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	xor	r8d, r8d
	mov	r9d, 1280
	movq	xmm1, QWORD PTR .LC7[rip]
	mov	WORD PTR 64[rsp], r8w
	imul	eax, DWORD PTR [rcx], 1663525
	mov	WORD PTR 50[rsp], r9w
	lea	edx, 1013904223[rax]
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	imul	edx, edx, 1663525
	movq	xmm2, QWORD PTR [rax]
	movd	xmm5, edx
	mov	edx, 1031
	punpckldq	xmm0, xmm5
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR 196[rbx]
	psrad	xmm1, 8
	pshufd	xmm3, xmm0, 0xe5
	movd	eax, xmm3
	psubd	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC8[rip]
	imul	eax, eax, 1663525
	pand	xmm2, xmm0
	paddd	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC9[rip]
	add	eax, 1013904223
	mov	DWORD PTR [rcx], eax
	and	eax, 63
	lea	rcx, 32[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	paddd	xmm1, xmm2
	mov	WORD PTR 48[rsp], dx
	lea	rdx, 20[rbx]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	movq	QWORD PTR 56[rsp], xmm1
	call	CreateBossParticleWithExplosionUpdate
	mov	edx, DWORD PTR [rsi]
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L110:
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	r8w, ax, 900
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 40[rsp], 0
	movq	xmm1, QWORD PTR 4[rbx]
	imul	edx, DWORD PTR [r9], 1663525
	and	r8d, 1020
	psrad	xmm1, 8
	lea	ecx, 256[r8]
	add	edx, 1013904223
	movsx	rcx, ecx
	mov	r10d, edx
	movsx	ecx, WORD PTR [r11+rcx*2]
	imul	edx, edx, 1663525
	and	r10d, 31
	add	r10d, 24
	imul	ecx, r10d
	add	edx, 1013904223
	mov	DWORD PTR [r9], edx
	and	dx, 1023
	mov	WORD PTR 48[rsp], dx
	movsx	rdx, eax
	movd	xmm0, ecx
	movsx	ecx, WORD PTR [r11+r8*2]
	imul	rdx, rdx, 715827883
	mov	r11d, 1536
	mov	WORD PTR 50[rsp], r11w
	imul	ecx, r10d
	mov	r10d, 64
	shr	rdx, 32
	mov	WORD PTR 64[rsp], r10w
	movd	xmm4, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	punpckldq	xmm0, xmm4
	movq	xmm2, QWORD PTR [rcx]
	mov	ecx, eax
	psrad	xmm0, 14
	sar	ecx, 31
	sub	edx, ecx
	psubd	xmm1, xmm2
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	lea	edx, [rdx+rdx*2]
	add	edx, edx
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gTileInfoBossScrews[rip]
	paddd	xmm0, xmm1
	movzx	eax, al
	lea	rax, [rax+rax*2]
	lea	rax, [rdx+rax*4]
	movq	QWORD PTR 56[rsp], xmm0
	mov	edx, DWORD PTR [rax]
	sal	edx, 5
	lea	rdx, 65536[rdx+rcx]
	lea	rcx, 32[rsp]
	mov	QWORD PTR 32[rsp], rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR 8[rax]
	mov	WORD PTR 44[rsp], dx
	lea	rdx, 20[rbx]
	mov	WORD PTR 46[rsp], ax
	call	CreateBossParticleWithExplosionUpdate
	mov	edx, DWORD PTR [rsi]
	jmp	.L106
	.seh_endproc
	.p2align 4
	.def	sub_8045898.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8045898.part.0
sub_8045898.part.0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	cmp	BYTE PTR 19[rcx], 0
	je	.L114
	mov	r8d, eax
	lea	r9, gUnknown_080D7FF0[rip]
	sal	r8, 5
	add	r8, r9
	movdqu	xmm0, XMMWORD PTR [r8]
	movups	XMMWORD PTR 256[rdx], xmm0
	movdqu	xmm1, XMMWORD PTR 16[r8]
	movups	XMMWORD PTR 272[rdx], xmm1
	movzx	r8d, BYTE PTR 31[rcx]
	test	r8b, r8b
	je	.L116
.L118:
	sub	r8d, 1
	sal	rax, 5
	mov	BYTE PTR 31[rcx], r8b
	lea	rcx, gUnknown_080D7FF0[rip]
	add	rax, rcx
	movdqu	xmm4, XMMWORD PTR [rax]
	movups	XMMWORD PTR 288[rdx], xmm4
	movdqu	xmm5, XMMWORD PTR 16[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 304[rdx], xmm5
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	movdqu	xmm2, XMMWORD PTR gUnknown_080D7FF0[rip+32]
	movdqu	xmm3, XMMWORD PTR gUnknown_080D7FF0[rip+48]
	movups	XMMWORD PTR 256[rdx], xmm2
	movups	XMMWORD PTR 272[rdx], xmm3
	movzx	r8d, BYTE PTR 31[rcx]
	test	r8b, r8b
	jne	.L118
.L116:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	movdqu	xmm0, XMMWORD PTR gUnknown_080D7FF0[rip+32]
	movdqu	xmm1, XMMWORD PTR gUnknown_080D7FF0[rip+48]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 288[rdx], xmm0
	movups	XMMWORD PTR 304[rdx], xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEggSaucer
	.def	CreateEggSaucer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggSaucer
CreateEggSaucer:
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
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ebx, 22029
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], bx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 1090453504
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 2097152
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	ecx, 253
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	call	m4aSongNumStart
	mov	rdx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_EggSaucerIntro[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR .refptr.gPlayerLimbsPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	lea	rax, TaskDestructor_EggSaucerMain[rip]
	mov	edx, 1480
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	QWORD PTR 306[rbx], 131072
	mov	DWORD PTR 314[rbx], 12527
	cmp	BYTE PTR [rax], 0
	je	.L124
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	sete	dl
	lea	eax, 2[rax+rax]
	lea	edx, 6[rdx+rdx]
.L120:
	mov	rbp, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 17[rbx], al
	mov	ecx, 138240
	mov	BYTE PTR 16[rbx], dl
	cmp	BYTE PTR 0[rbp], 28
	jne	.L121
	shr	dl
	shr	al
	mov	ecx, 5899264
	mov	BYTE PTR 16[rbx], dl
	mov	BYTE PTR 17[rbx], al
.L121:
	lea	rdi, 62[rbx]
	mov	DWORD PTR 4[rbx], ecx
	mov	r8d, 80
	xor	r9d, r9d
	and	rdi, -8
	xor	r10d, r10d
	movabs	rax, 5497558174720
	mov	WORD PTR 304[rbx], r8w
	mov	QWORD PTR 8[rbx], rax
	mov	rax, QWORD PTR .LC14[rip]
	lea	r12, 320[rbx]
	mov	WORD PTR 52[rbx], r9w
	mov	QWORD PTR 22[rbx], rax
	mov	eax, ebx
	sub	eax, edi
	mov	WORD PTR 30[rbx], r10w
	lea	ecx, 182[rax]
	xor	eax, eax
	mov	BYTE PTR 182[rbx], 0
	shr	ecx, 3
	mov	DWORD PTR 48[rbx], 682
	mov	QWORD PTR 184[rbx], 0
	mov	BYTE PTR 192[rbx], 0
	mov	DWORD PTR 34[rbx], 1280
	mov	QWORD PTR 40[rbx], 0
	mov	BYTE PTR 32[rbx], 0
	mov	DWORD PTR 18[rbx], 0
	mov	QWORD PTR 54[rbx], 0
	mov	QWORD PTR 174[rbx], 0
	rep stosq
	mov	ecx, 234
	call	VramMalloc
	movzx	edi, WORD PTR .LC18[rip]
	xor	r11d, r11d
	mov	DWORD PTR 336[rbx], 44892160
	mov	rsi, rax
	mov	QWORD PTR 1472[rbx], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	rcx, r12
	mov	WORD PTR 364[rbx], r11w
	add	rax, 49152
	mov	WORD PTR 368[rbx], di
	mov	QWORD PTR 328[rbx], rax
	mov	BYTE PTR 370[rbx], 16
	mov	BYTE PTR 373[rbx], 0
	mov	DWORD PTR 376[rbx], -1
	mov	QWORD PTR 352[rbx], 274432
	mov	DWORD PTR 360[rbx], 130023424
	call	UpdateSpriteAnimation_BG
	mov	rcx, r12
	call	DisplaySprite_BG
	lea	rax, 768[rsi]
	mov	edx, 684
	mov	DWORD PTR 502[rbx], 0
	mov	QWORD PTR 472[rbx], rax
	movsx	eax, BYTE PTR 0[rbp]
	lea	rcx, 1248[rsi]
	cmp	al, 28
	je	.L122
	mov	r8, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [r8], 0
	je	.L132
.L122:
	xor	eax, eax
	xor	ebp, ebp
	xor	r12d, r12d
	mov	WORD PTR 482[rbx], dx
	mov	QWORD PTR 392[rbx], rcx
	lea	rcx, 384[rbx]
	mov	WORD PTR 480[rbx], bp
	mov	WORD PTR 500[rbx], r12w
	mov	DWORD PTR 506[rbx], 1280
	mov	WORD PTR 512[rbx], di
	mov	BYTE PTR 514[rbx], 16
	mov	BYTE PTR 517[rbx], 0
	mov	DWORD PTR 520[rbx], -1
	mov	DWORD PTR 496[rbx], 4096
	mov	DWORD PTR 400[rbx], 43843584
	mov	WORD PTR 432[rbx], di
	mov	BYTE PTR 434[rbx], 16
	mov	BYTE PTR 437[rbx], 0
	mov	DWORD PTR 440[rbx], -1
	mov	QWORD PTR 416[rbx], 4096
	mov	DWORD PTR 424[rbx], 88080384
	mov	WORD PTR 428[rbx], ax
	call	UpdateSpriteAnimation
	lea	rax, 2400[rsi]
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	DWORD PTR 616[rbx], 43974656
	mov	QWORD PTR 608[rbx], rax
	xor	eax, eax
	mov	WORD PTR 644[rbx], ax
	lea	rax, 3200[rsi]
	mov	QWORD PTR 536[rbx], rax
	movabs	rax, 414331165718085632
	mov	QWORD PTR 564[rbx], rax
	xor	eax, eax
	mov	WORD PTR 572[rbx], ax
	movzx	eax, BYTE PTR [rdx]
	mov	WORD PTR 648[rbx], di
	lea	ecx, 1[rax]
	or	eax, 4192
	mov	BYTE PTR 650[rbx], 16
	mov	DWORD PTR 560[rbx], eax
	lea	rax, 5248[rsi]
	mov	QWORD PTR 696[rbx], rax
	xor	eax, eax
	mov	WORD PTR 732[rbx], ax
	lea	rax, 5376[rsi]
	mov	QWORD PTR 760[rbx], rax
	xor	eax, eax
	mov	BYTE PTR [rdx], cl
	lea	rcx, 752[rbx]
	mov	BYTE PTR 653[rbx], 0
	mov	DWORD PTR 656[rbx], -1
	mov	QWORD PTR 632[rbx], 4096
	mov	DWORD PTR 640[rbx], 92274688
	mov	DWORD PTR 544[rbx], 44695552
	mov	WORD PTR 576[rbx], di
	mov	BYTE PTR 578[rbx], 16
	mov	BYTE PTR 581[rbx], 0
	mov	DWORD PTR 584[rbx], -1
	mov	DWORD PTR 704[rbx], 44761088
	mov	WORD PTR 736[rbx], di
	mov	BYTE PTR 738[rbx], 16
	mov	BYTE PTR 741[rbx], 0
	mov	DWORD PTR 744[rbx], -1
	mov	QWORD PTR 720[rbx], 4096
	mov	DWORD PTR 728[rbx], 79691776
	mov	DWORD PTR 768[rbx], 43909120
	mov	WORD PTR 800[rbx], di
	mov	BYTE PTR 802[rbx], 16
	mov	BYTE PTR 805[rbx], 0
	mov	DWORD PTR 808[rbx], -1
	mov	QWORD PTR 784[rbx], 4096
	mov	DWORD PTR 792[rbx], 83886080
	mov	WORD PTR 796[rbx], ax
	call	UpdateSpriteAnimation
	xor	edx, edx
	lea	rax, 6016[rsi]
	mov	DWORD PTR 840[rbx], 44630016
	mov	WORD PTR 868[rbx], dx
	lea	rcx, 824[rbx]
	mov	QWORD PTR 832[rbx], rax
	mov	WORD PTR 872[rbx], di
	mov	BYTE PTR 874[rbx], 16
	mov	BYTE PTR 877[rbx], 0
	mov	DWORD PTR 880[rbx], -1
	mov	QWORD PTR 856[rbx], 4096
	mov	DWORD PTR 864[rbx], 79691776
	call	UpdateSpriteAnimation
	xor	ecx, ecx
	mov	DWORD PTR 904[rbx], 44040192
	lea	rax, 6144[rsi]
	mov	WORD PTR 936[rbx], di
	lea	rdx, gUnknown_080D7FB0[rip]
	mov	BYTE PTR 938[rbx], 16
	lea	r8, 64[rdx]
	mov	BYTE PTR 941[rbx], 0
	mov	DWORD PTR 944[rbx], -1
	mov	DWORD PTR 952[rbx], -1
	mov	QWORD PTR 920[rbx], 4096
	mov	DWORD PTR 928[rbx], 50331648
	mov	WORD PTR 932[rbx], cx
	mov	QWORD PTR 896[rbx], rax
	lea	rax, 968[rbx]
	.p2align 4,,10
	.p2align 3
.L123:
	mov	QWORD PTR [rax], rsi
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	mov	DWORD PTR 30[rax], 0
	mov	ecx, DWORD PTR [rdx]
	add	rdx, 8
	add	rax, 64
	sal	ecx, 5
	add	rsi, rcx
	movzx	ecx, WORD PTR -4[rdx]
	mov	WORD PTR -54[rax], cx
	movzx	ecx, BYTE PTR -2[rdx]
	mov	WORD PTR -56[rax], r9w
	mov	BYTE PTR -24[rax], cl
	mov	ecx, 704
	mov	WORD PTR -30[rax], cx
	mov	WORD PTR -36[rax], r10w
	mov	WORD PTR -28[rax], r11w
	mov	BYTE PTR -23[rax], -1
	mov	BYTE PTR -22[rax], 16
	mov	BYTE PTR -19[rax], 0
	mov	DWORD PTR -16[rax], -1
	mov	DWORD PTR -40[rax], 4096
	cmp	r8, rdx
	jne	.L123
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	mov	eax, 4
	mov	edx, 8
	jmp	.L120
.L132:
	mov	r8, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR [r8]
	movzx	r8d, BYTE PTR 7[r8]
	cmp	r8d, eax
	mov	eax, 315
	cmovle	edx, eax
	jmp	.L122
	.seh_endproc
	.p2align 4
	.globl	sub_80436E4
	.def	sub_80436E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80436E4
sub_80436E4:
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
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r11d, -1024
	movzx	r9d, WORD PTR 48[rcx]
	movzx	r8d, WORD PTR 22[rcx]
	lea	edx, 256[r9]
	movsx	rdx, edx
	mov	rax, rcx
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm0, QWORD PTR 4[rax]
	movzx	ebx, BYTE PTR 182[rax]
	movsx	r9d, WORD PTR [rcx+r9*2]
	movsx	edx, WORD PTR [rcx+rdx*2]
	lea	r10d, [r9+r9*4]
	lea	edx, [rdx+rdx*4]
	mov	esi, edx
	movd	xmm5, r10d
	movd	xmm2, edx
	mov	r9d, r10d
	sar	esi, 3
	sar	r9d, 3
	punpckldq	xmm2, xmm5
	movd	xmm5, DWORD PTR 8[rax]
	movd	xmm4, r9d
	movd	xmm1, esi
	lea	r9d, 256[r8]
	xor	r10d, r10d
	punpckldq	xmm1, xmm4
	movsx	r9, r9d
	mov	esi, 1344
	mov	rdx, QWORD PTR .LC28[rip]
	movsx	r9d, WORD PTR [rcx+r9*2]
	paddd	xmm1, xmm0
	movsx	ecx, WORD PTR [rcx+r8*2]
	movq	xmm0, QWORD PTR .LC27[rip]
	mov	QWORD PTR 212[rax], rdx
	xor	edx, edx
	lea	edi, [r9+r9*4]
	lea	ecx, [rcx+rcx*4]
	xor	r9d, r9d
	movd	xmm4, ecx
	paddd	xmm1, xmm0
	movd	xmm0, edi
	mov	ecx, DWORD PTR 0[rbp]
	punpckldq	xmm0, xmm4
	lea	edi, -5[rbx]
	punpcklqdq	xmm0, xmm2
	movd	xmm2, DWORD PTR 4[rax]
	psrad	xmm0, 3
	punpckldq	xmm2, xmm5
	punpcklqdq	xmm2, xmm2
	paddd	xmm0, xmm2
	movups	XMMWORD PTR 196[rax], xmm0
	.p2align 4,,10
	.p2align 3
.L134:
	mov	r8d, edi
	imul	ecx, ecx, 1663525
	sub	r8d, edx
	and	r8d, 31
	movsx	r12d, WORD PTR 54[rax+r8*2]
	movsx	r8d, WORD PTR 118[rax+r8*2]
	add	ecx, 1013904223
	sal	r12d, 8
	sal	r8d, 8
	add	r10d, r12d
	add	r9d, r8d
	movzx	r12d, cl
	mov	r8d, esi
	movd	xmm0, r10d
	movd	xmm3, r9d
	sub	r8d, r12d
	punpckldq	xmm0, xmm3
	psrad	xmm0, 3
	paddd	xmm0, xmm1
	movq	QWORD PTR 220[rax+rdx*2], xmm0
	mov	WORD PTR 270[rax+rdx], r11w
	sub	r11d, 64
	mov	WORD PTR 268[rax+rdx], r8w
	add	rdx, 4
	cmp	rdx, 24
	jne	.L134
	sub	ebx, 27
	mov	DWORD PTR 0[rbp], ecx
	and	ebx, 31
	movsx	edx, WORD PTR 54[rax+rbx*2]
	sal	edx, 7
	lea	edi, [rdx+r10]
	movsx	edx, WORD PTR 118[rax+rbx*2]
	mov	DWORD PTR 300[rax], -96467712
	movd	xmm0, edi
	sal	edx, 7
	add	edx, r9d
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	psrad	xmm0, 3
	paddd	xmm0, xmm1
	movq	QWORD PTR 292[rax], xmm0
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8043BEC
	.def	sub_8043BEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8043BEC
sub_8043BEC:
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
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	edx, 60
	mov	eax, DWORD PTR 4[rcx]
	mov	r8d, DWORD PTR [r12]
	sar	eax, 8
	sub	eax, r8d
	mov	rbx, rcx
	mov	ecx, DWORD PTR 4[r12]
	sub	edx, eax
	add	eax, 50
	mov	WORD PTR [r9], dx
	lea	rsi, 384[rbx]
	mov	edx, ecx
	sub	dx, WORD PTR 9[rbx]
	add	edx, 54
	mov	WORD PTR 2[r9], dx
	mov	r9, QWORD PTR .refptr.gDispCnt[rip]
	movzx	edx, WORD PTR [r9]
	mov	r10d, edx
	or	dh, 1
	and	r10w, -257
	cmp	eax, 351
	movzx	eax, WORD PTR 197[rbx]
	cmovnb	edx, r10d
	sub	eax, r8d
	mov	WORD PTR 422[rbx], ax
	movzx	eax, WORD PTR 201[rbx]
	mov	WORD PTR [r9], dx
	sub	eax, ecx
	mov	rcx, rsi
	mov	WORD PTR 424[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	cmp	BYTE PTR 21[rbx], 0
	je	.L139
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L140
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L140
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jle	.L139
	.p2align 4,,10
	.p2align 3
.L140:
	movzx	eax, WORD PTR 205[rbx]
	sub	ax, WORD PTR [r12]
	lea	rcx, 752[rbx]
	lea	rbp, 824[rbx]
	mov	WORD PTR 790[rbx], ax
	movzx	eax, WORD PTR 209[rbx]
	mov	esi, 1216
	lea	rdi, 220[rbx]
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 792[rbx], ax
	call	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L141:
	movzx	eax, WORD PTR 1[rdi]
	sub	ax, WORD PTR [r12]
	mov	rcx, rbp
	add	rdi, 8
	mov	WORD PTR 862[rbx], ax
	movzx	eax, WORD PTR -3[rdi]
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 866[rbx], si
	sub	esi, 64
	mov	WORD PTR 864[rbx], ax
	call	DisplaySprite
	cmp	si, 832
	jne	.L141
	movzx	eax, WORD PTR 293[rbx]
	sub	ax, WORD PTR [r12]
	lea	rsi, 888[rbx]
	mov	WORD PTR 926[rbx], ax
	movzx	eax, WORD PTR 297[rbx]
	mov	rcx, rsi
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 928[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L139:
	movzx	eax, WORD PTR 197[rbx]
	sub	ax, WORD PTR [r12]
	lea	rsi, 464[rbx]
	mov	WORD PTR 502[rbx], ax
	movzx	eax, WORD PTR 201[rbx]
	mov	rcx, rsi
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 504[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L140
	.seh_endproc
	.p2align 4
	.globl	sub_8043D94
	.def	sub_8043D94;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8043D94
sub_8043D94:
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
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, BYTE PTR 192[rcx]
	lea	rbp, 512[rbx]
	sub	eax, 1
	mov	BYTE PTR 192[rcx], al
	movzx	eax, al
	mov	r13, rcx
	mov	edi, edx
	add	eax, 16
	mov	esi, r8d
	add	r13, 960
	sal	eax, 4
	cdqe
	movsx	eax, WORD PTR [rbx+rax*2]
	add	rbx, 2560
	mov	r12d, eax
	sal	r12d, 4
	sub	r12d, eax
	sar	r12d, 13
	add	r12d, 16
	movzx	r12d, r12b
	.p2align 4,,10
	.p2align 3
.L147:
	movsx	eax, WORD PTR 0[rbp]
	mov	rcx, r13
	add	rbp, 256
	imul	eax, r12d
	sar	eax, 14
	add	eax, edi
	mov	WORD PTR 38[r13], ax
	movsx	eax, WORD PTR -768[rbp]
	imul	eax, r12d
	sar	eax, 14
	add	eax, esi
	mov	WORD PTR 40[r13], ax
	call	UpdateSpriteAnimation
	mov	rcx, r13
	add	r13, 64
	call	DisplaySprite
	cmp	rbp, rbx
	jne	.L147
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
	.globl	sub_80438C4
	.def	sub_80438C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80438C4
sub_80438C4:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rbp, QWORD PTR .refptr.gSineTable[rip]
	mov	esi, DWORD PTR 4[rcx]
	mov	r12d, DWORD PTR 8[rcx]
	sar	esi, 8
	sar	r12d, 8
	sub	esi, DWORD PTR [rax]
	sub	r12d, DWORD PTR 4[rax]
	mov	eax, 60
	lea	r8d, 50[rsi]
	sub	eax, esi
	mov	rbx, rcx
	movzx	ecx, si
	mov	WORD PTR [rdx], ax
	mov	eax, r12d
	lea	rdi, 384[rbx]
	sal	eax, 16
	or	eax, ecx
	movd	xmm6, eax
	mov	eax, 54
	sub	eax, r12d
	mov	WORD PTR 2[rdx], ax
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	movzx	eax, WORD PTR [rdx]
	mov	ecx, eax
	or	ah, 1
	and	ch, -2
	cmp	r8d, 537
	cmovnb	eax, ecx
	mov	rcx, rdi
	mov	WORD PTR [rdx], ax
	movzx	eax, WORD PTR 22[rbx]
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	edx, [rdx+rdx*4]
	sal	eax, 16
	sar	edx, 11
	movzx	edx, dx
	or	eax, edx
	movd	xmm0, eax
	paddw	xmm0, xmm6
	movd	DWORD PTR 422[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 464[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 22[rbx]
	mov	rcx, rdi
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	edx, [rdx+rdx*4]
	sal	eax, 16
	sar	edx, 11
	movzx	edx, dx
	or	eax, edx
	movd	xmm0, eax
	paddw	xmm0, xmm6
	movd	DWORD PTR 502[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	BYTE PTR 17[rbx], 0
	jne	.L158
.L153:
	movzx	eax, WORD PTR 48[rbx]
	lea	rcx, 752[rbx]
	lea	r13, 824[rbx]
	xor	r15d, r15d
	mov	r14d, 1216
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	edi, [rdx+rdx*4]
	sar	edi, 11
	add	edi, esi
	lea	esi, [rax+rax*4]
	sar	esi, 11
	mov	WORD PTR 790[rbx], di
	add	edi, 2
	add	esi, r12d
	mov	r12d, edi
	mov	WORD PTR 792[rbx], si
	call	DisplaySprite
	lea	eax, -17[rsi]
	movzx	edx, di
	mov	DWORD PTR 40[rsp], edi
	mov	DWORD PTR 44[rsp], eax
	mov	ebp, eax
	sal	eax, 16
	mov	edi, 4
	or	eax, edx
	xor	esi, esi
	movd	xmm6, eax
	.p2align 4,,10
	.p2align 3
.L155:
	movzx	eax, BYTE PTR 182[rbx]
	sub	eax, edi
	add	edi, 4
	and	eax, 31
	movsx	ecx, WORD PTR 54[rbx+rax*2]
	movsx	eax, WORD PTR 118[rbx+rax*2]
	mov	WORD PTR 866[rbx], r14w
	sub	r14d, 64
	add	esi, ecx
	add	r15d, eax
	mov	rcx, r13
	mov	eax, esi
	sar	eax, 3
	add	eax, r12d
	mov	WORD PTR 862[rbx], ax
	mov	eax, r15d
	sar	eax, 3
	add	eax, ebp
	mov	WORD PTR 864[rbx], ax
	call	DisplaySprite
	cmp	r14w, 832
	jne	.L155
	movzx	eax, BYTE PTR 182[rbx]
	lea	r13, 888[rbx]
	mov	rcx, r13
	sub	eax, 28
	and	eax, 31
	movzx	ebp, WORD PTR 118[rbx+rax*2]
	movzx	r12d, WORD PTR 54[rbx+rax*2]
	sar	bp
	sar	r12w
	movsx	ebp, bp
	movsx	r12d, r12w
	add	ebp, r15d
	add	r12d, esi
	sar	ebp, 3
	sar	r12d, 3
	mov	eax, ebp
	movzx	edx, r12w
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	paddw	xmm1, xmm6
	movd	DWORD PTR 926[rbx], xmm1
	call	UpdateSpriteAnimation
	mov	rcx, r13
	call	DisplaySprite
	cmp	BYTE PTR 192[rbx], 0
	jne	.L159
	movups	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
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
.L158:
	movzx	eax, WORD PTR 24[rbx]
	lea	rdi, 600[rbx]
	mov	rcx, rdi
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	edx, [rdx+rdx*4]
	sal	eax, 16
	sar	edx, 11
	movzx	edx, dx
	or	eax, edx
	movd	xmm0, eax
	paddw	xmm0, xmm6
	movd	DWORD PTR 638[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 528[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 24[rbx]
	movd	xmm0, DWORD PTR .LC5[rip]
	mov	DWORD PTR 674[rbx], 16777472
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	paddw	xmm6, xmm0
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	lea	edx, [rdx+rdx*4]
	sal	eax, 16
	sar	edx, 11
	movzx	edx, dx
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movd	xmm2, eax
	movzx	eax, BYTE PTR [rdx]
	paddw	xmm2, xmm6
	lea	ecx, 1[rax]
	or	eax, 4192
	mov	DWORD PTR 560[rbx], eax
	movzx	eax, WORD PTR 26[rbx]
	mov	BYTE PTR [rdx], cl
	mov	rcx, rdi
	mov	WORD PTR 672[rbx], ax
	movd	DWORD PTR 566[rbx], xmm2
	movd	DWORD PTR 678[rbx], xmm2
	call	UpdateSpriteAnimation
	lea	rdx, 672[rbx]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L153
	movzx	eax, WORD PTR 28[rbx]
	sub	eax, 1
	cmp	ax, 10
	ja	.L153
	lea	rdi, 688[rbx]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L159:
	mov	eax, DWORD PTR 40[rsp]
	movups	xmm6, XMMWORD PTR 48[rsp]
	mov	rcx, rbx
	lea	edx, -16[r12+rax]
	mov	eax, DWORD PTR 44[rsp]
	lea	r8d, 0[rbp+rax]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_8043D94
	.seh_endproc
	.p2align 4
	.globl	sub_8043E2C
	.def	sub_8043E2C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8043E2C
sub_8043E2C:
	.seh_endprologue
	cmp	BYTE PTR 17[rcx], 0
	jne	.L160
	cmp	BYTE PTR 32[rcx], 0
	je	.L162
.L160:
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	jmp	sub_8043E2C.part.0
	.seh_endproc
	.p2align 4
	.globl	EggSaucerMove
	.def	EggSaucerMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggSaucerMove
EggSaucerMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	movd	xmm3, edx
	mov	rdx, QWORD PTR 24[rax]
	movd	xmm1, ecx
	punpckldq	xmm1, xmm3
	movq	xmm0, QWORD PTR 4[rdx]
	movdqu	xmm2, xmm1
	lea	rax, 220[rdx]
	lea	rcx, 268[rdx]
	punpcklqdq	xmm2, xmm1
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rdx], xmm0
	movq	xmm0, QWORD PTR 40[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 40[rdx], xmm0
	movdqu	xmm0, XMMWORD PTR 196[rdx]
	paddd	xmm0, xmm2
	movups	XMMWORD PTR 196[rdx], xmm0
.L164:
	movdqu	xmm0, XMMWORD PTR [rax]
	add	rax, 16
	paddd	xmm0, xmm2
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rcx, rax
	jne	.L164
	movq	xmm0, QWORD PTR 292[rdx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 292[rdx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8044540
	.def	sub_8044540;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8044540
sub_8044540:
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
	movzx	eax, WORD PTR 12[rcx]
	mov	rsi, rcx
	test	ax, ax
	jle	.L167
	sub	eax, 2
	mov	WORD PTR 12[rcx], ax
.L167:
	cwde
	movq	xmm1, QWORD PTR 4[rsi]
	mov	rdi, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	movd	xmm0, eax
	movsx	eax, WORD PTR 14[rsi]
	mov	r8d, 1
	movd	xmm4, eax
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rsi], xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rdi
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 50
	call	sub_801E4E4
	movsx	ebx, WORD PTR 212[rsi]
	movq	xmm1, QWORD PTR 196[rsi]
	mov	r9d, 8
	sal	eax, 8
	add	DWORD PTR 8[rsi], eax
	movzx	eax, WORD PTR 214[rsi]
	mov	r8d, 1
	movd	xmm0, ebx
	add	eax, 48
	mov	WORD PTR 214[rsi], ax
	cwde
	movd	xmm4, eax
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR 196[rsi], xmm0
	movd	edx, xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L168
	movsx	edx, WORD PTR 214[rsi]
	sal	eax, 8
	add	DWORD PTR 200[rsi], eax
	sub	WORD PTR 212[rsi], 24
	imul	edx, edx, -70
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR 214[rsi], ax
.L168:
	movzx	eax, WORD PTR 218[rsi]
	movsx	ebx, WORD PTR 216[rsi]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 204[rsi]
	add	eax, 61
	movd	xmm0, ebx
	mov	WORD PTR 218[rsi], ax
	cwde
	movd	xmm4, eax
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR 204[rsi], xmm0
	movd	edx, xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L169
	movsx	edx, WORD PTR 218[rsi]
	sal	eax, 8
	add	DWORD PTR 208[rsi], eax
	sub	WORD PTR 216[rsi], 34
	imul	edx, edx, -65
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR 218[rsi], ax
.L169:
	lea	rbp, 220[rsi]
	lea	rbx, 270[rsi]
	mov	r12d, -65
	.p2align 4,,10
	.p2align 3
.L171:
	movzx	eax, WORD PTR [rbx]
	movsx	ecx, WORD PTR -2[rbx]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 0[rbp]
	add	eax, 56
	movd	xmm0, ecx
	mov	WORD PTR [rbx], ax
	cwde
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 0[rbp], xmm0
	movd	edx, xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L170
	movsx	edx, WORD PTR [rbx]
	sal	eax, 8
	add	DWORD PTR 4[rbp], eax
	imul	edx, r12d
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR [rbx], ax
	lea	eax, 14[r12]
	add	WORD PTR -2[rbx], ax
.L170:
	add	r12d, 1
	add	rbp, 8
	add	rbx, 4
	cmp	r12d, -59
	jne	.L171
	movzx	eax, WORD PTR 302[rsi]
	movsx	ebx, WORD PTR 300[rsi]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm0, QWORD PTR 292[rsi]
	add	eax, 64
	movd	xmm1, ebx
	mov	WORD PTR 302[rsi], ax
	cwde
	movd	xmm4, eax
	punpckldq	xmm1, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR 292[rsi], xmm0
	movd	edx, xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L166
	sal	eax, 8
	add	DWORD PTR 296[rsi], eax
	movsx	eax, WORD PTR 302[rsi]
	sub	WORD PTR 300[rsi], 52
	mov	edx, eax
	sal	edx, 4
	sub	eax, edx
	sal	eax, 2
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, eax
	mov	WORD PTR 302[rsi], dx
.L166:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80435BC
	.def	sub_80435BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80435BC
sub_80435BC:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_8044540
	mov	rcx, rbx
	call	sub_8043BEC
	cmp	BYTE PTR 17[rbx], 0
	jne	.L175
	cmp	BYTE PTR 32[rbx], 0
	je	.L196
.L175:
	cmp	BYTE PTR 21[rbx], 0
	jne	.L176
	mov	rcx, rbx
	call	sub_8045564.part.0
.L176:
	movzx	eax, BYTE PTR 19[rbx]
	test	al, al
	je	.L177
	sub	eax, 1
	mov	BYTE PTR 19[rbx], al
.L177:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L197
.L178:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	ecx, DWORD PTR 196[rbx]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	r9d, BYTE PTR 21[rbx]
	sar	ecx, 8
	movsx	eax, BYTE PTR [rax]
	mov	r8d, DWORD PTR [rdi]
	mov	edx, ecx
	sub	edx, r8d
	cmp	al, 28
	je	.L179
	mov	r10, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [r10], 0
	jne	.L179
	mov	r10, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r10, QWORD PTR [r10]
	movzx	r10d, BYTE PTR 7[r10]
	cmp	r10d, eax
	jg	.L179
	test	r9b, r9b
	jne	.L188
	cmp	edx, 49
	jg	.L184
	mov	BYTE PTR 21[rbx], 1
	.p2align 4,,10
	.p2align 3
.L188:
	cmp	edx, -200
	jl	.L187
.L174:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L179:
	test	r9b, r9b
	jne	.L188
	cmp	edx, 49
	jle	.L198
.L184:
	mov	rcx, rbx
	call	sub_8045898.part.0
	mov	eax, DWORD PTR 196[rbx]
	sar	eax, 8
	sub	eax, DWORD PTR [rdi]
	cmp	eax, -200
	jge	.L174
	cmp	BYTE PTR 21[rbx], 0
	je	.L174
.L187:
	mov	r8d, 4
	mov	edx, 140
	mov	ecx, -40
	call	sub_802EF68
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_804598C[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L196:
	mov	rcx, rbx
	call	sub_8043E2C.part.0
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L198:
	mov	BYTE PTR 21[rbx], 1
	sub	ecx, r8d
	movzx	edx, WORD PTR 201[rbx]
	mov	r8d, 8192
	sub	dx, WORD PTR 4[rdi]
	movsx	ecx, cx
	movsx	edx, dx
	call	CreateEggmobileEscapeSequence
	cmp	BYTE PTR 21[rbx], 0
	je	.L184
	mov	edx, DWORD PTR 196[rbx]
	sar	edx, 8
	sub	edx, DWORD PTR [rdi]
	jmp	.L188
	.seh_endproc
	.p2align 4
	.globl	sub_8044784
	.def	sub_8044784;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8044784
sub_8044784:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	esi, DWORD PTR 36[rdi]
	mov	rbx, rcx
	lea	r12, 306[rcx]
	and	esi, 128
	jne	.L226
	cmp	BYTE PTR 17[rcx], 0
	je	.L225
	movzx	r8d, WORD PTR 24[rcx]
	mov	rbp, QWORD PTR .refptr.gSineTable[rip]
	mov	edx, DWORD PTR 4[rcx]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	lea	eax, 256[r8]
	movzx	ecx, WORD PTR 26[rcx]
	cdqe
	sar	edx, 8
	sub	edx, DWORD PTR [r9]
	movsx	eax, WORD PTR 0[rbp+rax*2]
	lea	eax, [rax+rax*4]
	sar	eax, 11
	add	eax, edx
	lea	edx, 256[rcx]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	lea	r13d, [rdx+rdx*2]
	movsx	rdx, r8d
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	sar	r13d, 11
	add	r13d, eax
	mov	eax, DWORD PTR 8[rbx]
	lea	edx, [rdx+rdx*4]
	sar	eax, 8
	sar	edx, 11
	sub	eax, DWORD PTR 4[r9]
	lea	edx, -18[rax+rdx]
	movsx	rax, ecx
	movsx	eax, WORD PTR 0[rbp+rax*2]
	lea	eax, [rax+rax*2]
	sar	eax, 11
	lea	r14d, [rax+rdx]
	movzx	eax, BYTE PTR 30[rbx]
	movzx	edx, WORD PTR 28[rbx]
	test	al, al
	jne	.L227
.L204:
	mov	r8d, 8192
	lea	eax, -1[rdx]
	mov	WORD PTR 310[rbx], r8w
	mov	WORD PTR 28[rbx], ax
	test	ax, ax
	je	.L228
	lea	r8d, -12[rdx]
	cmp	r8w, 28
	jbe	.L210
	cmp	ax, 12
	ja	.L206
	mov	WORD PTR 726[rbx], r13w
	mov	WORD PTR 728[rbx], r14w
.L206:
	mov	rcx, r12
	call	UpdateScreenFade
	movzx	r8d, WORD PTR 24[rbx]
	mov	edx, DWORD PTR 12[rdi]
	mov	r9d, DWORD PTR 4[rbx]
	mov	ecx, DWORD PTR 16[rdi]
	lea	eax, 256[r8]
	sar	edx, 8
	sar	r9d, 8
	cdqe
	add	edx, 2
	sar	ecx, 8
	movsx	eax, WORD PTR 0[rbp+rax*2]
	add	ecx, 19
	lea	eax, [rax+rax*4]
	sar	eax, 11
	add	eax, r9d
	sub	edx, eax
	movsx	eax, WORD PTR 0[rbp+r8*2]
	mov	r8d, DWORD PTR 8[rbx]
	movsx	edx, dx
	lea	eax, [rax+rax*4]
	sar	r8d, 8
	sar	eax, 11
	add	eax, r8d
	sub	ecx, eax
	movsx	ecx, cx
	call	sub_8004418
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rdx], 1
	je	.L214
	movzx	edx, WORD PTR 26[rbx]
	cmp	dx, ax
	jnb	.L215
	cmp	dx, 575
	ja	.L214
	add	edx, 1
	mov	WORD PTR 26[rbx], dx
	.p2align 4,,10
	.p2align 3
.L214:
	test	esi, esi
	je	.L199
	movzx	edx, WORD PTR 26[rbx]
	movzx	eax, ax
	lea	ecx, -15[rdx]
	cmp	ecx, eax
	jg	.L199
	add	edx, 15
	cmp	eax, edx
	jg	.L199
	mov	rcx, rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	Coll_DamagePlayer
	.p2align 4,,10
	.p2align 3
.L227:
	test	dx, dx
	jne	.L204
	sub	eax, 1
	mov	edx, 32
	movsx	r9d, r13w
	mov	r8d, 6
	mov	BYTE PTR 30[rbx], al
	movzx	eax, al
	sub	edx, eax
	add	eax, 8
	sal	edx, 8
	mov	WORD PTR 310[rbx], dx
	movzx	edx, ax
	movsx	eax, r14w
	mov	DWORD PTR 40[rsp], 32
	mov	DWORD PTR 32[rsp], eax
	call	ScreenMask_CreateShape
	cmp	BYTE PTR 30[rbx], 0
	jne	.L207
	xor	edx, edx
	cmp	BYTE PTR 16[rbx], 4
	lea	rax, gUnknown_080D7F94[rip]
	seta	dl
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	WORD PTR 28[rbx], ax
.L207:
	mov	esi, 1
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L226:
	cmp	WORD PTR 310[rcx], 8192
	jne	.L225
.L201:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
.L199:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L225:
	mov	r9d, 8192
	mov	rcx, r12
	mov	WORD PTR 310[rbx], r9w
	call	UpdateScreenFade
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L210:
	mov	eax, 75
	movsx	r9d, r13w
	mov	r8d, 6
	sub	eax, edx
	mov	edx, 10
	sal	eax, 7
	mov	WORD PTR 310[rbx], ax
	movsx	eax, r14w
	mov	DWORD PTR 32[rsp], eax
	mov	DWORD PTR 40[rsp], 32
	call	ScreenMask_CreateShape
	movzx	eax, WORD PTR 28[rbx]
.L209:
	cmp	ax, 12
	ja	.L206
	mov	WORD PTR 726[rbx], r13w
	mov	WORD PTR 728[rbx], r14w
	jne	.L206
	mov	eax, 683
	mov	edx, -256
	mov	WORD PTR 706[rbx], ax
	mov	WORD PTR 736[rbx], dx
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L228:
	mov	ecx, 252
	call	m4aSongNumStart
	mov	BYTE PTR 30[rbx], 16
	movzx	eax, WORD PTR 28[rbx]
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L215:
	cmp	dx, 448
	jbe	.L214
	sub	edx, 1
	mov	WORD PTR 26[rbx], dx
	jmp	.L214
	.seh_endproc
	.p2align 4
	.globl	sub_80452F8
	.def	sub_80452F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80452F8
sub_80452F8:
	.seh_endprologue
	cmp	BYTE PTR 19[rcx], 0
	jne	.L229
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rcx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L231
	mov	r8, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [r8], 0
	jne	.L231
	mov	r8, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR [r8]
	movzx	r8d, BYTE PTR 7[r8]
	cmp	r8d, eax
	mov	eax, 315
	cmovle	edx, eax
.L231:
	mov	eax, -255
	mov	WORD PTR 482[rcx], dx
	mov	WORD PTR 512[rcx], ax
.L229:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8045368
	.def	sub_8045368;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8045368
sub_8045368:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 16[rcx]
	sub	eax, 1
	mov	BYTE PTR 16[rcx], al
	mov	rbx, rcx
	test	al, 1
	je	.L237
	mov	ecx, 143
	call	m4aSongNumStart
.L238:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	r11d, 7680
	movzx	edx, BYTE PTR 16[rbx]
	mov	WORD PTR 18[rbx], r11w
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L239
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	je	.L270
.L241:
	mov	r9d, 684
	mov	WORD PTR 482[rbx], r9w
	test	dl, dl
	je	.L249
.L267:
	mov	r8d, -254
	mov	WORD PTR 512[rbx], r8w
	cmp	dl, 4
	je	.L271
.L236:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L270:
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	jg	.L241
	mov	r10d, 315
	mov	WORD PTR 482[rbx], r10w
	test	dl, dl
	jne	.L267
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 512[rbx], 3
	mov	ecx, DWORD PTR [rax]
	lea	edx, 1000[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L268
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L268
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	mov	BYTE PTR 513[rbx], -1
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L271:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L239:
	mov	ecx, 684
	mov	WORD PTR 482[rbx], cx
	test	dl, dl
	jne	.L272
.L249:
	mov	rdx, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 512[rbx], 3
	mov	ecx, DWORD PTR [rdx]
	lea	eax, 1000[rcx]
	mov	DWORD PTR [rdx], eax
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, eax
	movsx	rax, ecx
	sar	ecx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, ecx
	cmp	edx, eax
	je	.L268
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L268
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [r8]
	add	edx, ecx
	sub	edx, eax
	mov	eax, 255
	cmp	dx, ax
	cmova	edx, eax
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR [r8], dl
	mov	BYTE PTR 3[rax], 16
.L268:
	mov	BYTE PTR 513[rbx], -1
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	mov	eax, -254
	mov	WORD PTR 512[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	HandleCollision
	.def	HandleCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleCollision
HandleCollision:
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
	sub	rsp, 64
	.seh_stackalloc	64
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gSineTable[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, 2
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, WORD PTR 22[rcx]
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[r13+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[r13+rdx*2]
	lea	ebp, [rax+rax*4]
	mov	eax, DWORD PTR 8[rcx]
	lea	r14, 384[rcx]
	sar	ebp, 11
	mov	rbx, rcx
	lea	r12d, [rdx+rdx*4]
	mov	edx, DWORD PTR 4[rcx]
	sar	eax, 8
	sar	r12d, 11
	add	ebp, eax
	sar	edx, 8
	mov	r8d, ebp
	add	r12d, edx
	mov	eax, r12d
	sub	ax, WORD PTR [rdi]
	mov	edx, r12d
	mov	WORD PTR 422[rcx], ax
	mov	eax, ebp
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 424[rcx], ax
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], rsi
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L342
.L274:
	mov	QWORD PTR 32[rsp], rsi
	mov	r8d, ebp
	mov	edx, r12d
	mov	rcx, r14
	mov	r9d, 1
	call	Coll_Player_Boss_Attack
	cmp	BYTE PTR 19[rbx], 0
	je	.L343
.L277:
	mov	edx, ebp
	mov	ecx, r12d
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 19[rbx], 0
	je	.L344
.L282:
	cmp	BYTE PTR 17[rbx], 0
	je	.L284
	cmp	BYTE PTR 31[rbx], 0
	je	.L345
.L284:
	movzx	eax, WORD PTR 48[rbx]
	lea	r14, 752[rbx]
	xor	r9d, r9d
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[r13+rax*2]
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[r13+rdx*2]
	lea	r8d, [rax+rax*4]
	mov	eax, DWORD PTR 8[rbx]
	sar	r8d, 11
	lea	ecx, [rdx+rdx*4]
	mov	edx, DWORD PTR 4[rbx]
	sar	eax, 8
	sar	ecx, 11
	lea	ebp, [r8+rax]
	sar	edx, 8
	mov	r8d, ebp
	lea	r12d, [rcx+rdx]
	mov	rcx, r14
	mov	eax, r12d
	sub	ax, WORD PTR [rdi]
	mov	edx, r12d
	mov	WORD PTR 790[rbx], ax
	mov	eax, ebp
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 792[rbx], ax
	mov	QWORD PTR 32[rsp], rsi
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L346
.L299:
	mov	QWORD PTR 32[rsp], rsi
	mov	r8d, ebp
	mov	edx, r12d
	mov	rcx, r14
	mov	r9d, 1
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L347
.L301:
	movzx	r10d, BYTE PTR 182[rbx]
	lea	ecx, 2[r12]
	lea	r8d, -17[rbp]
	lea	edx, -4[r10]
	sub	r10d, 28
	.p2align 4,,10
	.p2align 3
.L303:
	mov	r9, rdx
	sub	edx, 4
	and	r9d, 31
	movzx	eax, WORD PTR 54[rbx+r9*2]
	sar	ax, 3
	cwde
	add	ecx, eax
	movzx	eax, WORD PTR 118[rbx+r9*2]
	sar	ax, 3
	cwde
	add	r8d, eax
	cmp	dl, r10b
	jne	.L303
	and	edx, 31
	lea	r13, 888[rbx]
	mov	r9d, 1
	movzx	ebp, WORD PTR 54[rbx+rdx*2]
	movzx	r12d, WORD PTR 118[rbx+rdx*2]
	sar	bp, 4
	sar	r12w, 4
	movsx	ebp, bp
	movsx	r12d, r12w
	add	ebp, ecx
	add	r12d, r8d
	mov	rcx, r13
	mov	eax, ebp
	sub	ax, WORD PTR [rdi]
	mov	r8d, r12d
	mov	edx, ebp
	mov	WORD PTR 926[rbx], ax
	mov	eax, r12d
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 928[rbx], ax
	mov	QWORD PTR 32[rsp], rsi
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L348
.L304:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r12d
	mov	edx, ebp
	mov	rcx, r13
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L349
.L273:
	movups	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L274
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L275
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L275
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L275:
	mov	eax, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], ax
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L349:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L273
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L308
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L308
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L308:
	mov	eax, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], ax
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L348:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L305
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L306
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L306
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L306:
	mov	WORD PTR 482[rbx], dx
	mov	edx, -255
	mov	WORD PTR 512[rbx], dx
.L305:
	or	DWORD PTR 36[rsi], 128
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L347:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L301
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L302
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L302
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L302:
	mov	ecx, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], cx
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L346:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L299
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L300
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L300
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L300:
	mov	r8d, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], r8w
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L344:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, ebp
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L282
	mov	rcx, rbx
	call	sub_8045368
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L343:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, ebp
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	je	.L350
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, ebp
	mov	edx, r12d
	mov	rcx, r14
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L277
	cmp	BYTE PTR 19[rbx], 0
	jne	.L277
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L280
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L280
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L280:
	mov	r11d, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], r11w
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L345:
	movzx	eax, WORD PTR 24[rbx]
	movq	xmm0, QWORD PTR 4[rbx]
	lea	r14, 600[rbx]
	mov	r9d, 1
	movq	xmm6, QWORD PTR .LC31[rip]
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 0[r13+rax*2]
	psrad	xmm0, 8
	movsx	rdx, edx
	movsx	edx, WORD PTR 0[r13+rdx*2]
	lea	ecx, [rdx+rdx*4]
	lea	edx, [rax+rax*4]
	mov	eax, DWORD PTR 8[rbx]
	sar	ecx, 11
	sar	edx, 11
	movd	xmm1, ecx
	movd	xmm2, edx
	sar	eax, 8
	add	eax, edx
	punpckldq	xmm1, xmm2
	mov	edx, DWORD PTR 4[rbx]
	sub	ax, WORD PTR 4[rdi]
	paddd	xmm0, xmm1
	mov	WORD PTR 640[rbx], ax
	sar	edx, 8
	add	edx, ecx
	sub	dx, WORD PTR [rdi]
	mov	rcx, r14
	mov	WORD PTR 638[rbx], dx
	paddd	xmm6, xmm0
	movd	ebp, xmm0
	pshufd	xmm3, xmm0, 0xe5
	mov	QWORD PTR 32[rsp], rsi
	movd	r12d, xmm3
	mov	edx, ebp
	mov	r8d, r12d
	pslld	xmm6, 8
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L351
.L285:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r12d
	mov	edx, ebp
	mov	rcx, r14
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	jne	.L287
	movzx	eax, BYTE PTR 17[rbx]
	mov	BYTE PTR 31[rbx], 30
	sub	eax, 1
	mov	BYTE PTR 17[rbx], al
	test	al, 1
	jne	.L352
	mov	ecx, 235
	call	m4aSongNumStart
.L289:
	cmp	BYTE PTR 17[rbx], 0
	jne	.L291
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	ecx, DWORD PTR [rax]
	lea	edx, 500[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L291
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L291
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L350:
	mov	rcx, rbx
	call	sub_8045368
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L287:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r12d
	mov	edx, ebp
	mov	rcx, r14
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L353
.L291:
	mov	edx, r12d
	mov	ecx, ebp
	sal	edx, 8
	sal	ecx, 8
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 31[rbx], 0
	je	.L354
.L295:
	movq	QWORD PTR 40[rbx], xmm6
	jmp	.L284
.L351:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L285
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L286
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L286
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L286:
	mov	r10d, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], r10w
	jmp	.L285
.L354:
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, r12d
	mov	edx, ebp
	mov	rcx, r14
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L295
	movzx	eax, BYTE PTR 17[rbx]
	mov	BYTE PTR 31[rbx], 30
	sub	eax, 1
	mov	BYTE PTR 17[rbx], al
	test	al, 1
	je	.L297
	mov	ecx, 143
	call	m4aSongNumStart
.L298:
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
	cmp	BYTE PTR 17[rbx], 0
	jne	.L295
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	ecx, DWORD PTR [rax]
	lea	edx, 500[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L295
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L295
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L352:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L289
.L353:
	cmp	BYTE PTR 19[rbx], 0
	jne	.L291
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 18[rbx], 30
	mov	edx, 684
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L293
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L293
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rcx]
	movzx	ecx, BYTE PTR 7[rcx]
	cmp	ecx, eax
	mov	eax, 315
	cmovle	edx, eax
.L293:
	mov	r9d, -255
	mov	WORD PTR 482[rbx], dx
	mov	WORD PTR 512[rbx], r9w
	jmp	.L291
.L297:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L298
	.seh_endproc
	.p2align 4
	.globl	sub_80454A4
	.def	sub_80454A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80454A4
sub_80454A4:
	.seh_endprologue
	movzx	eax, BYTE PTR 19[rcx]
	test	al, al
	je	.L359
	sub	eax, 1
	mov	BYTE PTR 19[rcx], al
	test	al, al
	je	.L363
.L359:
	movzx	eax, BYTE PTR 18[rcx]
	test	al, al
	je	.L355
	sub	eax, 1
	mov	BYTE PTR 18[rcx], al
	test	al, al
	jne	.L355
.L363:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	r8d, BYTE PTR 16[rcx]
	movsx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L361
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L361
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jg	.L361
	cmp	r8b, 1
	mov	edx, 315
	sbb	eax, eax
	and	eax, 3
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L361:
	cmp	r8b, 1
	mov	edx, 684
	sbb	eax, eax
	and	eax, 3
.L364:
	mov	WORD PTR 482[rcx], dx
	mov	BYTE PTR 512[rcx], al
	mov	BYTE PTR 513[rcx], -1
.L355:
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_EggSaucerIntro
	.def	Task_EggSaucerIntro;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_EggSaucerIntro
Task_EggSaucerIntro:
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
	add	DWORD PTR 4[rbx], 1024
	mov	rcx, rbx
	call	SaucerUpdatePosAndRotate
	mov	rcx, rbx
	call	sub_8044784
	movzx	edx, BYTE PTR 191[rbx]
	lea	rax, gArmFunctions[rip]
	mov	rcx, rbx
	call	[QWORD PTR [rax+rdx*8]]
	cmp	BYTE PTR 17[rbx], 0
	jne	.L371
	movzx	eax, WORD PTR 22[rbx]
	movzx	ecx, WORD PTR 48[rbx]
	add	eax, 512
	mov	edx, ecx
	and	eax, 1023
	cmp	ecx, eax
	je	.L371
	add	edx, 1
	and	dx, 1023
	mov	WORD PTR 48[rbx], dx
.L371:
	mov	rcx, rbx
	call	sub_80454A4
	call	sub_80438C4
	cmp	BYTE PTR 21[rbx], 0
	jne	.L372
	mov	rcx, rbx
	call	sub_8045898.part.0
.L372:
	sub	WORD PTR 304[rbx], 1
	jne	.L370
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_804352C[rip]
	mov	QWORD PTR 40[rax], rsi
.L370:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804352C
	.def	sub_804352C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804352C
sub_804352C:
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
	call	SaucerUpdatePosAndRotate
	mov	rcx, rbx
	call	sub_8044784
	movzx	edx, BYTE PTR 191[rbx]
	lea	rax, gArmFunctions[rip]
	mov	rcx, rbx
	call	[QWORD PTR [rax+rdx*8]]
	cmp	BYTE PTR 17[rbx], 0
	jne	.L375
	movzx	eax, WORD PTR 22[rbx]
	movzx	ecx, WORD PTR 48[rbx]
	add	eax, 512
	mov	edx, ecx
	and	eax, 1023
	cmp	ecx, eax
	je	.L375
	add	edx, 1
	and	dx, 1023
	mov	WORD PTR 48[rbx], dx
.L375:
	mov	rcx, rbx
	call	HandleCollision
	mov	rcx, rbx
	call	sub_80454A4
	call	sub_80438C4
	cmp	BYTE PTR 17[rbx], 0
	jne	.L376
	cmp	BYTE PTR 32[rbx], 0
	je	.L379
.L376:
	cmp	BYTE PTR 21[rbx], 0
	jne	.L377
	mov	rcx, rbx
	call	sub_8045898.part.0
.L377:
	cmp	BYTE PTR 16[rbx], 0
	je	.L380
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	edx, edx
	mov	WORD PTR [rax], dx
	call	Player_DisableInputAndBossTimer
	mov	rcx, rbx
	call	sub_80436E4
	mov	rax, QWORD PTR [rsi]
	mov	ecx, 1280
	lea	rsi, sub_80435BC[rip]
	mov	WORD PTR 12[rbx], cx
	mov	BYTE PTR 17[rbx], 0
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L379:
	mov	rcx, rbx
	call	sub_8043E2C.part.0
	jmp	.L376
	.seh_endproc
	.p2align 4
	.globl	sub_8045564
	.def	sub_8045564;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8045564
sub_8045564:
	.seh_endprologue
	cmp	BYTE PTR 21[rcx], 0
	jne	.L381
	jmp	sub_8045564.part.0
	.p2align 4,,10
	.p2align 3
.L381:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8045898
	.def	sub_8045898;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8045898
sub_8045898:
	.seh_endprologue
	cmp	BYTE PTR 21[rcx], 0
	jne	.L383
	jmp	sub_8045898.part.0
	.p2align 4,,10
	.p2align 3
.L383:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80459A0
	.def	sub_80459A0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80459A0
sub_80459A0:
	.seh_endprologue
	cmp	BYTE PTR 17[rcx], 0
	jne	.L385
	movzx	eax, WORD PTR 22[rcx]
	movzx	r8d, WORD PTR 48[rcx]
	add	eax, 512
	mov	edx, r8d
	and	eax, 1023
	cmp	r8d, eax
	je	.L385
	add	edx, 1
	and	dx, 1023
	mov	WORD PTR 48[rcx], dx
.L385:
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D7FF0:
	.word	21212
	.word	16606
	.word	16958
	.word	19263
	.word	23487
	.word	31678
	.word	16408
	.word	31992
	.word	32184
	.word	32474
	.word	32636
	.word	19544
	.word	21721
	.word	26010
	.word	28220
	.word	29373
	.word	22831
	.word	32548
	.word	32198
	.word	27840
	.word	19520
	.word	2116
	.word	32767
	.word	799
	.word	607
	.word	310
	.word	143
	.word	26558
	.word	22329
	.word	13940
	.word	9678
	.word	6474
	.align 32
gUnknown_080D7FB0:
	.long	2
	.word	680
	.byte	0
	.space 1
	.long	4
	.word	676
	.byte	0
	.space 1
	.long	2
	.word	678
	.byte	0
	.space 1
	.long	4
	.word	675
	.byte	0
	.space 1
	.long	2
	.word	679
	.byte	0
	.space 1
	.long	4
	.word	673
	.byte	0
	.space 1
	.long	2
	.word	677
	.byte	0
	.space 1
	.long	4
	.word	674
	.byte	0
	.space 1
	.align 32
gArmFunctions:
	.quad	sub_8044A14
	.quad	sub_8044B28
	.quad	sub_8044CBC
	.quad	sub_8044EB0
	.quad	sub_8044FE4
	.quad	sub_80451C4
	.globl	gUnknown_080D7F94
	.align 2
gUnknown_080D7F94:
	.word	240
	.word	480
	.align 4
.LC3:
	.word	2
	.word	2
	.align 4
.LC4:
	.word	1023
	.word	1023
	.align 4
.LC5:
	.word	-2
	.word	-19
	.align 8
.LC7:
	.long	1013904223
	.long	1013904223
	.align 8
.LC8:
	.long	15
	.long	15
	.align 8
.LC9:
	.long	-8
	.long	-8
	.align 8
.LC14:
	.word	341
	.word	0
	.word	512
	.word	960
	.align 2
.LC18:
	.byte	0
	.byte	-1
	.align 8
.LC27:
	.long	512
	.long	-4352
	.align 8
.LC28:
	.word	1408
	.word	-1152
	.word	1216
	.word	-1024
	.align 8
.LC31:
	.long	-5
	.long	1
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation_BG;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite_BG;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_CreateShape;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
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
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
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
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gPlayerLimbsPSI, "dr"
	.globl	.refptr.gPlayerLimbsPSI
	.linkonce	discard
.refptr.gPlayerLimbsPSI:
	.quad	gPlayerLimbsPSI
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gTileInfoBossScrews, "dr"
	.globl	.refptr.gTileInfoBossScrews
	.linkonce	discard
.refptr.gTileInfoBossScrews:
	.quad	gTileInfoBossScrews
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
