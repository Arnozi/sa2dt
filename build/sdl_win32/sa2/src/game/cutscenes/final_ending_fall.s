	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8092800
	.def	sub_8092800;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092800
sub_8092800:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80927E8
	.def	sub_80927E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80927E8
sub_80927E8:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	CreateFinalEndingLandingCutScene
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 40
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateFinalEndingFallCutScene
	.def	CreateFinalEndingFallCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateFinalEndingFallCutScene
CreateFinalEndingFallCutScene:
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
	mov	edx, 65535
	xor	ecx, ecx
	call	SeedRng
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4928
	xor	ecx, ecx
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR [rax], -1744462845
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	QWORD PTR [rax], rdx
	call	m4aMPlayAllStop
	mov	ecx, 42
	call	m4aSongNumStart
	lea	rax, sub_8092800[rip]
	xor	r9d, r9d
	mov	r8d, 12544
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 1496
	lea	rcx, sub_8092690[rip]
	call	TaskCreate
	xor	r8d, r8d
	xor	r9d, r9d
	pxor	xmm0, xmm0
	mov	rbx, QWORD PTR 24[rax]
	mov	BYTE PTR 1164[rbx], 0
	lea	rax, 1192[rbx]
	lea	rdx, 1240[rbx]
	mov	QWORD PTR 1480[rbx], 0
	mov	QWORD PTR 1440[rbx], 0
	mov	WORD PTR 1171[rbx], r8w
	mov	DWORD PTR 1188[rbx], 0
	mov	QWORD PTR 1180[rbx], 10485960
	mov	DWORD PTR 1165[rbx], 0
	mov	WORD PTR 1169[rbx], r9w
	mov	QWORD PTR 1468[rbx], 0
	mov	BYTE PTR 1173[rbx], 0
	movups	XMMWORD PTR 1452[rbx], xmm0
	.p2align 4,,10
	.p2align 3
.L5:
	mov	DWORD PTR [rax], 0
	add	rax, 8
	mov	DWORD PTR 72[rax], 0
	cmp	rax, rdx
	jne	.L5
	lea	rax, 1196[rbx]
	lea	rdx, 1244[rbx]
	.p2align 4,,10
	.p2align 3
.L6:
	mov	DWORD PTR [rax], 0
	add	rax, 8
	mov	DWORD PTR 72[rax], 0
	cmp	rdx, rax
	jne	.L6
	movabs	rax, 87960930222200
	lea	rsi, 1320[rbx]
	mov	edi, 1
	mov	QWORD PTR 1240[rbx], rax
	lea	rbp, 1440[rbx]
	movabs	rax, 515396075521
	mov	QWORD PTR 1248[rbx], rax
	movabs	rax, 4294987776
	mov	QWORD PTR 1256[rbx], rax
	mov	rax, QWORD PTR .LC3[rip]
	mov	QWORD PTR 1264[rbx], rax
	.p2align 4,,10
	.p2align 3
.L7:
	call	Random
	mov	DWORD PTR 4[rsi], 0
	add	rsi, 12
	movzx	eax, al
	mov	DWORD PTR -12[rsi], eax
	call	Random
	and	eax, 1
	lea	ecx, 12[rax]
	mov	eax, edi
	sal	eax, cl
	add	eax, 256
	mov	DWORD PTR -4[rsi], eax
	cmp	rbp, rsi
	jne	.L7
	mov	rax, QWORD PTR .LC4[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	r10d, r10d
	mov	BYTE PTR 1488[rbx], 0
	movzx	edi, WORD PTR .LC6[rip]
	mov	WORD PTR 236[rbx], r10w
	lea	rcx, 192[rbx]
	mov	QWORD PTR 1152[rbx], rax
	lea	rax, 65536[rsi]
	mov	QWORD PTR 200[rbx], rax
	lea	rax, 66016[rsi]
	mov	DWORD PTR 1160[rbx], 16319
	mov	QWORD PTR 1480[rbx], rax
	mov	WORD PTR 240[rbx], di
	mov	DWORD PTR 208[rbx], 53936128
	mov	BYTE PTR 242[rbx], 16
	mov	BYTE PTR 245[rbx], 0
	mov	QWORD PTR 224[rbx], 0
	mov	DWORD PTR 232[rbx], 0
	mov	DWORD PTR 248[rbx], -1
	call	UpdateSpriteAnimation
	xor	r11d, r11d
	xor	r8d, r8d
	xor	ecx, ecx
	mov	rax, QWORD PTR 1480[rbx]
	movzx	ebp, WORD PTR .LC8[rip]
	xor	r9d, r9d
	movabs	rdx, 59954170039369728
	mov	QWORD PTR 416[rbx], rdx
	xor	edx, edx
	mov	WORD PTR 428[rbx], dx
	lea	rdx, 6656[rax]
	mov	QWORD PTR 456[rbx], rdx
	movabs	rdx, 33776997205278720
	mov	QWORD PTR 392[rbx], rax
	mov	QWORD PTR 480[rbx], rdx
	lea	rdx, 9728[rax]
	add	rax, 10688
	mov	WORD PTR 400[rbx], r11w
	mov	WORD PTR 464[rbx], cx
	lea	rcx, 576[rbx]
	mov	WORD PTR 492[rbx], r8w
	mov	QWORD PTR 584[rbx], rdx
	mov	WORD PTR 433[rbx], bp
	mov	BYTE PTR 437[rbx], 0
	mov	DWORD PTR 424[rbx], 120
	mov	DWORD PTR 440[rbx], -1
	mov	WORD PTR 497[rbx], bp
	mov	BYTE PTR 501[rbx], 0
	mov	DWORD PTR 488[rbx], 80
	mov	DWORD PTR 504[rbx], -1
	mov	QWORD PTR 1480[rbx], rax
	mov	WORD PTR 624[rbx], di
	mov	DWORD PTR 592[rbx], 53411840
	mov	BYTE PTR 626[rbx], 16
	mov	BYTE PTR 629[rbx], 2
	mov	QWORD PTR 608[rbx], 8192
	mov	DWORD PTR 616[rbx], 8388608
	mov	WORD PTR 620[rbx], r9w
	mov	DWORD PTR 632[rbx], -1
	call	UpdateSpriteAnimation
	mov	r8, QWORD PTR 1480[rbx]
	xor	r10d, r10d
	xor	r11d, r11d
	mov	WORD PTR 656[rbx], r10w
	lea	rax, 128[r8]
	mov	QWORD PTR 648[rbx], r8
	lea	rdx, 256[r8]
	mov	QWORD PTR 712[rbx], rax
	xor	eax, eax
	lea	rcx, 1984[r8]
	mov	WORD PTR 689[rbx], bp
	mov	BYTE PTR 693[rbx], 2
	mov	QWORD PTR 672[rbx], 8192
	mov	DWORD PTR 680[rbx], 4194304
	mov	WORD PTR 684[rbx], r11w
	mov	DWORD PTR 696[rbx], -1
	mov	WORD PTR 753[rbx], bp
	mov	BYTE PTR 757[rbx], 2
	mov	QWORD PTR 736[rbx], 8192
	mov	DWORD PTR 744[rbx], 4194304
	mov	DWORD PTR 760[rbx], -1
	mov	WORD PTR 720[rbx], ax
	xor	eax, eax
	mov	WORD PTR 748[rbx], ax
	lea	rax, 776[rbx]
	.p2align 4,,10
	.p2align 3
.L8:
	xor	r9d, r9d
	mov	QWORD PTR [rax], rdx
	xor	r10d, r10d
	xor	r11d, r11d
	mov	WORD PTR 34[rax], r9w
	add	rdx, 288
	xor	r9d, r9d
	add	rax, 64
	mov	DWORD PTR -34[rax], 0
	mov	WORD PTR -56[rax], r10w
	mov	WORD PTR -36[rax], r11w
	mov	WORD PTR -28[rax], r9w
	mov	WORD PTR -23[rax], bp
	mov	BYTE PTR -19[rax], 2
	mov	DWORD PTR -40[rax], 8192
	mov	DWORD PTR -16[rax], -1
	cmp	rcx, rdx
	jne	.L8
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	QWORD PTR 1480[rbx], rcx
	cmp	BYTE PTR [rax], 1
	je	.L14
.L9:
	mov	QWORD PTR 264[rbx], rcx
	xor	eax, eax
	add	rcx, 1
	mov	QWORD PTR 1480[rbx], rcx
	lea	rcx, 256[rbx]
	mov	WORD PTR 304[rbx], di
	mov	DWORD PTR 272[rbx], 59441152
	mov	BYTE PTR 306[rbx], 16
	mov	BYTE PTR 309[rbx], 0
	mov	QWORD PTR 288[rbx], 0
	mov	DWORD PTR 296[rbx], 0
	mov	WORD PTR 300[rbx], ax
	mov	DWORD PTR 312[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1480[rbx]
	xor	edx, edx
	mov	WORD PTR 368[rbx], di
	mov	WORD PTR 364[rbx], dx
	lea	rcx, 320[rbx]
	mov	QWORD PTR 328[rbx], rax
	add	rax, 1
	mov	QWORD PTR 1480[rbx], rax
	mov	DWORD PTR 336[rbx], 59506688
	mov	BYTE PTR 370[rbx], 16
	mov	BYTE PTR 373[rbx], 0
	mov	QWORD PTR 352[rbx], 0
	mov	DWORD PTR 360[rbx], 0
	mov	DWORD PTR 376[rbx], -1
	call	UpdateSpriteAnimation
	xor	ecx, ecx
	mov	r8d, 32
	xor	r9d, r9d
	lea	rax, 57344[rsi]
	mov	QWORD PTR 8[rbx], rsi
	movdqu	xmm0, XMMWORD PTR .LC13[rip]
	mov	WORD PTR 18[rbx], cx
	mov	rcx, rbx
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 60[rbx], r8w
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], r9w
	movups	XMMWORD PTR 44[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r10d, r10d
	add	rsi, 49152
	movdqu	xmm0, XMMWORD PTR .LC14[rip]
	mov	QWORD PTR 120[rbx], rsi
	mov	r11d, 32
	mov	esi, 1
	lea	rcx, 96[rbx]
	mov	QWORD PTR 104[rbx], rax
	mov	WORD PTR 114[rbx], r10w
	mov	WORD PTR 156[rbx], r11w
	mov	BYTE PTR 158[rbx], 0
	mov	WORD PTR 162[rbx], si
	movups	XMMWORD PTR 140[rbx], xmm0
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DrawBackground
	.p2align 4,,10
	.p2align 3
.L14:
	add	r8, 2944
	xor	ebp, ebp
	mov	QWORD PTR 520[rbx], rcx
	lea	rcx, 512[rbx]
	mov	QWORD PTR 1480[rbx], r8
	mov	WORD PTR 560[rbx], di
	mov	DWORD PTR 528[rbx], 51773440
	mov	BYTE PTR 562[rbx], 16
	mov	BYTE PTR 565[rbx], 2
	mov	QWORD PTR 544[rbx], 0
	mov	DWORD PTR 552[rbx], 0
	mov	WORD PTR 556[rbx], bp
	mov	DWORD PTR 568[rbx], -1
	call	UpdateSpriteAnimation
	mov	rcx, QWORD PTR 1480[rbx]
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	sub_8091F68
	.def	sub_8091F68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091F68
sub_8091F68:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gBgScrollRegs[rip]
	movsx	eax, WORD PTR 6[rsi]
	mov	rbx, rcx
	cmp	ax, 55
	jle	.L24
	cmp	ax, 95
	jle	.L24
	cmp	WORD PTR 2[rsi], 135
	movzx	edx, BYTE PTR 1164[rbx]
	jg	.L18
.L26:
	cmp	dl, 9
	jbe	.L25
.L19:
	xor	edx, edx
	mov	r8d, 2
	mov	rcx, rsi
	mov	WORD PTR 2[rsi], ax
	call	sub_808E8F8
	mov	edx, DWORD PTR 1444[rbx]
	sar	edx, 8
	mov	WORD PTR 6[rsi], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movzx	edx, BYTE PTR 1172[rbx]
	lea	rcx, gUnknown_080E1752[rip]
	movzx	ecx, BYTE PTR [rcx+rdx]
	mov	edx, 2
	sal	edx, cl
	add	DWORD PTR 1444[rbx], edx
	cmp	WORD PTR 2[rsi], 135
	movzx	edx, BYTE PTR 1164[rbx]
	jle	.L26
.L18:
	cmp	dl, 9
	ja	.L19
	mov	edx, DWORD PTR 1444[rbx]
	mov	eax, DWORD PTR 1440[rbx]
	sar	edx, 8
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L25:
	mov	r8d, DWORD PTR 1444[rbx]
	movzx	ecx, BYTE PTR 1172[rbx]
	mov	edx, r8d
	sar	edx, 8
	test	r8d, r8d
	jle	.L20
	test	al, 7
	jne	.L20
	cmp	eax, edx
	jl	.L27
	.p2align 4,,10
	.p2align 3
.L20:
	lea	rax, gUnknown_080E1742[rip]
	movzx	ecx, cl
	movzx	ecx, BYTE PTR [rax+rcx]
	mov	eax, 2
	sal	eax, cl
	add	eax, DWORD PTR 1440[rbx]
	mov	DWORD PTR 1440[rbx], eax
.L21:
	sar	eax, 8
	mov	WORD PTR 6[rsi], dx
	mov	WORD PTR 2[rsi], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	add	ecx, 1
	mov	BYTE PTR 1172[rbx], cl
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	sub_809205C
	.def	sub_809205C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809205C
sub_809205C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edi, 1
	lea	rbx, 1320[rcx]
	lea	rsi, 1440[rcx]
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L29:
	sub	eax, DWORD PTR 8[rbx]
	add	rbx, 12
	mov	DWORD PTR -8[rbx], eax
	cmp	rbx, rsi
	je	.L32
.L30:
	mov	eax, DWORD PTR 4[rbx]
	cmp	eax, -23040
	jge	.L29
	mov	DWORD PTR 4[rbx], 58880
	add	rbx, 12
	call	Random
	and	eax, 1
	lea	ecx, 12[rax]
	mov	eax, edi
	sal	eax, cl
	add	eax, 256
	mov	DWORD PTR -4[rbx], eax
	call	Random
	movzx	eax, al
	mov	DWORD PTR -12[rbx], eax
	mov	eax, DWORD PTR -8[rbx]
	sub	eax, DWORD PTR -4[rbx]
	mov	DWORD PTR -8[rbx], eax
	cmp	rbx, rsi
	jne	.L30
.L32:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80920E4
	.def	sub_80920E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80920E4
sub_80920E4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	BYTE PTR 1164[rcx], 9
	mov	rbx, rcx
	jbe	.L34
	movzx	eax, WORD PTR 1180[rcx]
	cmp	ax, 40
	jbe	.L42
	lea	rcx, 1240[rcx]
	mov	r8d, 2
	mov	edx, 82
	call	sub_808E8F8
	mov	eax, DWORD PTR 1240[rbx]
	mov	DWORD PTR 1252[rbx], eax
	mov	eax, DWORD PTR 1244[rbx]
.L39:
	cmp	eax, 20479
	jg	.L38
.L36:
	mov	DWORD PTR 1256[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	mov	edx, 40
	mov	r8d, 2
	sub	edx, eax
	lea	eax, 0[0+rdx*8]
	add	DWORD PTR 1244[rcx], eax
	mov	edx, 82
	lea	rcx, 1240[rcx]
	call	sub_808E8F8
	mov	eax, DWORD PTR 1240[rbx]
	mov	DWORD PTR 1252[rbx], eax
	mov	eax, DWORD PTR 1244[rbx]
	mov	DWORD PTR 1256[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	mov	eax, DWORD PTR 1244[rcx]
	cmp	eax, 20479
	jle	.L37
	mov	DWORD PTR 1240[rcx], 82
	mov	DWORD PTR 1252[rcx], 82
.L38:
	movzx	ecx, BYTE PTR 1488[rbx]
	mov	edx, DWORD PTR 1248[rbx]
	cmp	cl, 3
	je	.L40
	test	cl, cl
	je	.L40
	add	ecx, 1
.L41:
	sal	edx, 7
	mov	BYTE PTR 1488[rbx], cl
	add	eax, edx
	mov	DWORD PTR 1244[rbx], eax
	mov	DWORD PTR 1256[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	mov	DWORD PTR 1240[rcx], 82
	add	eax, 64
	mov	DWORD PTR 1244[rcx], eax
	mov	DWORD PTR 1252[rcx], 82
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L40:
	neg	edx
	mov	ecx, 1
	mov	DWORD PTR 1248[rbx], edx
	jmp	.L41
	.seh_endproc
	.p2align 4
	.globl	sub_80921E8
	.def	sub_80921E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80921E8
sub_80921E8:
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
	mov	r12, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	ebx, ebx
	lea	rbp, gUnknown_080E1782[rip]
	mov	rsi, rcx
	lea	rdi, 1192[rcx]
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L56:
	movzx	eax, BYTE PTR 1165[rsi+rbx]
	test	al, al
	je	.L45
	mov	edx, DWORD PTR 1452[rsi+rbx*4]
	sub	DWORD PTR 4[rdi], edx
	add	edx, 4
	mov	DWORD PTR 1452[rsi+rbx*4], edx
	cmp	al, 1
	je	.L54
	lea	edx, -1[rax]
	sub	eax, 2
	mov	BYTE PTR 1165[rsi+rbx], dl
	cmp	al, 14
	ja	.L47
	mov	BYTE PTR 1173[rsi+rbx], 1
	.p2align 4,,10
	.p2align 3
.L48:
	movsx	edx, WORD PTR 0[rbp+rbx*4]
	mov	rcx, rdi
	mov	r8d, 2
	add	rbx, 1
	add	rdi, 8
	call	sub_808E8F8
	cmp	rbx, 6
	je	.L55
.L52:
	mov	eax, DWORD PTR 1268[rsi]
	movsx	edx, WORD PTR 6[r12]
	sar	eax, 8
	add	eax, edx
	cmp	eax, 227
	jle	.L56
	cmp	BYTE PTR 1173[rsi+rbx], 0
	jne	.L49
	mov	BYTE PTR 1173[rsi+rbx], 1
	mov	eax, 14
.L50:
	mov	BYTE PTR 1165[rsi+rbx], al
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L49:
	movzx	eax, BYTE PTR 1165[rsi+rbx]
	test	al, al
	jne	.L57
	mov	rax, QWORD PTR 1264[rsi]
	mov	QWORD PTR [rdi], rax
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L54:
	mov	DWORD PTR 1452[rsi+rbx*4], 0
	mov	BYTE PTR 1165[rsi+rbx], 0
.L47:
	mov	BYTE PTR 1173[rsi+rbx], 0
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L45:
	call	Random
	and	eax, 63
	add	eax, 60
	mov	BYTE PTR 1165[rsi+rbx], al
	mov	eax, DWORD PTR 1264[rsi]
	lea	r13d, -10[rax]
	call	Random
	mov	edx, DWORD PTR 1264[rsi]
	shr	ax, 12
	movzx	eax, ax
	lea	ecx, -15[rdx]
	add	eax, r13d
	cmp	eax, ecx
	cmovl	eax, ecx
	sub	edx, 5
	cmp	eax, edx
	cmovl	eax, edx
	mov	DWORD PTR [rdi], eax
	mov	r13d, DWORD PTR 1268[rsi]
	call	Random
	shr	ax, 4
	movzx	eax, ax
	add	eax, r13d
	mov	DWORD PTR 4[rdi], eax
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L55:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
.L57:
	sub	eax, 1
	jmp	.L50
	.seh_endproc
	.p2align 4
	.globl	sub_80923AC
	.def	sub_80923AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80923AC
sub_80923AC:
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
	mov	rbx, rcx
	lea	rdi, 192[rcx]
	lea	rsi, 1320[rcx]
	lea	rbp, 1440[rcx]
	.p2align 4,,10
	.p2align 3
.L59:
	mov	BYTE PTR 240[rbx], 0
	mov	eax, DWORD PTR [rsi]
	mov	r8d, 823
	mov	rcx, rdi
	mov	WORD PTR 210[rbx], r8w
	add	rsi, 12
	mov	WORD PTR 230[rbx], ax
	mov	eax, DWORD PTR -8[rsi]
	sar	eax, 8
	mov	WORD PTR 232[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	rsi, rbp
	jne	.L59
	xor	ebp, ebp
	cmp	BYTE PTR 1164[rbx], 8
	lea	r13, gUnknown_080E1650[rip]
	seta	bpl
	lea	rsi, 576[rbx]
	lea	eax, 1[rbp]
	mov	rcx, rsi
	movzx	edx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	BYTE PTR 624[rbx], al
	mov	eax, DWORD PTR 1264[rbx]
	mov	WORD PTR 594[rbx], dx
	mov	WORD PTR 614[rbx], ax
	mov	eax, DWORD PTR 1268[rbx]
	sar	eax, 8
	mov	WORD PTR 616[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, BYTE PTR 1164[rbx]
	cmp	al, 9
	ja	.L60
	mov	r12, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	rdi, 768[rbx]
	xor	esi, esi
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L61:
	cmp	BYTE PTR 1173[rbx+rsi], 0
	jne	.L76
.L62:
	add	rsi, 1
	add	rdi, 64
	cmp	rsi, 6
	je	.L77
.L64:
	mov	eax, DWORD PTR 1268[rbx]
	movsx	edx, WORD PTR 6[r12]
	sar	eax, 8
	add	eax, edx
	cmp	eax, 227
	jg	.L61
	mov	eax, esi
	mov	rdx, rsi
	and	eax, 1
	and	edx, 1
	lea	r14, 10[rdx]
	lea	edx, 3[rax]
	sal	rax, 6
	movsx	rdx, edx
	add	rax, rbx
	sal	r14, 6
	movzx	ecx, WORD PTR 4[r13+rdx*8]
	movzx	edx, BYTE PTR 6[r13+rdx*8]
	add	r14, rbx
	mov	WORD PTR 658[rax], cx
	mov	rcx, r14
	mov	BYTE PTR 688[rax], dl
	mov	edx, DWORD PTR 1192[rbx+rsi*8]
	mov	WORD PTR 678[rax], dx
	mov	edx, DWORD PTR 1196[rbx+rsi*8]
	sar	edx, 8
	mov	WORD PTR 680[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, r14
	call	DisplaySprite
	cmp	BYTE PTR 1173[rbx+rsi], 0
	je	.L62
.L76:
	mov	ecx, 817
	mov	BYTE PTR 48[rdi], 0
	mov	WORD PTR 18[rdi], cx
	mov	eax, DWORD PTR 1272[rbx+rsi*8]
	mov	rcx, rdi
	mov	WORD PTR 38[rdi], ax
	mov	eax, DWORD PTR 1276[rbx+rsi*8]
	sar	eax, 8
	mov	WORD PTR 40[rdi], ax
	call	UpdateSpriteAnimation
	cmp	eax, 1
	je	.L63
	xor	eax, eax
	xor	edx, edx
	and	DWORD PTR 32[rdi], -16385
	mov	WORD PTR 36[rdi], ax
	mov	WORD PTR 44[rdi], dx
.L63:
	mov	rcx, rdi
	add	rsi, 1
	add	rdi, 64
	call	DisplaySprite
	cmp	rsi, 6
	jne	.L64
.L77:
	movzx	eax, BYTE PTR 1164[rbx]
.L60:
	mov	rsi, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	al, 12
	mov	edi, 1
	lea	r12, 384[rbx]
	cmovnb	ebp, edi
	mov	rcx, r12
	movsx	eax, BYTE PTR [rsi]
	lea	eax, 7[rbp+rax*2]
	movzx	edx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	BYTE PTR 432[rbx], al
	mov	eax, DWORD PTR 1240[rbx]
	mov	WORD PTR 402[rbx], dx
	mov	WORD PTR 422[rbx], ax
	mov	eax, DWORD PTR 1244[rbx]
	sar	eax, 8
	mov	WORD PTR 424[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	cmp	BYTE PTR 1164[rbx], 11
	movsx	eax, BYTE PTR [rsi]
	cmovnb	ebp, edi
	lea	rdi, 448[rbx]
	mov	rcx, rdi
	lea	eax, 17[rbp+rax*2]
	movzx	edx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	BYTE PTR 496[rbx], al
	mov	eax, DWORD PTR 1252[rbx]
	mov	WORD PTR 466[rbx], dx
	mov	WORD PTR 486[rbx], ax
	mov	eax, DWORD PTR 1256[rbx]
	sar	eax, 8
	mov	WORD PTR 488[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	BYTE PTR [rsi], 1
	je	.L78
.L67:
	cmp	BYTE PTR 1164[rbx], 10
	jbe	.L58
	lea	rcx, 256[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 320[rbx]
	call	UpdateSpriteAnimation
	add	WORD PTR 1184[rbx], 1
.L58:
	add	rsp, 32
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
.L78:
	lea	eax, 27[rbp]
	lea	rsi, 512[rbx]
	movzx	edx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	rcx, rsi
	mov	BYTE PTR 560[rbx], al
	mov	eax, DWORD PTR 1252[rbx]
	mov	WORD PTR 530[rbx], dx
	mov	WORD PTR 550[rbx], ax
	mov	eax, DWORD PTR 1256[rbx]
	sar	eax, 8
	mov	WORD PTR 552[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L67
	.seh_endproc
	.p2align 4
	.globl	sub_8092690
	.def	sub_8092690;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092690
sub_8092690:
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
	mov	edx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1154[rbx], dx
	mov	rcx, rbx
	lea	rdi, 1152[rbx]
	call	sub_8091F68
	mov	rcx, rbx
	call	sub_809205C
	mov	rcx, rbx
	call	sub_80920E4
	cmp	BYTE PTR 1164[rbx], 9
	ja	.L80
	mov	edx, DWORD PTR 1268[rbx]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 1264[rbx], 210
	movsx	ecx, WORD PTR 6[rcx]
	mov	eax, edx
	sar	eax, 8
	add	eax, ecx
	cmp	eax, 230
	jle	.L87
.L81:
	lea	rcx, 1264[rbx]
	mov	r8d, 1
	mov	edx, 210
	call	sub_808E8F8
.L80:
	mov	rcx, rbx
	call	sub_80921E8
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L83:
	cmp	BYTE PTR 1173[rbx+rax], 0
	je	.L82
	mov	rdx, QWORD PTR 1192[rbx+rax*8]
	mov	QWORD PTR 1272[rbx+rax*8], rdx
.L82:
	add	rax, 1
	cmp	rax, 6
	jne	.L83
	mov	rcx, rbx
	call	sub_80923AC
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	je	.L88
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	add	edx, 32
	mov	DWORD PTR 1268[rbx], edx
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L88:
	xor	eax, eax
	cmp	BYTE PTR 1164[rbx], 0
	mov	WORD PTR 1156[rbx], ax
	mov	rax, QWORD PTR [rsi]
	jne	.L85
	lea	rdi, sub_8092780[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	lea	rsi, sub_8091CB0[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8092780
	.def	sub_8092780;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092780
sub_8092780:
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
	call	sub_8091F68
	mov	rcx, rbx
	call	sub_809205C
	mov	rcx, rbx
	call	sub_80920E4
	cmp	BYTE PTR 1164[rbx], 9
	mov	rdi, QWORD PTR .refptr.gBgScrollRegs[rip]
	ja	.L90
	mov	edx, DWORD PTR 1268[rbx]
	movsx	ecx, WORD PTR 6[rdi]
	mov	DWORD PTR 1264[rbx], 210
	mov	eax, edx
	sar	eax, 8
	add	eax, ecx
	cmp	eax, 230
	jle	.L97
.L91:
	lea	rcx, 1264[rbx]
	mov	r8d, 1
	mov	edx, 210
	call	sub_808E8F8
.L90:
	mov	rcx, rbx
	call	sub_80921E8
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L93:
	cmp	BYTE PTR 1173[rbx+rax], 0
	je	.L92
	mov	rdx, QWORD PTR 1192[rbx+rax*8]
	mov	QWORD PTR 1272[rbx+rax*8], rdx
.L92:
	add	rax, 1
	cmp	rax, 6
	jne	.L93
	mov	rcx, rbx
	call	sub_80923AC
	mov	eax, DWORD PTR 1268[rbx]
	movsx	edx, WORD PTR 6[rdi]
	sar	eax, 8
	add	eax, edx
	cmp	eax, 219
	jle	.L89
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8091CB0[rip]
	mov	QWORD PTR 40[rax], rsi
.L89:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	add	edx, 32
	mov	DWORD PTR 1268[rbx], edx
	jmp	.L91
	.seh_endproc
	.p2align 4
	.globl	sub_8091E60
	.def	sub_8091E60;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091E60
sub_8091E60:
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
	mov	edx, 80
	mov	ecx, 1
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1158[rbx], dx
	mov	WORD PTR 1154[rbx], cx
	mov	rcx, rbx
	call	sub_8091F68
	mov	rcx, rbx
	call	sub_809205C
	mov	rcx, rbx
	call	sub_80920E4
	cmp	BYTE PTR 1164[rbx], 9
	ja	.L99
	mov	edx, DWORD PTR 1268[rbx]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 1264[rbx], 210
	movsx	ecx, WORD PTR 6[rcx]
	mov	eax, edx
	sar	eax, 8
	add	eax, ecx
	cmp	eax, 230
	jle	.L109
.L100:
	lea	rcx, 1264[rbx]
	mov	r8d, 1
	mov	edx, 210
	call	sub_808E8F8
.L99:
	mov	rcx, rbx
	call	sub_80921E8
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L102:
	cmp	BYTE PTR 1173[rbx+rax], 0
	je	.L101
	mov	rdx, QWORD PTR 1192[rbx+rax*8]
	mov	QWORD PTR 1272[rbx+rax*8], rdx
.L101:
	add	rax, 1
	cmp	rax, 6
	jne	.L102
	mov	rcx, rbx
	call	sub_80923AC
	mov	rsi, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 1
	lea	rdx, 256[rsi]
	lea	rcx, 768[rsi]
	call	CpuFastSet
	mov	r8d, 1
	lea	rdx, 288[rsi]
	lea	rcx, 800[rsi]
	call	CpuFastSet
	movzx	eax, WORD PTR 1180[rbx]
	test	ax, ax
	je	.L103
	sub	eax, 1
	mov	WORD PTR 1180[rbx], ax
	cmp	ax, 39
	jbe	.L98
	movzx	eax, WORD PTR 1182[rbx]
	test	ax, ax
	je	.L105
	sub	eax, 1
	mov	WORD PTR 1182[rbx], ax
.L98:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	cmp	WORD PTR 4[rdx], 15
	ja	.L106
	movq	xmm1, QWORD PTR .LC18[rip]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 8192
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movq	xmm0, QWORD PTR 16[rax]
	mov	DWORD PTR [rax], 240
	mov	DWORD PTR 8[rax], 426
	por	xmm0, xmm1
	movq	QWORD PTR 16[rax], xmm0
	mov	eax, 16319
	mov	WORD PTR [rdx], ax
	mov	eax, DWORD PTR 1188[rbx]
	add	eax, 32
	mov	DWORD PTR 1188[rbx], eax
	sar	eax, 8
	mov	WORD PTR 4[rdx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	movzx	eax, WORD PTR 1182[rbx]
	cmp	ax, 99
	ja	.L107
	add	eax, 1
	mov	WORD PTR 1182[rbx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	add	edx, 32
	mov	DWORD PTR 1268[rbx], edx
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L107:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_80927E8[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	call	Random
	and	eax, 15
	mov	WORD PTR 1182[rbx], ax
	jmp	.L98
	.seh_endproc
	.p2align 4
	.globl	sub_8091CB0
	.def	sub_8091CB0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091CB0
sub_8091CB0:
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
	call	sub_8091F68
	mov	rcx, rbx
	call	sub_809205C
	mov	rcx, rbx
	call	sub_80920E4
	cmp	BYTE PTR 1164[rbx], 9
	ja	.L111
	mov	edx, DWORD PTR 1268[rbx]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 1264[rbx], 210
	movsx	ecx, WORD PTR 6[rcx]
	mov	eax, edx
	sar	eax, 8
	add	eax, ecx
	cmp	eax, 230
	jle	.L124
.L112:
	lea	rcx, 1264[rbx]
	mov	r8d, 1
	mov	edx, 210
	call	sub_808E8F8
.L111:
	mov	rcx, rbx
	call	sub_80921E8
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L114:
	cmp	BYTE PTR 1173[rbx+rax], 0
	je	.L113
	mov	rdx, QWORD PTR 1192[rbx+rax*8]
	mov	QWORD PTR 1272[rbx+rax*8], rdx
.L113:
	add	rax, 1
	cmp	rax, 6
	jne	.L114
	mov	rcx, rbx
	call	sub_80923AC
	movzx	eax, WORD PTR 1182[rbx]
	test	ax, ax
	jne	.L125
	movzx	eax, BYTE PTR 1164[rbx]
	test	al, 1
	je	.L126
	cmp	al, 9
	ja	.L118
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	lea	r8, gUnknown_080E1738[rip]
	mov	r10d, 16319
	movq	xmm1, QWORD PTR .LC18[rip]
	or	WORD PTR [rdx], 8192
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rcx], r10w
	movq	xmm0, QWORD PTR 16[rdx]
	mov	DWORD PTR [rdx], 240
	mov	DWORD PTR 8[rdx], 426
	por	xmm0, xmm1
	movq	QWORD PTR 16[rdx], xmm0
	movzx	edx, al
	movzx	r8d, BYTE PTR [r8+rdx]
	movzx	edx, WORD PTR 4[rcx]
	sub	edx, r8d
	mov	WORD PTR 4[rcx], dx
	cmp	r8w, dx
	jb	.L110
.L123:
	add	eax, 1
	mov	BYTE PTR 1164[rbx], al
.L110:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	cmp	al, 9
	ja	.L118
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	lea	r8, gUnknown_080E1738[rip]
	mov	r11d, 16319
	movq	xmm1, QWORD PTR .LC18[rip]
	or	WORD PTR [rdx], 8192
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rcx], r11w
	movq	xmm0, QWORD PTR 16[rdx]
	mov	DWORD PTR [rdx], 240
	mov	DWORD PTR 8[rdx], 426
	por	xmm0, xmm1
	movq	QWORD PTR 16[rdx], xmm0
	movzx	edx, al
	movzx	edx, BYTE PTR [r8+rdx]
	add	dx, WORD PTR 4[rcx]
	mov	WORD PTR 4[rcx], dx
	cmp	dx, 15
	jbe	.L110
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L124:
	add	edx, 32
	mov	DWORD PTR 1268[rbx], edx
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L118:
	cmp	al, 10
	je	.L127
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8091E60[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	sub	eax, 1
	mov	WORD PTR 1182[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L127:
	mov	eax, 174
	xor	edx, edx
	mov	rcx, rbx
	mov	WORD PTR 48[rbx], ax
	mov	WORD PTR 66[rbx], dx
	call	DrawBackground
	mov	ecx, 173
	mov	r8d, 1
	mov	WORD PTR 144[rbx], cx
	lea	rcx, 96[rbx]
	mov	WORD PTR 162[rbx], r8w
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	movq	xmm1, QWORD PTR .LC18[rip]
	mov	r9d, 16319
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	or	WORD PTR [rax], 8192
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rdx], r9w
	movq	xmm0, QWORD PTR 16[rax]
	mov	DWORD PTR [rax], 240
	mov	DWORD PTR 8[rax], 426
	por	xmm0, xmm1
	movq	QWORD PTR 16[rax], xmm0
	movzx	eax, WORD PTR 4[rdx]
	sub	eax, 1
	mov	WORD PTR 4[rdx], ax
	cmp	ax, 1
	ja	.L110
	add	BYTE PTR 1164[rbx], 1
	jmp	.L110
	.seh_endproc
	.p2align 4
	.globl	sub_8092714
	.def	sub_8092714;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092714
sub_8092714:
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
	mov	edx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1154[rbx], dx
	mov	rcx, rbx
	lea	rdi, 1152[rbx]
	call	sub_8091F68
	mov	rcx, rbx
	call	sub_809205C
	mov	rcx, rbx
	call	sub_80920E4
	cmp	BYTE PTR 1164[rbx], 9
	ja	.L129
	mov	edx, DWORD PTR 1268[rbx]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 1264[rbx], 210
	movsx	ecx, WORD PTR 6[rcx]
	mov	eax, edx
	sar	eax, 8
	add	eax, ecx
	cmp	eax, 230
	jle	.L135
.L130:
	lea	rcx, 1264[rbx]
	mov	r8d, 1
	mov	edx, 210
	call	sub_808E8F8
.L129:
	mov	rcx, rbx
	call	sub_80921E8
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L132:
	cmp	BYTE PTR 1173[rbx+rax], 0
	je	.L131
	mov	rdx, QWORD PTR 1192[rbx+rax*8]
	mov	QWORD PTR 1272[rbx+rax*8], rdx
.L131:
	add	rax, 1
	cmp	rax, 6
	jne	.L132
	mov	rcx, rbx
	call	sub_80923AC
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L128
	xor	eax, eax
	lea	rdi, sub_8091CB0[rip]
	mov	WORD PTR 1156[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
.L128:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	add	edx, 32
	mov	DWORD PTR 1268[rbx], edx
	jmp	.L130
	.seh_endproc
	.p2align 4
	.globl	sub_8092804
	.def	sub_8092804;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092804
sub_8092804:
	.seh_endprologue
	cmp	BYTE PTR 1164[rcx], 9
	ja	.L136
	mov	edx, DWORD PTR 1268[rcx]
	mov	r8, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 1264[rcx], 210
	movsx	r8d, WORD PTR 6[r8]
	mov	eax, edx
	sar	eax, 8
	add	eax, r8d
	cmp	eax, 230
	jg	.L138
	add	edx, 32
	mov	DWORD PTR 1268[rcx], edx
.L138:
	add	rcx, 1264
	mov	r8d, 1
	mov	edx, 210
	jmp	sub_808E8F8
	.p2align 4,,10
	.p2align 3
.L136:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8092850
	.def	sub_8092850;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8092850
sub_8092850:
	.seh_endprologue
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L141:
	cmp	BYTE PTR 1173[rcx+rax], 0
	je	.L140
	mov	rdx, QWORD PTR 1192[rcx+rax*8]
	mov	QWORD PTR 1272[rcx+rax*8], rdx
.L140:
	add	rax, 1
	cmp	rax, 6
	jne	.L141
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_809289C
	.def	sub_809289C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809289C
sub_809289C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 1
	lea	rdx, 256[rbx]
	lea	rcx, 768[rbx]
	call	CpuFastSet
	mov	r8d, 1
	lea	rdx, 288[rbx]
	lea	rcx, 800[rbx]
	add	rsp, 32
	pop	rbx
	jmp	CpuFastSet
	.seh_endproc
	.p2align 4
	.globl	sub_80928C8
	.def	sub_80928C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80928C8
sub_80928C8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, 174
	xor	edx, edx
	mov	WORD PTR 48[rcx], ax
	mov	rbx, rcx
	mov	WORD PTR 66[rcx], dx
	call	DrawBackground
	mov	r8d, 1
	mov	ecx, 173
	mov	WORD PTR 144[rbx], cx
	lea	rcx, 96[rbx]
	mov	WORD PTR 162[rbx], r8w
	call	DrawBackground
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
gUnknown_080E1782:
	.word	195
	.word	50
	.word	200
	.word	60
	.word	210
	.word	68
	.word	205
	.word	70
	.word	225
	.word	78
	.word	215
	.word	80
	.align 16
gUnknown_080E1752:
	.ascii "\6\6\6\6\6\5\5\4\3\3\2\1\1\1\1\1"
	.align 16
gUnknown_080E1742:
	.ascii "\6\6\6\6\6\6\6\5\4\4\3\2\2\1\1\1"
	.align 8
gUnknown_080E1738:
	.ascii "\4\10\2\4\10\4\10\2\4\1"
	.align 32
gUnknown_080E1650:
	.long	15
	.word	823
	.byte	0
	.space 1
	.long	30
	.word	815
	.byte	0
	.space 1
	.long	9
	.word	817
	.byte	0
	.space 1
	.long	4
	.word	816
	.byte	0
	.space 1
	.long	4
	.word	816
	.byte	1
	.space 1
	.long	0
	.word	907
	.byte	0
	.space 1
	.long	0
	.word	908
	.byte	0
	.space 1
	.long	104
	.word	785
	.byte	0
	.space 1
	.long	104
	.word	785
	.byte	2
	.space 1
	.long	80
	.word	786
	.byte	0
	.space 1
	.long	80
	.word	786
	.byte	2
	.space 1
	.long	99
	.word	787
	.byte	0
	.space 1
	.long	99
	.word	787
	.byte	2
	.space 1
	.long	72
	.word	788
	.byte	0
	.space 1
	.long	72
	.word	788
	.byte	2
	.space 1
	.long	56
	.word	789
	.byte	0
	.space 1
	.long	56
	.word	789
	.byte	2
	.space 1
	.long	48
	.word	785
	.byte	1
	.space 1
	.long	48
	.word	785
	.byte	3
	.space 1
	.long	80
	.word	786
	.byte	1
	.space 1
	.long	80
	.word	786
	.byte	3
	.space 1
	.long	80
	.word	787
	.byte	1
	.space 1
	.long	80
	.word	787
	.byte	3
	.space 1
	.long	64
	.word	788
	.byte	1
	.space 1
	.long	64
	.word	788
	.byte	3
	.space 1
	.long	42
	.word	789
	.byte	1
	.space 1
	.long	42
	.word	789
	.byte	3
	.space 1
	.long	30
	.word	790
	.byte	0
	.space 1
	.long	30
	.word	790
	.byte	1
	.space 1
	.align 8
.LC1:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 8
.LC3:
	.long	210
	.long	21760
	.align 8
.LC4:
	.word	1
	.word	2
	.word	0
	.word	80
	.align 2
.LC6:
	.byte	0
	.byte	-1
	.align 2
.LC8:
	.byte	-1
	.byte	16
	.align 16
.LC13:
	.word	0
	.word	0
	.word	172
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 16
.LC14:
	.word	0
	.word	0
	.word	171
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC18:
	.long	63
	.long	31
	.ident	"GCC: (GNU) 13-win32"
	.def	CreateFinalEndingLandingCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	SeedRng;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	sub_808E8F8;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
