	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_BossRunManager;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_BossRunManager
TaskDestructor_BossRunManager:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804CA08;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804CA08
sub_804CA08:
	.seh_endprologue
	movzx	eax, BYTE PTR 11[rcx]
	test	al, al
	je	.L5
	sub	eax, 1
	mov	BYTE PTR 11[rcx], al
	test	al, al
	je	.L17
.L5:
	movzx	eax, BYTE PTR 62[rcx]
	test	al, al
	je	.L8
	sub	eax, 1
	mov	BYTE PTR 62[rcx], al
.L8:
	movzx	eax, BYTE PTR 63[rcx]
	test	al, al
	je	.L3
	sub	eax, 1
	mov	BYTE PTR 63[rcx], al
.L3:
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	cmp	BYTE PTR 8[rcx], 0
	mov	edx, 3
	mov	BYTE PTR 145[rcx], -1
	cmove	eax, edx
	mov	BYTE PTR 144[rcx], al
	mov	eax, 705
	mov	WORD PTR 114[rcx], ax
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	sub_804CA70;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804CA70
sub_804CA70:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	cmp	BYTE PTR 11[rcx], 0
	je	.L19
	mov	r8d, eax
	lea	r9, sArmPalettes[rip]
	sal	r8, 5
	add	r8, r9
	movdqu	xmm0, XMMWORD PTR [r8]
	movups	XMMWORD PTR 256[rdx], xmm0
	movdqu	xmm1, XMMWORD PTR 16[r8]
	movups	XMMWORD PTR 272[rdx], xmm1
	cmp	BYTE PTR 62[rcx], 0
	je	.L21
.L25:
	mov	r8d, eax
	lea	r9, sArmPalettes[rip]
	sal	r8, 5
	add	r8, r9
	movdqu	xmm4, XMMWORD PTR [r8]
	movups	XMMWORD PTR 288[rdx], xmm4
	movdqu	xmm5, XMMWORD PTR 16[r8]
	movups	XMMWORD PTR 304[rdx], xmm5
	cmp	BYTE PTR 63[rcx], 0
	je	.L23
.L26:
	sal	rax, 5
	lea	rcx, sArmPalettes[rip]
	add	rax, rcx
	movdqu	xmm2, XMMWORD PTR [rax]
	movups	XMMWORD PTR 384[rdx], xmm2
	movdqu	xmm3, XMMWORD PTR 16[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 400[rdx], xmm3
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movdqu	xmm2, XMMWORD PTR sArmPalettes[rip]
	movdqu	xmm3, XMMWORD PTR sArmPalettes[rip+16]
	movups	XMMWORD PTR 256[rdx], xmm2
	movups	XMMWORD PTR 272[rdx], xmm3
	cmp	BYTE PTR 62[rcx], 0
	jne	.L25
.L21:
	movdqu	xmm0, XMMWORD PTR sArmPalettes[rip]
	movdqu	xmm1, XMMWORD PTR sArmPalettes[rip+16]
	movups	XMMWORD PTR 288[rdx], xmm0
	movups	XMMWORD PTR 304[rdx], xmm1
	cmp	BYTE PTR 63[rcx], 0
	jne	.L26
.L23:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	movdqu	xmm4, XMMWORD PTR sArmPalettes[rip]
	movdqu	xmm5, XMMWORD PTR sArmPalettes[rip+16]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 384[rdx], xmm4
	movups	XMMWORD PTR 400[rdx], xmm5
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804A53C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804A53C
sub_804A53C:
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
	xor	r10d, r10d
	movzx	r9d, BYTE PTR 451[rcx]
	movzx	esi, dl
	movzx	edx, dl
	mov	rbx, rcx
	mov	rax, rdx
	sal	rax, 7
	lea	rdi, [rcx+rax]
	lea	rbp, 64[rcx+rax]
	lea	rax, [rcx+rdx*8]
	mov	r8d, DWORD PTR 420[rax]
	test	r9b, r9b
	jne	.L28
	add	r8d, 256
	mov	r10d, 256
	mov	DWORD PTR 420[rax], r8d
.L28:
	mov	ecx, DWORD PTR 416[rax]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	add	ecx, DWORD PTR 392[rax]
	add	r8d, DWORD PTR 396[rax]
	mov	rax, rsi
	sar	ecx, 8
	sal	rax, 7
	add	rax, rbx
	sar	r8d, 8
	mov	r12d, ecx
	sub	r12w, WORD PTR [r11]
	mov	WORD PTR 38[rax], r12w
	mov	r12d, r8d
	sub	r12w, WORD PTR 4[r11]
	mov	WORD PTR 40[rax], r12w
	test	r9b, r9b
	jne	.L30
	lea	rdx, [rbx+rdx*2]
	sub	WORD PTR 440[rdx], 1
	je	.L42
.L30:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r12]
	test	al, 8
	je	.L33
	cmp	QWORD PTR 64[r12], rdi
	je	.L43
.L33:
	test	eax, 4194304
	je	.L44
.L36:
	sal	rsi, 7
	mov	rcx, rdi
	call	DisplaySprite
	lea	rdi, [rbx+rsi]
	mov	rcx, rbp
	movzx	eax, WORD PTR 40[rdi]
	movzx	edx, WORD PTR 38[rdi]
	add	eax, 64
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 102[rbx+rsi], eax
	call	DisplaySprite
	movzx	eax, WORD PTR 40[rdi]
	mov	rcx, rbp
	sub	ax, -128
	mov	WORD PTR 104[rdi], ax
	call	DisplaySprite
	movzx	eax, WORD PTR 40[rdi]
	mov	rcx, rbp
	add	ax, 192
	mov	WORD PTR 104[rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L42:
	movzx	r9d, BYTE PTR 446[rbx+rsi]
	lea	rax, gUnknown_080D8858[rip]
	movzx	r11d, BYTE PTR 1[rax+r9*2]
	movzx	eax, BYTE PTR [rax+r9*2]
	mov	WORD PTR 440[rdx], r11w
	mov	BYTE PTR 446[rbx+rsi], al
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L44:
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, ecx
	mov	rcx, rdi
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L36
	sal	eax, 24
	sar	eax, 16
	add	DWORD PTR 16[r12], eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L43:
	mov	edx, DWORD PTR 16[r12]
	cmp	BYTE PTR 450[rbx], 1
	lea	edx, 512[r10+rdx]
	mov	DWORD PTR 16[r12], edx
	jne	.L33
	add	DWORD PTR 12[r12], 256
	jmp	.L33
	.seh_endproc
	.p2align 4
	.def	sub_804A398;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804A398
sub_804A398:
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
	xor	r9d, r9d
	movzx	r10d, BYTE PTR 451[rcx]
	movzx	esi, dl
	movzx	edx, dl
	mov	rbx, rcx
	mov	rax, rdx
	sal	rax, 7
	lea	rdi, [rcx+rax]
	lea	rbp, 64[rcx+rax]
	lea	rax, [rcx+rdx*8]
	mov	r8d, DWORD PTR 420[rax]
	test	r10b, r10b
	jne	.L46
	movzx	r9d, WORD PTR 440[rcx+rsi*2]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movsx	ecx, WORD PTR 512[rcx+r9*4]
	lea	r9d, [rcx+rcx*2]
	sar	r9d, 7
	sub	r8d, r9d
	neg	r9d
	mov	DWORD PTR 420[rax], r8d
.L46:
	mov	ecx, DWORD PTR 416[rax]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	add	ecx, DWORD PTR 392[rax]
	add	r8d, DWORD PTR 396[rax]
	mov	rax, rsi
	sar	ecx, 8
	sal	rax, 7
	add	rax, rbx
	sar	r8d, 8
	mov	r12d, ecx
	sub	r12w, WORD PTR [r11]
	mov	WORD PTR 38[rax], r12w
	mov	r12d, r8d
	sub	r12w, WORD PTR 4[r11]
	mov	WORD PTR 40[rax], r12w
	test	r10b, r10b
	jne	.L48
	lea	rdx, [rbx+rdx*2]
	sub	WORD PTR 440[rdx], 1
	je	.L60
.L48:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r12]
	test	al, 8
	je	.L51
	cmp	QWORD PTR 64[r12], rdi
	je	.L61
.L51:
	test	eax, 4194304
	je	.L62
.L54:
	sal	rsi, 7
	mov	rcx, rdi
	call	DisplaySprite
	lea	rdi, [rbx+rsi]
	mov	rcx, rbp
	movzx	eax, WORD PTR 40[rdi]
	movzx	edx, WORD PTR 38[rdi]
	add	eax, 64
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 102[rbx+rsi], eax
	call	DisplaySprite
	movzx	eax, WORD PTR 40[rdi]
	mov	rcx, rbp
	sub	ax, -128
	mov	WORD PTR 104[rdi], ax
	call	DisplaySprite
	movzx	eax, WORD PTR 40[rdi]
	mov	rcx, rbp
	add	ax, 192
	mov	WORD PTR 104[rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L60:
	movzx	r10d, BYTE PTR 446[rbx+rsi]
	lea	rax, gUnknown_080D8858[rip]
	movzx	r11d, BYTE PTR 1[rax+r10*2]
	movzx	eax, BYTE PTR [rax+r10*2]
	mov	WORD PTR 440[rdx], r11w
	mov	BYTE PTR 446[rbx+rsi], al
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L62:
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, ecx
	mov	rcx, rdi
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L54
	sal	eax, 24
	sar	eax, 16
	add	DWORD PTR 16[r12], eax
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L61:
	mov	edx, DWORD PTR 16[r12]
	cmp	BYTE PTR 450[rbx], 1
	lea	edx, 256[r9+rdx]
	mov	DWORD PTR 16[r12], edx
	jne	.L51
	add	DWORD PTR 12[r12], 256
	jmp	.L51
	.seh_endproc
	.p2align 4
	.def	sub_8049F1C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8049F1C
sub_8049F1C:
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
	xor	r10d, r10d
	movzx	r9d, BYTE PTR 451[rcx]
	movzx	esi, dl
	movzx	edx, dl
	mov	rbx, rcx
	mov	rax, rdx
	sal	rax, 7
	lea	rbp, [rcx+rax]
	lea	rdi, 64[rcx+rax]
	lea	rax, [rcx+rdx*8]
	mov	r8d, DWORD PTR 420[rax]
	test	r9b, r9b
	jne	.L64
	mov	DWORD PTR 420[rax], 0
	mov	r10d, r8d
	xor	r8d, r8d
	neg	r10d
.L64:
	mov	ecx, DWORD PTR 416[rax]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	add	ecx, DWORD PTR 392[rax]
	add	r8d, DWORD PTR 396[rax]
	mov	rax, rsi
	sar	ecx, 8
	sal	rax, 7
	add	rax, rbx
	sar	r8d, 8
	mov	r12d, ecx
	sub	r12w, WORD PTR [r11]
	mov	WORD PTR 38[rax], r12w
	mov	r12d, r8d
	sub	r12w, WORD PTR 4[r11]
	mov	WORD PTR 40[rax], r12w
	test	r9b, r9b
	jne	.L66
	lea	rdx, [rbx+rdx*2]
	sub	WORD PTR 440[rdx], 1
	je	.L78
.L66:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r12]
	test	al, 8
	je	.L69
	cmp	QWORD PTR 64[r12], rbp
	je	.L79
.L69:
	test	eax, 4194304
	je	.L80
.L72:
	mov	rcx, rbp
	sal	rsi, 7
	call	DisplaySprite
	lea	rdx, [rbx+rsi]
	mov	rcx, rdi
	movzx	eax, WORD PTR 40[rdx]
	movzx	edx, WORD PTR 38[rdx]
	add	eax, 64
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 102[rbx+rsi], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L78:
	movzx	r9d, BYTE PTR 446[rbx+rsi]
	lea	rax, gUnknown_080D8858[rip]
	movzx	r11d, BYTE PTR 1[rax+r9*2]
	movzx	eax, BYTE PTR [rax+r9*2]
	mov	WORD PTR 440[rdx], r11w
	mov	BYTE PTR 446[rbx+rsi], al
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L80:
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, ecx
	mov	rcx, rbp
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L72
	sal	eax, 24
	sar	eax, 16
	add	DWORD PTR 16[r12], eax
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L79:
	mov	edx, DWORD PTR 16[r12]
	cmp	BYTE PTR 450[rbx], 1
	lea	edx, 256[r10+rdx]
	mov	DWORD PTR 16[r12], edx
	jne	.L69
	add	DWORD PTR 12[r12], 256
	jmp	.L69
	.seh_endproc
	.p2align 4
	.def	sub_804A1C0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804A1C0
sub_804A1C0:
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
	movups	XMMWORD PTR 128[rsp], xmm6
	.seh_savexmm	xmm6, 128
	.seh_endprologue
	xor	r9d, r9d
	movzx	esi, dl
	movzx	edx, dl
	mov	rbx, rcx
	mov	rax, rdx
	movzx	r11d, BYTE PTR 451[rbx]
	lea	r10, [rbx+rdx*8]
	sal	rax, 7
	mov	r8d, DWORD PTR 420[r10]
	lea	rcx, [rcx+rax]
	lea	rax, 64[rbx+rax]
	mov	QWORD PTR 40[rsp], rax
	test	r11b, r11b
	jne	.L82
	mov	DWORD PTR 420[r10], -2048
	mov	r9d, -2048
	sub	r9d, r8d
	mov	r8d, -2048
.L82:
	mov	eax, DWORD PTR 416[r10]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	add	eax, DWORD PTR 392[r10]
	add	r8d, DWORD PTR 396[r10]
	mov	r10, rsi
	sar	eax, 8
	sar	r8d, 8
	sal	r10, 7
	mov	ebp, eax
	mov	r14d, eax
	sub	bp, WORD PTR [rdi]
	add	r10, rbx
	mov	eax, r8d
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 38[r10], bp
	mov	WORD PTR 40[r10], ax
	test	r11b, r11b
	jne	.L84
	lea	r10, [rbx+rdx*2]
	movzx	edx, WORD PTR 440[r10]
	cmp	dx, 60
	je	.L96
	cmp	dx, 50
	je	.L96
.L85:
	sub	edx, 1
	mov	WORD PTR 440[r10], dx
	test	dx, dx
	jne	.L84
	movzx	r11d, BYTE PTR 446[rbx+rsi]
	lea	rdx, gUnknown_080D8858[rip]
	movzx	edi, BYTE PTR 1[rdx+r11*2]
	movzx	edx, BYTE PTR [rdx+r11*2]
	mov	WORD PTR 440[r10], di
	mov	BYTE PTR 446[rbx+rsi], dl
.L84:
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rdi]
	test	dl, 8
	je	.L90
	cmp	QWORD PTR 64[rdi], rcx
	je	.L104
.L90:
	and	edx, 4194304
	je	.L105
.L93:
	call	DisplaySprite
	sal	rsi, 7
	mov	rcx, QWORD PTR 40[rsp]
	lea	rdx, [rbx+rsi]
	movzx	eax, WORD PTR 40[rdx]
	movzx	edx, WORD PTR 38[rdx]
	add	eax, 64
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 102[rbx+rsi], eax
	call	DisplaySprite
	nop
	movups	xmm6, XMMWORD PTR 128[rsp]
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
	.p2align 4,,10
	.p2align 3
.L96:
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 48[rsp], r8d
	lea	r15d, -16[r8]
	lea	r12, 449[rbx]
	mov	QWORD PTR 56[rsp], r10
	lea	rbp, 80[rsp]
	movq	xmm6, QWORD PTR .LC0[rip]
	mov	DWORD PTR 68[rsp], r9d
	lea	r13, 512[rdi]
	mov	QWORD PTR 72[rsp], rsi
	mov	rsi, rbx
	mov	rbx, rdi
	mov	rdi, rcx
	.p2align 4,,10
	.p2align 3
.L87:
	movsx	edx, WORD PTR [rbx]
	mov	eax, 48
	mov	rcx, rbp
	add	rbx, 64
	mov	DWORD PTR 108[rsp], r15d
	lea	edx, [rdx+rdx*4]
	mov	WORD PTR 112[rsp], ax
	sar	edx, 11
	mov	DWORD PTR 88[rsp], 0
	lea	edx, -20[r14+rdx]
	movq	QWORD PTR 92[rsp], xmm6
	mov	DWORD PTR 104[rsp], edx
	mov	rdx, QWORD PTR 384[rsi]
	mov	QWORD PTR 80[rsp], rdx
	mov	rdx, r12
	call	CreateBossParticleStatic
	cmp	r13, rbx
	jne	.L87
	mov	r10, QWORD PTR 56[rsp]
	mov	rbx, rsi
	mov	r8d, DWORD PTR 48[rsp]
	mov	rcx, rdi
	mov	r9d, DWORD PTR 68[rsp]
	mov	rsi, QWORD PTR 72[rsp]
	movzx	edx, WORD PTR 440[r10]
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L105:
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, r14d
	mov	QWORD PTR 48[rsp], rcx
	call	Coll_Player_Platform
	mov	rcx, QWORD PTR 48[rsp]
	test	eax, 65536
	je	.L93
	sal	eax, 24
	sar	eax, 16
	add	DWORD PTR 16[rdi], eax
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L104:
	mov	r10d, DWORD PTR 16[rdi]
	cmp	BYTE PTR 450[rbx], 1
	lea	r9d, 256[r9+r10]
	mov	DWORD PTR 16[rdi], r9d
	jne	.L90
	add	DWORD PTR 12[rdi], 256
	jmp	.L90
	.seh_endproc
	.p2align 4
	.globl	sub_804BC44
	.def	sub_804BC44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804BC44
sub_804BC44:
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
	movups	XMMWORD PTR 112[rsp], xmm6
	.seh_savexmm	xmm6, 112
	.seh_endprologue
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	movzx	r13d, dl
	mov	rdi, rcx
	lea	r15, [rcx+r13*2]
	lea	r10, 16[rcx+r13*8]
	movzx	eax, WORD PTR 44[r15]
	movq	xmm1, QWORD PTR 8[r10]
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	ecx, WORD PTR [r14+rdx*2]
	movsx	edx, WORD PTR [r14+rax*2]
	mov	eax, ecx
	mov	r9d, edx
	sal	eax, 5
	sal	r9d, 5
	sub	eax, ecx
	sub	r9d, edx
	sar	eax, 10
	sar	r9d, 10
	movd	xmm0, eax
	movd	xmm3, r9d
	punpckldq	xmm0, xmm3
	psubd	xmm1, xmm0
	movq	QWORD PTR 8[r10], xmm1
	movzx	eax, WORD PTR 48[r15]
	movzx	r9d, WORD PTR 40[r15]
	lea	r9d, [r9+rax*4]
	sub	eax, 1
	and	r9w, 1023
	mov	WORD PTR 48[r15], ax
	mov	WORD PTR 40[r15], r9w
	test	ax, ax
	jne	.L106
	lea	rax, gUnknown_080D8888[rip]
	movq	xmm0, QWORD PTR [rdi]
	lea	r12, 12[rdi]
	mov	r10d, 1
	movzx	esi, WORD PTR [rax+r13*4]
	movzx	eax, WORD PTR 2[rax+r13*4]
	mov	QWORD PTR 40[rsp], r12
	xor	r11d, r11d
	paddd	xmm1, xmm0
	mov	QWORD PTR 56[rsp], r13
	mov	r13d, r10d
	movd	xmm4, eax
	mov	eax, ecx
	movd	xmm6, esi
	mov	rsi, rdi
	sal	eax, 4
	punpckldq	xmm6, xmm4
	sub	eax, ecx
	mov	ecx, edx
	paddd	xmm6, xmm1
	sal	ecx, 4
	sar	eax, 6
	sub	ecx, edx
	movd	xmm0, eax
	lea	rax, 64[rsp]
	sar	ecx, 6
	mov	QWORD PTR 32[rsp], rax
	movd	xmm5, ecx
	punpckldq	xmm0, xmm5
	psubd	xmm6, xmm0
	psrad	xmm6, 8
.L108:
	mov	ebp, r11d
	mov	ebx, 96
	mov	r12d, r13d
	mov	edi, 512
	neg	ebp
	mov	DWORD PTR 52[rsp], r11d
	sal	ebp, 5
	cmp	r13d, -1
	mov	QWORD PTR 208[rsp], rsi
	lea	eax, 96[rbp]
	cmove	eax, ebx
	neg	r12d
	neg	ebp
	mov	ebx, 896
	mov	esi, r12d
	mov	r12d, ebp
	sub	edi, eax
	sub	ebx, eax
	mov	ebp, edi
	mov	rdi, QWORD PTR 208[rsp]
.L109:
	movzx	eax, WORD PTR 44[r15]
	movdqu	xmm1, xmm6
	mov	WORD PTR 82[rsp], bp
	sub	bp, -128
	lea	ecx, 768[rax]
	add	ax, 576
	and	ecx, 1023
	sub	eax, r12d
	add	r12d, 32
	lea	edx, 256[rcx]
	and	ax, 1023
	movsx	rdx, edx
	mov	WORD PTR 80[rsp], ax
	mov	rax, QWORD PTR 72[rdi]
	movsx	edx, WORD PTR [r14+rdx*2]
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 3036541878272
	imul	edx, esi
	mov	QWORD PTR 72[rsp], rax
	movd	xmm0, edx
	movsx	edx, WORD PTR [r14+rcx*2]
	mov	rcx, QWORD PTR 32[rsp]
	imul	edx, esi
	movd	xmm2, edx
	xor	edx, edx
	punpckldq	xmm0, xmm2
	mov	WORD PTR 96[rsp], dx
	mov	rdx, QWORD PTR 40[rsp]
	psrad	xmm0, 11
	psubd	xmm1, xmm0
	movq	QWORD PTR 88[rsp], xmm1
	call	CreateBossParticleStatic
	cmp	bp, bx
	jne	.L109
	mov	r11d, DWORD PTR 52[rsp]
	mov	rsi, rdi
	sub	r13d, 1
	add	r11d, 3
	cmp	r11d, 9
	jne	.L108
	movzx	eax, WORD PTR 44[r15]
	mov	r13, QWORD PTR 56[rsp]
	mov	WORD PTR 40[r15], ax
	mov	eax, 300
	mov	BYTE PTR 60[rdi+r13], 0
	mov	WORD PTR 48[r15], ax
.L106:
	movups	xmm6, XMMWORD PTR 112[rsp]
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
	.seh_endproc
	.p2align 4
	.def	sub_804A070;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804A070
sub_804A070:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	edi, dl
	mov	rbx, rcx
	movzx	esi, dl
	mov	rax, rdi
	sal	rax, 7
	lea	r12, [rcx+rax]
	lea	rbp, 64[rcx+rax]
	movzx	ecx, BYTE PTR 451[rcx]
	test	cl, cl
	je	.L113
	mov	r8d, DWORD PTR 420[rbx+rsi*8]
.L114:
	lea	rax, [rbx+rdi*8]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r13, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 416[rax]
	add	r8d, DWORD PTR 396[rax]
	add	edx, DWORD PTR 392[rax]
	mov	rax, rsi
	sar	r8d, 8
	sar	edx, 8
	sal	rax, 7
	mov	r11d, r8d
	sub	r11w, WORD PTR 4[r9]
	add	rax, rbx
	mov	r10d, edx
	sub	r10w, WORD PTR [r9]
	mov	WORD PTR 38[rax], r10w
	mov	WORD PTR 40[rax], r11w
	test	BYTE PTR 38[r13], 64
	je	.L121
	test	cl, cl
	je	.L122
.L118:
	mov	rcx, r12
	sal	rsi, 7
	call	DisplaySprite
	lea	rdx, [rbx+rsi]
	mov	rcx, rbp
	movzx	eax, WORD PTR 40[rdx]
	movzx	edx, WORD PTR 38[rdx]
	add	eax, 64
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 102[rbx+rsi], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L113:
	mov	DWORD PTR 420[rbx+rsi*8], -2048
	mov	r8d, -2048
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L121:
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	rcx, r12
	mov	QWORD PTR 32[rsp], r13
	call	Coll_Player_Entity_HitboxN
	test	eax, eax
	je	.L120
	mov	eax, -896
	mov	edx, 20
	mov	BYTE PTR 117[r13], 6
	sub	DWORD PTR 16[r13], 2048
	mov	WORD PTR 22[r13], ax
	mov	WORD PTR 108[r13], dx
.L120:
	movzx	ecx, BYTE PTR 451[rbx]
	test	cl, cl
	jne	.L118
.L122:
	mov	ecx, 264
	call	m4aSongNumStart
	lea	rdx, [rbx+rdi*2]
	sub	WORD PTR 440[rdx], 1
	jne	.L118
	movzx	ecx, BYTE PTR 446[rbx+rsi]
	lea	rax, gUnknown_080D8858[rip]
	movzx	r8d, BYTE PTR 1[rax+rcx*2]
	movzx	eax, BYTE PTR [rax+rcx*2]
	mov	WORD PTR 440[rdx], r8w
	mov	BYTE PTR 446[rbx+rsi], al
	jmp	.L118
	.seh_endproc
	.p2align 4
	.def	Boss8_HitCockpit;	.scl	3;	.type	32;	.endef
	.seh_proc	Boss8_HitCockpit
Boss8_HitCockpit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 8[rcx]
	sub	eax, 1
	mov	BYTE PTR 8[rcx], al
	mov	rbx, rcx
	test	al, 1
	je	.L124
	mov	ecx, 143
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 8[rbx]
	cmp	al, 3
	je	.L129
.L126:
	test	al, al
	jne	.L127
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
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
	je	.L128
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	je	.L130
.L128:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 48
.L127:
	mov	eax, 705
	mov	edx, -254
	mov	BYTE PTR 11[rbx], 64
	mov	WORD PTR 114[rbx], ax
	mov	WORD PTR 144[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	mov	ecx, 235
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 8[rbx]
	cmp	al, 3
	jne	.L126
.L129:
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 19
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L130:
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	jmp	.L128
	.seh_endproc
	.p2align 4
	.def	Task_BossRunManagerMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BossRunManagerMain
Task_BossRunManagerMain:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	ecx, BYTE PTR 4[rbx]
	cmp	cl, 6
	ja	.L169
	je	.L170
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, cl
	lea	rdx, sBossRunCameraYTriggers[rip]
	movzx	r8d, cl
	movzx	edx, WORD PTR [rdx+rax*2]
	cmp	DWORD PTR 16[rsi], edx
	jg	.L171
.L142:
	lea	rcx, gUnknown_080D8808[rip]
	mov	edx, DWORD PTR [rcx+rax*8]
	test	edx, edx
	js	.L169
	mov	r9, QWORD PTR .refptr.gActiveBossTask[rip]
	cmp	QWORD PTR [r9], 0
	je	.L169
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	sal	edx, 8
	mov	r9d, DWORD PTR 12[r10]
	cmp	r9d, edx
	jge	.L167
	.p2align 4,,10
	.p2align 3
.L169:
	mov	rbp, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	mov	rsi, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	rdi, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
.L133:
	movzx	ecx, BYTE PTR 5[rbx]
	mov	rax, rcx
	cmp	cl, 6
	ja	.L143
	lea	rdx, sBossRunCameraYTriggers[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, WORD PTR [rdx+rcx*2]
	sub	edx, 599
	cmp	edx, DWORD PTR 16[r8]
	jle	.L172
.L143:
	movzx	eax, WORD PTR [rbx]
	movzx	edx, WORD PTR [rsi+rcx*4]
	cmp	ax, dx
	je	.L146
	jnb	.L147
	lea	edx, 1[rax]
	mov	WORD PTR [rbx], dx
.L146:
	movzx	r8d, WORD PTR 2[rbx]
	movzx	eax, WORD PTR 2[rsi+rcx*4]
	cmp	r8w, ax
	je	.L148
	jnb	.L149
	lea	eax, 1[r8]
	mov	WORD PTR 2[rbx], ax
.L148:
	mov	WORD PTR 0[rbp], dx
	mov	WORD PTR [rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	lea	eax, -1[r8]
	mov	WORD PTR 2[rbx], ax
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L147:
	lea	edx, -1[rax]
	mov	WORD PTR [rbx], dx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L172:
	cmp	cl, 6
	je	.L173
	add	eax, 1
	mov	BYTE PTR 5[rbx], al
	movzx	ecx, al
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L170:
	mov	rsi, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	rbp, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	mov	rdi, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, WORD PTR 28[rsi]
	mov	WORD PTR 0[rbp], ax
	movzx	eax, WORD PTR 30[rsi]
	mov	WORD PTR [rdi], ax
	mov	eax, DWORD PTR 12[rdx]
	cmp	eax, 10997759
	jle	.L174
	cmp	eax, 10997760
	je	.L133
	xor	eax, eax
	and	DWORD PTR 36[rdx], -134217729
	mov	WORD PTR 24[rdx], ax
	mov	BYTE PTR 117[rdx], 1
	mov	BYTE PTR 4[rbx], 7
	mov	BYTE PTR 6[rbx], 1
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L173:
	cmp	BYTE PTR 6[rbx], 0
	jne	.L145
	mov	rax, QWORD PTR .LC5[rip]
	mov	QWORD PTR 8[r8], rax
.L145:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	mov	ecx, 6
	mov	BYTE PTR [rax], 1
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L171:
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	add	ecx, 1
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gBossRingsRespawnCount[rip]
	mov	BYTE PTR [rax], 10
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 128[rax], edx
	mov	BYTE PTR 4[rbx], cl
	movzx	ecx, cl
	call	CreateZoneBoss
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -3
	movzx	eax, BYTE PTR 4[rbx]
	mov	r8, rax
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L174:
	cmp	eax, 10821120
	jle	.L136
	mov	ecx, 1280
	or	DWORD PTR 36[rdx], 2097152
	sar	eax, 8
	mov	WORD PTR 24[rdx], cx
	sub	eax, 120
	mov	DWORD PTR 100[rdx], 0
	mov	BYTE PTR 40[rdx], 0
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR [rdx]
	cmp	eax, ecx
	je	.L133
	mov	r8d, DWORD PTR 32[rdx]
	mov	eax, DWORD PTR 16[rdx]
	jle	.L138
	add	r8d, 1
	add	ecx, 1
	add	eax, 1
	mov	DWORD PTR 32[rdx], r8d
	mov	DWORD PTR [rdx], ecx
	mov	DWORD PTR 16[rdx], eax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L136:
	mov	rcx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rcx, QWORD PTR [rcx]
	cmp	eax, 10818560
	jg	.L175
	cmp	eax, 10813439
	jle	.L133
	test	rcx, rcx
	je	.L133
	sub	eax, 933888
	mov	ecx, -933888
	mov	DWORD PTR 12[rdx], eax
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	mov	edx, 6
	mov	DWORD PTR [rax], -933888
	call	sub_8039F50
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	DWORD PTR [rax], 3648
	sub	DWORD PTR 32[rax], 3648
	sub	DWORD PTR 16[rax], 3648
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L133
	sub	DWORD PTR [rax], 933888
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L167:
	mov	edi, DWORD PTR 4[rcx+rax*8]
	mov	rax, QWORD PTR .refptr.gWorldSpeedX[rip]
	mov	edx, r8d
	mov	ebp, edi
	sal	ebp, 8
	add	r9d, ebp
	mov	ecx, ebp
	mov	DWORD PTR [rax], ebp
	mov	DWORD PTR 12[r10], r9d
	call	sub_8039F50
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	add	DWORD PTR [rsi], edi
	add	DWORD PTR 32[rsi], edi
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	add	DWORD PTR 16[rsi], edi
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L169
	add	DWORD PTR [rax], ebp
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L175:
	test	rcx, rcx
	jne	.L133
	mov	r12, QWORD PTR .refptr.gStageFlags[rip]
	test	WORD PTR [r12], 256
	jne	.L133
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, 7
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR 128[rdx], eax
	call	CreateZoneBoss
	and	WORD PTR [r12], -3
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L138:
	sub	r8d, 1
	sub	ecx, 1
	sub	eax, 1
	mov	DWORD PTR 32[rdx], r8d
	mov	DWORD PTR [rdx], ecx
	mov	DWORD PTR 16[rdx], eax
	jmp	.L133
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_SuperEggRoboZMain;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_SuperEggRoboZMain
TaskDestructor_SuperEggRoboZMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 72[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 184[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 264[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 104[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_SuperEggRoboZTowers;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_SuperEggRoboZTowers
TaskDestructor_SuperEggRoboZTowers:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_804C5B8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804C5B8
sub_804C5B8:
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
	sub	rsp, 56
	.seh_stackalloc	56
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	movzx	r9d, BYTE PTR 11[rcx]
	mov	rbx, rcx
	test	r9b, r9b
	je	.L187
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	esi, DWORD PTR [rax], 1663525
	add	esi, 1013904223
	imul	edi, esi, 1663525
	add	edi, 1013904223
	cmp	r9b, 31
	ja	.L180
	mov	DWORD PTR [rax], edi
	and	esi, 7
	and	edi, 7
	sub	esi, 3
	sub	edi, 3
	sal	esi, 8
	sal	edi, 8
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L187:
	xor	edi, edi
	xor	esi, esi
.L179:
	mov	ecx, DWORD PTR [rbx]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	r11, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r10d, DWORD PTR 0[rbp]
	lea	edx, [rcx+rsi]
	add	ecx, 48640
	mov	r8d, edx
	sar	ecx, 8
	sar	r8d, 8
	mov	eax, r10d
	sub	ecx, r10d
	sub	eax, r8d
	mov	r8d, DWORD PTR 4[rbp]
	add	ecx, 50
	mov	WORD PTR [r11], ax
	mov	eax, DWORD PTR 4[rbx]
	mov	r12d, r8d
	add	eax, edi
	mov	r13d, eax
	sar	r13d, 8
	sub	r12d, r13d
	mov	WORD PTR 2[r11], r12w
	mov	r12, QWORD PTR .refptr.gDispCnt[rip]
	movzx	r11d, WORD PTR [r12]
	mov	r13d, r11d
	or	r11w, 256
	and	r13w, -257
	cmp	ecx, 331
	cmovnb	r11d, r13d
	lea	r13, 160[rbx]
	mov	WORD PTR [r12], r11w
	lea	r12, 96[rbx]
	cmp	r9b, 31
	ja	.L183
	mov	ecx, r9d
	shr	cl, 3
.L184:
	add	eax, 10240
	add	edx, 48640
	movzx	ecx, cl
	mov	r14, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sar	eax, 8
	sar	edx, 8
	movd	xmm6, DWORD PTR .LC6[rip]
	sub	eax, r8d
	sub	edx, r10d
	add	eax, ecx
	movzx	edx, dx
	movd	DWORD PTR 162[rbx], xmm6
	sal	eax, 16
	or	eax, edx
	movzx	edx, BYTE PTR [r14]
	mov	DWORD PTR 134[rbx], eax
	lea	ecx, 1[rdx]
	or	edx, 12384
	mov	DWORD PTR 166[rbx], eax
	mov	DWORD PTR 128[rbx], edx
	movzx	edx, WORD PTR 16[rbx]
	mov	BYTE PTR [r14], cl
	mov	rcx, r12
	mov	WORD PTR 160[rbx], dx
	call	UpdateSpriteAnimation
	mov	rdx, r13
	mov	rcx, r12
	xor	r13d, r13d
	call	TransformSprite
	mov	rcx, r12
	lea	r12, 240[rbx]
	call	DisplaySprite
	lea	r9, gUnknown_080D8888[rip+2]
	cmp	BYTE PTR 66[rbx+r13], 0
	lea	r8, -2[r9]
	jne	.L185
.L191:
	mov	edx, DWORD PTR 4[rbx]
	movzx	eax, WORD PTR [r9+r13*4]
	lea	r15, -64[r12]
	movzx	ecx, WORD PTR [r8+r13*4]
	add	edx, edi
	add	edx, DWORD PTR 28[rbx+r13*8]
	add	edx, eax
	mov	eax, DWORD PTR [rbx]
	sar	edx, 8
	sub	dx, WORD PTR 4[rbp]
	add	eax, esi
	add	eax, DWORD PTR 24[rbx+r13*8]
	add	eax, ecx
	movzx	ecx, BYTE PTR [r14]
	sar	eax, 8
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR -24[r12], dx
	lea	r10d, 1[rcx]
	or	ecx, 4192
	mov	WORD PTR -26[r12], ax
	mov	DWORD PTR -32[r12], ecx
	movzx	ecx, WORD PTR 40[rbx+r13*2]
	mov	WORD PTR 8[r12], dx
	mov	WORD PTR [r12], cx
	mov	rcx, r15
	mov	WORD PTR 6[r12], ax
	movd	DWORD PTR 2[r12], xmm6
	mov	BYTE PTR [r14], r10b
	call	UpdateSpriteAnimation
	mov	rdx, r12
	mov	rcx, r15
	call	TransformSprite
	mov	rcx, r15
	call	DisplaySprite
	lea	r9, gUnknown_080D8888[rip+2]
	lea	r8, -2[r9]
.L185:
	add	r12, 80
	test	r13, r13
	jne	.L190
.L188:
	mov	r13d, 1
	cmp	BYTE PTR 66[rbx+r13], 0
	je	.L191
	add	r12, 80
	test	r13, r13
	je	.L188
.L190:
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
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
.L183:
	mov	ecx, 64
	sub	ecx, r9d
	sar	ecx, 3
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L180:
	mov	DWORD PTR [rax], edi
	and	esi, 15
	and	edi, 15
	sub	esi, 7
	sub	edi, 7
	sal	esi, 8
	sal	edi, 8
	jmp	.L179
	.seh_endproc
	.p2align 4
	.def	Task_SuperEggRoboZMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SuperEggRoboZMain
Task_SuperEggRoboZMain:
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
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	mov	rcx, rsi
	call	sub_804C5B8
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rbx], 2097152
	cmp	WORD PTR 24[rbx], 0
	jne	.L192
	mov	eax, DWORD PTR 20[rsi]
	sub	eax, 1
	je	.L195
	mov	DWORD PTR 20[rsi], eax
.L192:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_804A9D8[rip]
	mov	ecx, 260
	mov	DWORD PTR 20[rsi], 300
	mov	QWORD PTR 40[rax], rdx
	call	m4aSongNumStart
	xor	eax, eax
	mov	BYTE PTR 117[rbx], 1
	mov	WORD PTR 108[rbx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_SuperEggRoboZTowersMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SuperEggRoboZTowersMain
Task_SuperEggRoboZTowersMain:
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
	xor	ebx, ebx
	lea	rdi, sTowerStateCallbacks[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	cmp	QWORD PTR [rax], 0
	mov	rsi, QWORD PTR 24[rcx]
	je	.L204
.L198:
	movzx	eax, BYTE PTR 446[rsi+rbx]
	mov	edx, ebx
	add	rbx, 1
	mov	rcx, rsi
	call	[QWORD PTR [rdi+rax*8]]
	cmp	rbx, 3
	jne	.L198
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	cmp	DWORD PTR 16[rcx], 34047
	jle	.L205
.L199:
	cmp	BYTE PTR 451[rsi], 0
	jne	.L197
	mov	rax, QWORD PTR 456[rsi]
	cmp	BYTE PTR 8[rax], 0
	jne	.L197
	mov	BYTE PTR 451[rsi], 1
.L197:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L205:
	call	Coll_DamagePlayer
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L204:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_ShowResultsAndDelete;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ShowResultsAndDelete
Task_ShowResultsAndDelete:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	eax, 8192
	mov	WORD PTR 84[rcx], ax
	add	rcx, 80
	call	UpdateScreenFade
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
	mov	ecx, 144
	call	m4aSongNumStop
	mov	r8d, 255
	mov	edx, 65535
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	call	m4aMPlayVolumeControl
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_804C240
	.def	sub_804C240;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804C240
sub_804C240:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	movzx	eax, dl
	mov	rbx, rcx
	cmp	BYTE PTR 66[rcx+rax], 0
	jne	.L207
	lea	rsi, 2[rax]
	mov	r11d, DWORD PTR 4[rcx]
	lea	r10, gUnknown_080D8888[rip]
	mov	r8d, DWORD PTR 12[rcx+rsi*8]
	movzx	r9d, WORD PTR 2[r10+rax*4]
	lea	edx, [r11+r8]
	add	edx, r9d
	cmp	edx, 77055
	jg	.L211
	lea	rcx, 16[rax]
	movd	xmm2, r8d
	movd	xmm0, DWORD PTR 8[rbx+rsi*8]
	movzx	edx, WORD PTR 8[rbx+rcx*2]
	punpckldq	xmm0, xmm2
	add	dx, 800
	and	dx, 1023
	mov	WORD PTR 8[rbx+rcx*2], dx
	movzx	ecx, WORD PTR 54[rbx+rax*4]
	movzx	edx, WORD PTR 52[rbx+rax*4]
	add	ecx, 32
	movsx	r8d, dx
	mov	WORD PTR 54[rbx+rax*4], cx
	movd	xmm1, r8d
	movsx	r8d, cx
	movd	xmm3, r8d
	punpckldq	xmm1, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR 8[rbx+rsi*8], xmm0
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rsi], 3
	je	.L212
.L207:
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L211:
	mov	BYTE PTR 66[rcx+rax], 1
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	movd	xmm1, DWORD PTR [rbx]
	movd	xmm4, r11d
	movzx	eax, WORD PTR [r10+rax*4]
	movd	xmm5, r9d
	sar	dx, 3
	sar	cx, 3
	punpckldq	xmm1, xmm4
	neg	edx
	neg	ecx
	paddd	xmm0, xmm1
	movd	xmm1, eax
	movsx	edx, dx
	xor	eax, eax
	punpckldq	xmm1, xmm5
	movsx	ecx, cx
	mov	WORD PTR 64[rsp], ax
	paddd	xmm0, xmm1
	psrad	xmm0, 8
	movq	QWORD PTR 56[rsp], xmm0
	call	sub_8004418
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	ecx, eax
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 31
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, -16[rax+rcx]
	lea	rcx, 32[rsp]
	and	ax, 1023
	mov	WORD PTR 48[rsp], ax
	mov	eax, DWORD PTR [rsi]
	sal	eax, 4
	and	eax, 1008
	movzx	eax, WORD PTR [rdx+rax*2]
	lea	rdx, 12[rbx]
	sar	ax, 6
	add	ax, 768
	mov	WORD PTR 50[rsp], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleStatic
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_804A9D8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_804A9D8
Task_804A9D8:
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
	sub	rsp, 88
	.seh_stackalloc	88
	movups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	cmp	DWORD PTR 20[rbx], 60
	mov	eax, DWORD PTR 4[rbx]
	jbe	.L230
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	sub	eax, 256
	mov	DWORD PTR 4[rbx], eax
	mov	eax, DWORD PTR [rsi]
	test	al, 31
	je	.L232
	test	al, 7
	je	.L233
.L217:
	mov	edx, DWORD PTR 20[rbx]
	imul	eax, edx, -286331153
	add	eax, 143165576
	ror	eax
	cmp	eax, 143165576
	ja	.L234
	lea	eax, -60[rdx]
	mov	edx, 2290649225
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	imul	rax, rdx
	mov	DWORD PTR 36[r12], 0
	shr	rax, 36
	sub	eax, 2
	cmp	al, 3
	jg	.L224
	ja	.L231
	movzx	eax, al
	mov	edx, 70
	sub	edx, eax
.L219:
	mov	ecx, -1
	mov	WORD PTR 108[r12], dx
	mov	WORD PTR 110[r12], cx
.L231:
	mov	eax, DWORD PTR 4[rbx]
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L234:
	mov	eax, DWORD PTR 4[rbx]
.L230:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
.L215:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	BYTE PTR 11[rbx], 1
	mov	rsi, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm6, DWORD PTR .LC6[rip]
	imul	edi, DWORD PTR [rdx], 1663525
	mov	r10d, DWORD PTR [r14]
	movd	DWORD PTR 162[rbx], xmm6
	mov	r8d, r10d
	movzx	r13d, r10w
	add	edi, 1013904223
	mov	ebp, edi
	imul	edi, edi, 1663525
	and	ebp, 7
	sub	ebp, 3
	add	edi, 1013904223
	sal	ebp, 8
	mov	DWORD PTR [rdx], edi
	mov	edx, DWORD PTR [rbx]
	and	edi, 7
	sub	edi, 3
	lea	ecx, 0[rbp+rdx]
	sal	edi, 8
	add	edx, 48640
	mov	r11d, ecx
	add	eax, edi
	sar	edx, 8
	sar	r11d, 8
	sub	edx, r10d
	sub	r8d, r11d
	add	edx, 50
	mov	WORD PTR [rsi], r8w
	mov	r8d, DWORD PTR 4[r14]
	mov	r11d, r8d
	sal	r11d, 16
	or	r13d, r11d
	mov	r11d, eax
	sar	r11d, 8
	movd	xmm1, r13d
	mov	r13, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sub	r8d, r11d
	mov	r11, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 2[rsi], r8w
	lea	rsi, 96[rbx]
	movzx	r8d, WORD PTR [r11]
	mov	r10d, r8d
	or	r8w, 256
	and	r10w, -257
	cmp	edx, 331
	cmovnb	r8d, r10d
	add	ecx, 48640
	add	eax, 10240
	xor	r15d, r15d
	sar	ecx, 8
	sar	eax, 8
	movzx	ecx, cx
	mov	WORD PTR [r11], r8w
	sal	eax, 16
	or	eax, ecx
	mov	rcx, rsi
	movd	xmm0, eax
	movzx	eax, BYTE PTR 0[r13]
	psubw	xmm0, xmm1
	lea	edx, 1[rax]
	or	eax, 12384
	mov	DWORD PTR 128[rbx], eax
	movzx	eax, WORD PTR 16[rbx]
	movd	DWORD PTR 134[rbx], xmm0
	mov	WORD PTR 160[rbx], ax
	movd	DWORD PTR 166[rbx], xmm0
	mov	BYTE PTR 0[r13], dl
	call	UpdateSpriteAnimation
	lea	rdx, 160[rbx]
	mov	rcx, rsi
	call	TransformSprite
	mov	rcx, rsi
	lea	rsi, 240[rbx]
	call	DisplaySprite
	mov	QWORD PTR 56[rsp], r12
	mov	r12, rbx
	mov	rbx, r15
	mov	r15d, edi
.L222:
	mov	eax, DWORD PTR 4[r12]
	lea	rcx, gUnknown_080D8888[rip+2]
	lea	rdi, -64[rsi]
	movzx	edx, WORD PTR [rcx+rbx*2]
	sub	rcx, 2
	add	eax, r15d
	add	eax, DWORD PTR 28[r12+rbx*4]
	movzx	ecx, WORD PTR [rcx+rbx*2]
	add	eax, edx
	mov	edx, DWORD PTR [r12]
	sar	eax, 8
	sub	ax, WORD PTR 4[r14]
	add	edx, ebp
	add	edx, DWORD PTR 24[r12+rbx*4]
	add	edx, ecx
	movzx	ecx, BYTE PTR 0[r13]
	sar	edx, 8
	sub	dx, WORD PTR [r14]
	mov	WORD PTR -24[rsi], ax
	lea	r9d, 1[rcx]
	or	ecx, 4192
	mov	WORD PTR -26[rsi], dx
	mov	DWORD PTR -32[rsi], ecx
	movzx	ecx, WORD PTR 40[r12+rbx]
	add	rbx, 2
	mov	WORD PTR 6[rsi], dx
	mov	WORD PTR [rsi], cx
	mov	rcx, rdi
	mov	WORD PTR 8[rsi], ax
	movd	DWORD PTR 2[rsi], xmm6
	mov	BYTE PTR 0[r13], r9b
	call	UpdateSpriteAnimation
	mov	rdx, rsi
	mov	rcx, rdi
	add	rsi, 80
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
	cmp	rbx, 4
	jne	.L222
	mov	rbx, r12
	mov	r12, QWORD PTR 56[rsp]
	mov	edx, DWORD PTR 36[r12]
	mov	eax, edx
	or	eax, 6291456
	mov	DWORD PTR 36[r12], eax
	sub	DWORD PTR 20[rbx], 1
	je	.L235
.L213:
	movups	xmm6, XMMWORD PTR 64[rsp]
	add	rsp, 88
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
.L235:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	edx, -6291457
	mov	ecx, 260
	lea	rdi, Task_804AB24[rip]
	mov	DWORD PTR 36[r12], edx
	and	WORD PTR [rax], -33
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	edx, 4608
	mov	DWORD PTR 48[r14], 42820
	mov	BYTE PTR 11[rbx], 0
	mov	WORD PTR [rax], dx
	mov	rdx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	and	DWORD PTR 36[r12], -2097153
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR .refptr.gPlayerLimbsPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L233:
	mov	r9d, 20
	mov	r8d, 128
	mov	edx, 16
	mov	DWORD PTR 32[rsp], 131
	mov	ecx, 256
	call	CreateScreenShake
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L232:
	mov	ecx, 260
	call	m4aSongNumStart
	mov	eax, DWORD PTR [rsi]
	test	al, 7
	jne	.L217
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L224:
	mov	edx, 67
	jmp	.L219
	.seh_endproc
	.p2align 4
	.def	Task_804AD68;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_804AD68
Task_804AD68:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 80[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L249
	movzx	edx, BYTE PTR 11[rbx]
	mov	eax, 512
	test	edx, edx
	je	.L239
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 3
	movsx	eax, WORD PTR [rax+rdx*2]
	sar	eax, 7
	add	ax, 512
.L239:
	mov	WORD PTR 16[rbx], ax
	mov	rcx, rbx
	lea	rsi, sArmFuncs[rip]
	call	sub_804CA08
	movzx	eax, BYTE PTR 60[rbx]
	xor	edx, edx
	call	[QWORD PTR [rsi+rax*8]]
	movzx	eax, BYTE PTR 61[rbx]
	mov	edx, 1
	mov	rcx, rbx
	call	[QWORD PTR [rsi+rax*8]]
	mov	rcx, rbx
	call	sub_804C5B8
	mov	rcx, rbx
	call	sub_804CA70
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rsi], 7
	je	.L250
.L240:
	movzx	r8d, WORD PTR 20[rbx]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	mov	edx, 65535
	call	m4aMPlayVolumeControl
	mov	edx, DWORD PTR 20[rbx]
	mov	eax, DWORD PTR [rsi]
	test	edx, edx
	je	.L242
	test	al, 1
	je	.L242
	sub	edx, 1
	mov	DWORD PTR 20[rbx], edx
.L242:
	add	eax, 3
	test	al, 7
	je	.L251
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r11d, 18
	mov	WORD PTR 64[rsp], r11w
	imul	eax, DWORD PTR [rcx], 1663525
	add	eax, 1013904223
	movzx	edx, al
	imul	eax, eax, 1663525
	add	edx, DWORD PTR [r8]
	mov	DWORD PTR 56[rsp], edx
	add	eax, 1013904223
	movzx	edx, al
	imul	eax, eax, 1663525
	add	edx, DWORD PTR 4[r8]
	mov	DWORD PTR 60[rsp], edx
	add	eax, 1013904223
	mov	edx, eax
	imul	eax, eax, 1663525
	and	dx, 1023
	mov	WORD PTR 48[rsp], dx
	lea	rdx, 12[rbx]
	add	eax, 1013904223
	mov	DWORD PTR [rcx], eax
	and	eax, 511
	lea	rcx, 32[rsp]
	add	eax, 512
	mov	WORD PTR 50[rsp], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleStatic
	mov	ecx, 144
	call	m4aSongNumStart
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	call	m4aMPlayImmInit
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L251:
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	eax, -85
	mov	r8d, -6
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	DWORD PTR 40[rsp], 0
	imul	edx, DWORD PTR [r9], 1663525
	add	edx, 1013904223
	mov	ecx, edx
	imul	edx, edx, 1663525
	and	ecx, 15
	mul	cl
	add	edx, 1013904223
	shr	ax, 10
	imul	eax, r8d
	movzx	r8d, dl
	add	r8d, DWORD PTR [r10]
	imul	edx, edx, 1663525
	mov	DWORD PTR 56[rsp], r8d
	add	ecx, eax
	add	edx, 1013904223
	movzx	ecx, cl
	movzx	r8d, dl
	imul	edx, edx, 1663525
	lea	rax, [rcx+rcx*2]
	add	r8d, DWORD PTR 4[r10]
	mov	r10, QWORD PTR .refptr.gTileInfoBossScrews[rip]
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 60[rsp], r8d
	mov	r8d, 32
	mov	WORD PTR 64[rsp], r8w
	add	edx, 1013904223
	lea	rax, [r10+rax*4]
	mov	DWORD PTR [r9], edx
	and	dx, 1023
	mov	r9d, 512
	mov	WORD PTR 48[rsp], dx
	mov	edx, DWORD PTR [rax]
	mov	WORD PTR 50[rsp], r9w
	sal	edx, 5
	lea	rdx, 65536[rdx+rcx]
	lea	rcx, 32[rsp]
	mov	QWORD PTR 32[rsp], rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR 8[rax]
	mov	WORD PTR 44[rsp], dx
	lea	rdx, 12[rbx]
	mov	WORD PTR 46[rsp], ax
	call	CreateBossParticleStatic
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L249:
	mov	edx, 20497
	mov	ecx, 20496
	call	TasksDestroyInPriorityRange
	mov	edx, 21556
	mov	ecx, 21553
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 1024
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 5242880
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_ShowResultsAndDelete[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804B0EC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804B0EC
sub_804B0EC:
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
	movzx	esi, dl
	mov	rbx, rcx
	cmp	BYTE PTR 62[rcx+rsi], 0
	jne	.L254
	lea	rdx, 2[rsi]
	lea	rax, gUnknown_080D8888[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	r10d, DWORD PTR 8[rcx+rdx*8]
	add	r10d, DWORD PTR [rcx]
	movzx	ecx, WORD PTR [rax+rsi*4]
	movzx	eax, WORD PTR 2[rax+rsi*4]
	mov	r9d, DWORD PTR 12[rbx+rdx*8]
	add	r9d, DWORD PTR 4[rbx]
	add	r9d, eax
	movzx	eax, WORD PTR 40[rbx+rsi*2]
	add	r10d, ecx
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	edx, WORD PTR [rcx+rdx*2]
	movsx	ecx, WORD PTR [rcx+rax*2]
	mov	eax, DWORD PTR 12[r12]
	imul	r8d, edx, 190
	imul	r11d, ecx, 190
	sar	r8d, 9
	add	r8d, r10d
	sar	r11d, 9
	sub	eax, r8d
	mov	r8d, DWORD PTR 16[r12]
	add	r11d, r9d
	sar	eax, 8
	sub	r8d, r11d
	imul	eax, eax
	sar	r8d, 8
	imul	r8d, r8d
	add	eax, r8d
	cmp	eax, 199
	jle	.L275
	imul	edx, edx, 95
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	r13, QWORD PTR 160[r12]
	imul	ecx, ecx, 95
	sar	edx, 9
	sar	ecx, 9
	cmp	BYTE PTR [rax], 0
	lea	edi, [r10+rdx]
	lea	ebp, [rcx+r9]
	jne	.L276
	test	BYTE PTR 36[r12], -128
	je	.L277
.L259:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L254
	cmp	DWORD PTR 96[rax], -1
	je	.L254
	sub	edi, DWORD PTR [rax]
	sub	ebp, DWORD PTR 4[rax]
	sar	edi, 8
	sar	ebp, 8
	imul	edi, edi
	imul	ebp, ebp
	add	edi, ebp
	cmp	edi, 375
	jle	.L278
.L254:
	xor	eax, eax
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L277:
	cmp	DWORD PTR 80[r13], -1
	je	.L259
	mov	eax, DWORD PTR 12[r12]
	mov	edx, DWORD PTR 16[r12]
	sub	eax, edi
	sub	edx, ebp
	sar	eax, 8
	sar	edx, 8
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 375
	jg	.L259
	movzx	eax, BYTE PTR 9[rbx+rsi]
	test	al, al
	je	.L260
	sub	eax, 1
	mov	BYTE PTR 9[rbx+rsi], al
	test	al, 1
	je	.L261
	mov	ecx, 143
	call	m4aSongNumStart
.L262:
	mov	BYTE PTR 62[rbx+rsi], 64
	movzx	eax, BYTE PTR 9[rbx+rsi]
.L260:
	test	al, al
	sete	al
	neg	WORD PTR 20[r12]
	neg	WORD PTR 22[r12]
	neg	WORD PTR 24[r12]
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L276:
	mov	edx, ebp
	mov	ecx, edi
	call	Player_UpdateHomingPosition
	test	BYTE PTR 36[r12], -128
	jne	.L259
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L278:
	movzx	eax, BYTE PTR 9[rbx+rsi]
	test	al, al
	je	.L263
	sub	eax, 1
	mov	BYTE PTR 9[rbx+rsi], al
	test	al, 1
	je	.L264
	mov	ecx, 143
	call	m4aSongNumStart
.L265:
	mov	BYTE PTR 62[rbx+rsi], 64
	movzx	eax, BYTE PTR 9[rbx+rsi]
.L263:
	mov	rdx, QWORD PTR .refptr.gCheeseTarget[rip]
	test	al, al
	sete	al
	mov	rdx, QWORD PTR 8[rdx]
	mov	BYTE PTR 61[rdx], 0
.L252:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	mov	rcx, r12
	call	Coll_DamagePlayer
	cmp	BYTE PTR 60[rbx+rsi], 3
	mov	BYTE PTR 64[rbx+rsi], 1
	jne	.L254
	mov	ecx, 263
	call	m4aSongNumStart
	xor	eax, eax
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L264:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L265
.L261:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L262
	.seh_endproc
	.p2align 4
	.def	sub_804BAC0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804BAC0
sub_804BAC0:
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
	movzx	eax, dl
	mov	rbx, rcx
	mov	esi, edx
	movzx	ebp, dl
	lea	rdi, [rcx+rax*2]
	sub	WORD PTR 48[rdi], 1
	jne	.L280
	movsx	rax, ebp
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	r8, 16[rcx+rax*8]
	movzx	ecx, WORD PTR 40[rdi]
	movq	xmm1, QWORD PTR 8[r8]
	lea	edx, 256[rcx]
	mov	r9d, ecx
	movsx	rcx, ecx
	movsx	rdx, edx
	movsx	r11d, WORD PTR [r10+rdx*2]
	movsx	r10d, WORD PTR [r10+rcx*2]
	mov	edx, r11d
	mov	ecx, r10d
	sal	edx, 4
	sal	ecx, 4
	sub	edx, r11d
	sub	ecx, r10d
	sar	edx, 6
	sar	ecx, 6
	movd	xmm0, edx
	movd	xmm2, ecx
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[r8], xmm1
	cmp	BYTE PTR 64[rbx+rax], 0
	jne	.L292
	mov	ecx, 160
	mov	edx, 5
	mov	WORD PTR 48[rdi], cx
	mov	BYTE PTR 60[rbx+rax], dl
	test	sil, sil
	je	.L285
.L291:
	lea	rdx, [rax+rax*4]
	mov	ecx, 704
	sal	rdx, 4
	add	rdx, rbx
	mov	WORD PTR 194[rdx], cx
	mov	BYTE PTR 224[rdx], 2
.L286:
	lea	rax, [rax+rax*4]
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
.L279:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L292:
	mov	ecx, 50
	mov	edx, 4
	mov	WORD PTR 44[rdi], r9w
	mov	WORD PTR 48[rdi], cx
	mov	BYTE PTR 60[rbx+rax], dl
	test	sil, sil
	jne	.L291
.L285:
	mov	edx, 703
	mov	BYTE PTR 224[rbx], 2
	mov	WORD PTR 194[rbx], dx
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L280:
	mov	edx, ebp
	call	sub_804B0EC
	test	al, al
	je	.L279
	movzx	ecx, WORD PTR 40[rdi]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movsx	rax, ebp
	lea	r8, 16[rbx+rax*8]
	lea	edx, 256[rcx]
	movq	xmm1, QWORD PTR 8[r8]
	movsx	rdx, edx
	movsx	r10d, WORD PTR [r9+rdx*2]
	movsx	r9d, WORD PTR [r9+rcx*2]
	mov	edx, r10d
	mov	ecx, r9d
	sal	edx, 4
	sal	ecx, 4
	sub	edx, r10d
	sub	ecx, r9d
	sar	edx, 6
	sar	ecx, 6
	movd	xmm0, edx
	movd	xmm3, ecx
	punpckldq	xmm0, xmm3
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[r8], xmm1
	mov	r8d, 60
	mov	DWORD PTR 52[rbx+rax*4], -50266496
	mov	BYTE PTR 60[rbx+rax], 7
	mov	WORD PTR 48[rdi], r8w
	test	sil, sil
	je	.L285
	jmp	.L291
	.seh_endproc
	.p2align 4
	.def	sub_804B984;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804B984
sub_804B984:
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
	mov	r13, QWORD PTR .refptr.gSineTable[rip]
	mov	rbx, rcx
	movzx	ebp, dl
	mov	esi, edx
	movzx	ecx, dl
	lea	rdi, [rbx+rbp*2]
	lea	r12, 16[rbx+rbp*8]
	movzx	edx, WORD PTR 40[rdi]
	movq	xmm1, QWORD PTR 8[r12]
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR 0[r13+rdx*2]
	cdqe
	movsx	eax, WORD PTR 0[r13+rax*2]
	lea	edx, [rdx+rdx*4]
	sar	edx, 5
	lea	eax, [rax+rax*4]
	movd	xmm2, edx
	sar	eax, 5
	movd	xmm0, eax
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[r12], xmm1
	sub	WORD PTR 48[rdi], 1
	jne	.L294
	mov	r8d, 30
	mov	BYTE PTR 60[rbx+rbp], 6
	mov	WORD PTR 48[rdi], r8w
.L294:
	mov	edx, ecx
	mov	rcx, rbx
	call	sub_804B0EC
	test	al, al
	je	.L293
	movzx	edx, WORD PTR 40[rdi]
	movq	xmm1, QWORD PTR 8[r12]
	lea	eax, 256[rdx]
	cdqe
	movsx	ecx, WORD PTR 0[r13+rax*2]
	mov	eax, ecx
	sal	eax, 4
	sub	eax, ecx
	movsx	ecx, WORD PTR 0[r13+rdx*2]
	sar	eax, 6
	mov	edx, ecx
	movd	xmm0, eax
	sal	edx, 4
	sub	edx, ecx
	mov	ecx, 60
	sar	edx, 6
	movd	xmm3, edx
	punpckldq	xmm0, xmm3
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[r12], xmm1
	mov	DWORD PTR 52[rbx+rbp*4], -50266496
	mov	BYTE PTR 60[rbx+rbp], 7
	mov	WORD PTR 48[rdi], cx
	test	sil, sil
	jne	.L301
	mov	eax, 703
	mov	BYTE PTR 224[rbx], 2
	mov	WORD PTR 194[rbx], ax
.L297:
	lea	rax, 0[rbp+rbp*4]
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
.L293:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	lea	rax, 0[rbp+rbp*4]
	mov	edx, 704
	sal	rax, 4
	add	rax, rbx
	mov	WORD PTR 194[rax], dx
	mov	BYTE PTR 224[rax], 2
	jmp	.L297
	.seh_endproc
	.p2align 4
	.def	sub_804B734;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804B734
sub_804B734:
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
	movups	XMMWORD PTR 112[rsp], xmm6
	.seh_savexmm	xmm6, 112
	.seh_endprologue
	mov	ebx, edx
	mov	r15, rcx
	movzx	edx, dl
	movzx	edi, bl
	lea	rax, 16[rcx+rdi*8]
	lea	r12, [rcx+rdi*2]
	mov	QWORD PTR 8[rax], 0
	sub	WORD PTR 48[r12], 1
	mov	QWORD PTR 40[rsp], rax
	jne	.L303
	lea	rax, gUnknown_080D8888[rip]
	movq	xmm0, QWORD PTR [rcx]
	lea	r14, 12[rcx]
	mov	DWORD PTR 48[rsp], edx
	movzx	esi, WORD PTR [rax+rdi*4]
	movzx	eax, WORD PTR 2[rax+rdi*4]
	lea	rcx, 64[rsp]
	mov	DWORD PTR 52[rsp], ebx
	mov	QWORD PTR 32[rsp], rcx
	mov	ebp, 1
	mov	rbx, r14
	movd	xmm6, esi
	movd	xmm3, eax
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, -96
	punpckldq	xmm6, xmm3
	mov	QWORD PTR 56[rsp], rdi
	mov	r13d, eax
	mov	rdi, r15
	paddd	xmm6, xmm0
	psrad	xmm6, 8
.L304:
	mov	r14d, ebp
	mov	r15d, 416
	add	r13d, 96
	neg	r14d
.L307:
	movzx	edx, WORD PTR 40[r12]
	movdqu	xmm1, xmm6
	xor	r9d, r9d
	mov	WORD PTR 96[rsp], r9w
	lea	ecx, 768[rdx]
	add	dx, 512
	and	ecx, 1023
	and	dx, 1023
	lea	eax, 256[rcx]
	mov	WORD PTR 80[rsp], dx
	cdqe
	movsx	eax, WORD PTR [rsi+rax*2]
	imul	eax, r14d
	movd	xmm0, eax
	movsx	eax, WORD PTR [rsi+rcx*2]
	imul	eax, r14d
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	psrad	xmm0, 11
	psubd	xmm1, xmm0
	movq	QWORD PTR 88[rsp], xmm1
	cmp	ebp, -1
	je	.L305
	lea	eax, 0[r13+r15]
	mov	rcx, QWORD PTR 32[rsp]
	mov	rdx, rbx
	sub	r15w, -128
	mov	WORD PTR 82[rsp], ax
	mov	rax, QWORD PTR 72[rdi]
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 3036541878272
	mov	QWORD PTR 72[rsp], rax
	call	CreateBossParticleStatic
	cmp	r15w, 800
	jne	.L307
	sub	ebp, 1
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L305:
	mov	rax, QWORD PTR 72[rdi]
	mov	rcx, QWORD PTR 32[rsp]
	mov	WORD PTR 82[rsp], r15w
	mov	rdx, rbx
	sub	r15w, -128
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 3036541878272
	mov	QWORD PTR 72[rsp], rax
	call	CreateBossParticleStatic
	cmp	r15w, 800
	jne	.L307
	mov	r15, rdi
	mov	eax, 10
	mov	edx, DWORD PTR 48[rsp]
	mov	ebx, DWORD PTR 52[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	mov	ecx, 262
	mov	DWORD PTR 32[rsp], edx
	mov	BYTE PTR 60[r15+rdi], 3
	mov	WORD PTR 48[r12], ax
	call	m4aSongNumStart
	mov	edx, DWORD PTR 32[rsp]
.L303:
	mov	rcx, r15
	call	sub_804B0EC
	test	al, al
	je	.L302
	movzx	edx, WORD PTR 40[r12]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8d, 60
	lea	eax, 256[rdx]
	cdqe
	movsx	r9d, WORD PTR [rcx+rax*2]
	movsx	ecx, WORD PTR [rcx+rdx*2]
	mov	eax, r9d
	mov	edx, ecx
	sal	eax, 4
	sal	edx, 4
	sub	eax, r9d
	sub	edx, ecx
	sar	eax, 6
	sar	edx, 6
	movd	xmm0, eax
	mov	rax, QWORD PTR 40[rsp]
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	movq	xmm1, QWORD PTR 8[rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[rax], xmm1
	mov	DWORD PTR 52[r15+rdi*4], -50266496
	mov	BYTE PTR 60[r15+rdi], 7
	mov	WORD PTR 48[r12], r8w
	test	bl, bl
	jne	.L316
	mov	edx, 703
	mov	BYTE PTR 224[r15], 2
	mov	WORD PTR 194[r15], dx
.L310:
	lea	rax, [rdi+rdi*4]
	sal	rax, 4
	mov	BYTE PTR 225[r15+rax], -1
.L302:
	movups	xmm6, XMMWORD PTR 112[rsp]
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
.L316:
	lea	rax, [rdi+rdi*4]
	mov	ecx, 704
	sal	rax, 4
	add	rax, r15
	mov	WORD PTR 194[rax], cx
	mov	BYTE PTR 224[rax], 2
	jmp	.L310
	.seh_endproc
	.p2align 4
	.def	sub_804B43C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804B43C
sub_804B43C:
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
	mov	esi, edx
	mov	rbx, rcx
	movzx	edx, dl
	movzx	edi, sil
	lea	r12, 16[rcx+rdi*8]
	lea	rbp, [rcx+rdi*2]
	mov	QWORD PTR 8[r12], 0
	movzx	eax, WORD PTR 48[rbp]
	cmp	ax, 300
	je	.L328
	sub	eax, 1
	mov	WORD PTR 48[rbp], ax
	test	ax, ax
	jne	.L321
	mov	r8d, 180
	mov	BYTE PTR 60[rcx+rdi], 1
	mov	WORD PTR 48[rbp], r8w
	mov	BYTE PTR 64[rcx+rdi], 0
.L321:
	mov	rcx, rbx
	call	sub_804B0EC
	test	al, al
	je	.L317
	movzx	edx, WORD PTR 40[rbp]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm1, QWORD PTR 8[r12]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [rcx+rax*2]
	movsx	ecx, WORD PTR [rcx+rdx*2]
	mov	eax, r8d
	mov	edx, ecx
	sal	eax, 4
	sal	edx, 4
	sub	edx, ecx
	sub	eax, r8d
	mov	ecx, 60
	sar	eax, 6
	sar	edx, 6
	movd	xmm0, eax
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[r12], xmm1
	mov	DWORD PTR 52[rbx+rdi*4], -50266496
	mov	BYTE PTR 60[rbx+rdi], 7
	mov	WORD PTR 48[rbp], cx
	test	sil, sil
	jne	.L329
	mov	eax, 703
	mov	BYTE PTR 224[rbx], 2
	mov	WORD PTR 194[rbx], ax
.L324:
	lea	rax, [rdi+rdi*4]
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
.L317:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L329:
	lea	rax, [rdi+rdi*4]
	mov	edx, 704
	sal	rax, 4
	add	rax, rbx
	mov	WORD PTR 194[rax], dx
	mov	BYTE PTR 224[rax], 2
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L328:
	test	sil, sil
	jne	.L330
	mov	r10d, 703
	mov	BYTE PTR 224[rcx], 0
	mov	WORD PTR 194[rcx], r10w
.L320:
	lea	rax, [rdi+rdi*4]
	mov	r9d, 299
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
	mov	WORD PTR 48[rbp], r9w
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L330:
	lea	rax, [rdi+rdi*4]
	mov	r11d, 704
	sal	rax, 4
	add	rax, rcx
	mov	WORD PTR 194[rax], r11w
	mov	BYTE PTR 224[rax], 0
	jmp	.L320
	.seh_endproc
	.p2align 4
	.def	sub_804B594;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804B594
sub_804B594:
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
	lea	r8, gUnknown_080D8888[rip]
	movzx	esi, dl
	mov	rbx, rcx
	mov	r12d, edx
	movzx	ebp, dl
	lea	rdi, 16[rcx+rsi*8]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, WORD PTR [r8+rsi*4]
	lea	r13, [rbx+rsi*2]
	mov	QWORD PTR 8[rdi], 0
	add	eax, DWORD PTR [rbx]
	mov	edx, DWORD PTR 12[rcx]
	mov	ecx, DWORD PTR 16[rcx]
	sub	edx, eax
	movzx	eax, WORD PTR 2[r8+rsi*4]
	add	eax, DWORD PTR 4[rbx]
	sub	ecx, eax
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	movzx	edx, WORD PTR 40[r13]
	cmp	dx, ax
	je	.L332
	lea	r8d, 1[rdx]
	cmp	ax, dx
	lea	ecx, -1[rdx]
	mov	eax, r8d
	cmovb	eax, ecx
	mov	WORD PTR 40[r13], ax
.L332:
	sub	WORD PTR 48[r13], 1
	jne	.L334
	test	r12b, r12b
	jne	.L343
	mov	r9d, 703
	mov	BYTE PTR 224[rbx], 1
	mov	WORD PTR 194[rbx], r9w
.L336:
	lea	rax, [rsi+rsi*4]
	mov	r8d, 30
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
	mov	BYTE PTR 60[rbx+rsi], 2
	mov	WORD PTR 48[r13], r8w
.L334:
	mov	edx, ebp
	mov	rcx, rbx
	call	sub_804B0EC
	test	al, al
	je	.L331
	movzx	edx, WORD PTR 40[r13]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm1, QWORD PTR 8[rdi]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [rcx+rax*2]
	movsx	ecx, WORD PTR [rcx+rdx*2]
	mov	eax, r8d
	mov	edx, ecx
	sal	eax, 4
	sal	edx, 4
	sub	edx, ecx
	sub	eax, r8d
	mov	ecx, 60
	sar	eax, 6
	sar	edx, 6
	movd	xmm0, eax
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR 8[rdi], xmm1
	mov	DWORD PTR 52[rbx+rsi*4], -50266496
	mov	BYTE PTR 60[rbx+rsi], 7
	mov	WORD PTR 48[r13], cx
	test	r12b, r12b
	jne	.L344
	mov	eax, 703
	mov	BYTE PTR 224[rbx], 2
	mov	WORD PTR 194[rbx], ax
.L339:
	lea	rax, [rsi+rsi*4]
	sal	rax, 4
	mov	BYTE PTR 225[rbx+rax], -1
.L331:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L344:
	lea	rax, [rsi+rsi*4]
	mov	edx, 704
	sal	rax, 4
	add	rax, rbx
	mov	WORD PTR 194[rax], dx
	mov	BYTE PTR 224[rax], 2
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L343:
	lea	rax, [rsi+rsi*4]
	mov	r10d, 704
	sal	rax, 4
	add	rax, rbx
	mov	WORD PTR 194[rax], r10w
	mov	BYTE PTR 224[rax], 1
	jmp	.L336
	.seh_endproc
	.p2align 4
	.globl	CreateBossRunManager
	.def	CreateBossRunManager;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBossRunManager
CreateBossRunManager:
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
	lea	rax, TaskDestructor_BossRunManager[rip]
	mov	edx, 8
	xor	r9d, r9d
	mov	r8d, 16384
	mov	QWORD PTR 32[rsp], rax
	mov	ebx, ecx
	lea	rcx, Task_BossRunManagerMain[rip]
	movzx	ebp, bl
	movzx	edi, bl
	call	TaskCreate
	xor	edx, edx
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBossCameraYClamps[rip]
	mov	WORD PTR 5[rsi], dx
	mov	BYTE PTR 4[rsi], bl
	movd	xmm0, DWORD PTR [rax+rbp*4]
	mov	rax, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	pextrw	edx, xmm0, 0
	movd	DWORD PTR [rsi], xmm0
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	pextrw	edx, xmm0, 1
	mov	WORD PTR [rax], dx
	test	bl, bl
	jne	.L351
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	call	Player_DisableInputAndBossTimer
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	sub	edi, 1
	mov	eax, 1280
	lea	rdx, gUnknown_080D87E6[rip]
	movsx	rdi, edi
	mov	r8d, DWORD PTR 12[rcx]
	movq	xmm2, QWORD PTR 12[rcx]
	mov	WORD PTR 24[rcx], ax
	movzx	eax, WORD PTR [rdx+rdi*4]
	movzx	edx, WORD PTR 2[rdx+rbp*4]
	sar	r8d, 8
	movdqu	xmm0, xmm2
	movd	xmm1, eax
	psrad	xmm0, 8
	movd	xmm3, edx
	sub	eax, r8d
	mov	r8d, DWORD PTR 16[rcx]
	punpckldq	xmm1, xmm3
	sal	eax, 8
	psubd	xmm1, xmm0
	movq	xmm0, QWORD PTR .LC10[rip]
	sar	r8d, 8
	sub	edx, r8d
	sal	edx, 8
	paddd	xmm1, xmm0
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	paddd	xmm2, xmm0
	movq	QWORD PTR 12[rcx], xmm2
	movq	xmm2, QWORD PTR [rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR [rax], xmm2
	movq	xmm2, QWORD PTR 32[rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR 32[rax], xmm2
	movq	xmm2, QWORD PTR 16[rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR 16[rax], xmm2
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L347
	movq	xmm1, QWORD PTR [rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR [rax], xmm1
.L347:
	sub	BYTE PTR 4[rsi], 1
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSuperEggRoboZ
	.def	CreateSuperEggRoboZ;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSuperEggRoboZ
CreateSuperEggRoboZ:
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
	movups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	movups	XMMWORD PTR 80[rsp], xmm7
	.seh_savexmm	xmm7, 80
	movups	XMMWORD PTR 96[rsp], xmm8
	.seh_savexmm	xmm8, 96
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	ecx, -11250
	mov	r8d, 7937
	lea	r13, gUnknown_080D8840[rip]
	mov	r15d, 600
	mov	WORD PTR [rax], cx
	lea	r14, 4[r13]
	mov	WORD PTR 4[rax], r8w
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
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_SuperEggRoboZMain[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	mov	rdx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR .refptr.gPlayerLimbsPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	lea	rax, TaskDestructor_SuperEggRoboZMain[rip]
	mov	edx, 432
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	ecx, 32
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	DWORD PTR 14[rbx], 33554792
	cmp	BYTE PTR [rax], 1
	mov	DWORD PTR 20[rbx], 30
	sbb	edx, edx
	and	edx, 2
	add	edx, 6
	cmp	BYTE PTR [rax], 1
	sbb	eax, eax
	xor	r9d, r9d
	mov	BYTE PTR 8[rbx], dl
	xor	edi, edi
	and	eax, 2
	mov	WORD PTR 11[rbx], r9w
	add	eax, 4
	mov	BYTE PTR 9[rbx], al
	mov	BYTE PTR 10[rbx], al
	mov	rax, QWORD PTR .LC12[rip]
	mov	QWORD PTR [rbx], rax
	call	VramMalloc
	xor	r9d, r9d
	mov	r8d, 16512
	mov	edx, 464
	mov	QWORD PTR 72[rbx], rax
	mov	rsi, rax
	lea	rax, TaskDestructor_SuperEggRoboZTowers[rip]
	lea	rcx, Task_SuperEggRoboZTowersMain[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r10d, r10d
	mov	ecx, 47
	mov	rbp, QWORD PTR 24[rax]
	mov	QWORD PTR 384[rbp], rsi
	mov	rsi, rbp
	mov	QWORD PTR 456[rbp], rbx
	mov	WORD PTR 449[rbp], r10w
	mov	BYTE PTR 451[rbp], 0
	call	VramMalloc
	movd	xmm6, DWORD PTR .LC14[rip]
	movd	xmm8, DWORD PTR .LC15[rip]
	mov	QWORD PTR 48[rsp], rax
	add	rax, 480
	movzx	r12d, WORD PTR .LC16[rip]
	mov	QWORD PTR 56[rsp], rax
	movd	xmm7, DWORD PTR .LC17[rip]
.L354:
	mov	eax, DWORD PTR 0[r13+rdi*8]
	mov	rcx, rsi
	mov	QWORD PTR 416[rbp+rdi*8], 0
	sal	eax, 8
	mov	DWORD PTR 392[rbp+rdi*8], eax
	mov	eax, DWORD PTR [r14+rdi*8]
	sal	eax, 8
	mov	DWORD PTR 396[rbp+rdi*8], eax
	mov	rax, QWORD PTR 48[rsp]
	mov	WORD PTR 440[rbp+rdi*2], r15w
	add	r15w, 300
	mov	BYTE PTR 446[rbp+rdi], 0
	add	rdi, 1
	mov	QWORD PTR 8[rsi], rax
	mov	eax, 1792
	mov	WORD PTR 42[rsi], ax
	xor	eax, eax
	mov	WORD PTR 36[rsi], ax
	xor	eax, eax
	mov	WORD PTR 44[rsi], ax
	mov	WORD PTR 48[rsi], r12w
	mov	BYTE PTR 50[rsi], 16
	mov	BYTE PTR 53[rsi], 0
	mov	DWORD PTR 56[rsi], -1
	mov	DWORD PTR 32[rsi], 4096
	movd	DWORD PTR 38[rsi], xmm6
	movd	DWORD PTR 16[rsi], xmm8
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 56[rsp]
	xor	edx, edx
	mov	BYTE PTR 114[rsi], 16
	mov	WORD PTR 108[rsi], dx
	lea	rcx, 64[rsi]
	sub	rsi, -128
	mov	QWORD PTR -56[rsi], rax
	mov	eax, 1792
	mov	WORD PTR -22[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	mov	WORD PTR -16[rsi], r12w
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -8[rsi], -1
	mov	DWORD PTR -32[rsi], 4096
	movd	DWORD PTR -26[rsi], xmm6
	movd	DWORD PTR -48[rsi], xmm7
	call	UpdateSpriteAnimation
	cmp	rdi, 3
	jne	.L354
	mov	edx, 512
	mov	eax, 512
	mov	BYTE PTR 60[rbx], 0
	xor	esi, esi
	mov	ecx, 360
	mov	WORD PTR 44[rbx], dx
	xor	edi, edi
	mov	ebp, 20
	mov	WORD PTR 48[rbx], cx
	mov	ecx, 64
	xor	r13d, r13d
	xor	r14d, r14d
	mov	WORD PTR 40[rbx], ax
	mov	r15d, 200
	mov	QWORD PTR 24[rbx], 0
	mov	BYTE PTR 62[rbx], 0
	mov	BYTE PTR 64[rbx], 0
	mov	BYTE PTR 66[rbx], 0
	mov	DWORD PTR 52[rbx], 0
	mov	DWORD PTR 214[rbx], 0
	call	VramMalloc
	xor	r8d, r8d
	mov	BYTE PTR 61[rbx], 0
	mov	r9d, 512
	mov	r10d, 512
	mov	r11d, 720
	mov	BYTE PTR 63[rbx], 0
	mov	ecx, 64
	mov	WORD PTR 212[rbx], r8w
	mov	WORD PTR 42[rbx], r9w
	mov	WORD PTR 46[rbx], r10w
	mov	WORD PTR 50[rbx], r11w
	mov	QWORD PTR 184[rbx], rax
	mov	DWORD PTR 192[rbx], 46071808
	mov	DWORD PTR 218[rbx], 1728
	mov	WORD PTR 224[rbx], r12w
	mov	BYTE PTR 226[rbx], 16
	mov	BYTE PTR 229[rbx], 0
	mov	DWORD PTR 232[rbx], -1
	mov	DWORD PTR 208[rbx], 4096
	mov	QWORD PTR 32[rbx], 0
	mov	BYTE PTR 65[rbx], 0
	mov	BYTE PTR 67[rbx], 0
	mov	DWORD PTR 56[rbx], 0
	mov	DWORD PTR 294[rbx], 0
	call	VramMalloc
	movdqu	xmm0, XMMWORD PTR .LC22[rip]
	mov	DWORD PTR 272[rbx], 46137344
	lea	rcx, 336[rbx]
	mov	QWORD PTR 264[rbx], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 292[rbx], si
	lea	rdx, 49152[rax]
	add	rax, 40960
	mov	DWORD PTR 298[rbx], 1984
	mov	QWORD PTR 344[rbx], rdx
	mov	QWORD PTR 360[rbx], rax
	mov	WORD PTR 304[rbx], r12w
	mov	BYTE PTR 306[rbx], 16
	mov	BYTE PTR 309[rbx], 0
	mov	DWORD PTR 312[rbx], -1
	mov	DWORD PTR 288[rbx], 4096
	mov	QWORD PTR 80[rbx], 131072
	mov	DWORD PTR 88[rbx], 14271
	mov	WORD PTR 354[rbx], di
	mov	WORD PTR 396[rbx], bp
	mov	BYTE PTR 398[rbx], 0
	mov	WORD PTR 402[rbx], r13w
	movups	XMMWORD PTR 380[rbx], xmm0
	call	DrawBackground
	mov	ecx, 64
	mov	DWORD PTR 134[rbx], 0
	call	VramMalloc
	mov	DWORD PTR 112[rbx], 46202880
	mov	QWORD PTR 104[rbx], rax
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	WORD PTR 132[rbx], r14w
	mov	WORD PTR 6[rax], r15w
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	DWORD PTR 138[rbx], 1984
	or	WORD PTR [rax], 32
	mov	WORD PTR 144[rbx], r12w
	mov	BYTE PTR 146[rbx], 16
	mov	BYTE PTR 149[rbx], 0
	mov	DWORD PTR 152[rbx], -1
	mov	DWORD PTR 128[rbx], 12288
	movups	xmm6, XMMWORD PTR 64[rsp]
	movups	xmm7, XMMWORD PTR 80[rsp]
	movups	xmm8, XMMWORD PTR 96[rsp]
	add	rsp, 120
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804AE40
	.def	sub_804AE40;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804AE40
sub_804AE40:
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
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, WORD PTR 14[rcx]
	mov	rbx, rcx
	test	BYTE PTR 36[rbp], -128
	je	.L358
	test	ax, ax
	je	.L377
.L359:
	mov	r11d, 1
	mov	WORD PTR 14[rbx], r11w
.L357:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L358:
	test	ax, ax
	jne	.L378
	cmp	BYTE PTR 11[rcx], 0
	movzx	eax, BYTE PTR 18[rcx]
	je	.L362
	test	al, al
	jne	.L379
.L363:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L362:
	sub	eax, 1
	mov	BYTE PTR 18[rcx], al
	test	al, al
	je	.L380
	mov	edi, DWORD PTR [rcx]
	movzx	ecx, WORD PTR 16[rcx]
	mov	r12, QWORD PTR .refptr.gSineTable[rip]
	mov	esi, DWORD PTR 4[rbx]
	lea	r8d, 256[rcx]
	lea	edx, 48640[rdi]
	movsx	r8, r8d
	movsx	ecx, WORD PTR [r12+rcx*2]
	sar	edx, 8
	movsx	r8d, WORD PTR [r12+r8*2]
	lea	r9d, [r8+r8*4]
	lea	edi, [r8+r9*2]
	lea	r8d, [rcx+rcx*4]
	sar	edi, 14
	add	edi, edx
	lea	edx, 10240[rsi]
	lea	esi, [rcx+r8*2]
	sar	edx, 8
	sar	esi, 14
	add	esi, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	edi, DWORD PTR [rdx]
	sub	esi, DWORD PTR 4[rdx]
	movsx	edi, di
	cmp	al, 90
	ja	.L381
	je	.L382
.L367:
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	ecx, DWORD PTR [r8], 1663525
	add	ecx, 1013904223
	mov	edx, ecx
	mov	DWORD PTR [r8], ecx
	and	edx, 7
	cmp	al, 69
	ja	.L368
	mov	ecx, eax
	shr	cl
	movzx	ecx, cl
	lea	edx, 8[rdx+rcx]
	movzx	edx, dx
	cmp	al, 60
	ja	.L383
.L371:
	add	esi, 1
	movzx	ecx, WORD PTR 16[rbx]
	mov	r9d, edi
	mov	r8d, 6
	movsx	esi, si
	mov	DWORD PTR 40[rsp], 32
	mov	DWORD PTR 32[rsp], esi
	call	ScreenMask_CreateShape
	movzx	eax, BYTE PTR 18[rbx]
	imul	eax, eax, -91
	add	ax, 8192
.L376:
	lea	rcx, 80[rbx]
	mov	WORD PTR 84[rbx], ax
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateScreenFade
	.p2align 4,,10
	.p2align 3
.L377:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	esi, esi
	xor	edi, edi
	mov	WORD PTR 84[rcx], di
	mov	WORD PTR 4[rax], si
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L380:
	mov	ecx, 8192
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	WORD PTR 84[rbx], cx
	lea	rcx, 80[rbx]
	and	DWORD PTR [rax], -5
	call	UpdateScreenFade
	cmp	BYTE PTR 8[rbx], 5
	mov	r8d, 705
	mov	r9d, -256
	sbb	eax, eax
	mov	WORD PTR 114[rbx], r8w
	and	al, 36
	mov	WORD PTR 144[rbx], r9w
	add	ax, 360
	mov	WORD PTR 14[rbx], ax
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L379:
	mov	r10d, 8192
	mov	BYTE PTR 18[rcx], 120
	lea	rcx, 80[rcx]
	mov	WORD PTR 4[rcx], r10w
	call	UpdateScreenFade
	jmp	.L363
	.p2align 4,,10
	.p2align 3
.L368:
	movzx	eax, al
	mov	ecx, 116
	sub	ecx, eax
	mov	eax, ecx
	sar	eax, 2
	lea	edx, 30[rdx+rax]
	movzx	edx, dx
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L381:
	xor	ecx, ecx
	movsx	esi, si
	call	InitHBlankBgOffsets
	mov	r9d, edi
	mov	r8d, 160
	xor	ecx, ecx
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	movzx	edx, BYTE PTR 18[rbx]
	and	eax, 7
	mov	DWORD PTR 32[rsp], esi
	lea	edx, -720[0+rdx*8]
	and	edx, 248
	movsx	edx, BYTE PTR 1[r12+rdx*2]
	add	eax, edx
	xor	edx, edx
	movzx	eax, ax
	mov	DWORD PTR 40[rsp], eax
	call	sub_80075D0
	movzx	eax, BYTE PTR 18[rbx]
	sub	eax, 90
	imul	ax, ax, 273
	jmp	.L376
	.p2align 4,,10
	.p2align 3
.L383:
	mov	ecx, DWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rbx]
	mov	r8d, ecx
	add	eax, 48640
	sar	r8d, 8
	cmp	eax, r8d
	jle	.L371
	mov	r10d, DWORD PTR 4[rbx]
	lea	eax, -10[rdx]
	sal	eax, 8
	lea	r8d, 10240[r10]
	mov	r9d, r8d
	sub	r9d, eax
	cmp	ecx, r9d
	jl	.L371
	add	eax, r8d
	cmp	ecx, eax
	jg	.L371
	mov	rcx, rbp
	mov	DWORD PTR 60[rsp], edx
	call	Coll_DamagePlayer
	mov	edx, DWORD PTR 60[rsp]
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L382:
	mov	eax, 705
	mov	edx, -255
	mov	ecx, 261
	mov	WORD PTR 114[rbx], ax
	mov	WORD PTR 144[rbx], dx
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 18[rbx]
	jmp	.L367
.L378:
	sub	eax, 1
	mov	WORD PTR 14[rcx], ax
	test	ax, ax
	jne	.L357
	mov	BYTE PTR 18[rcx], 120
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_804AB24
	.def	Task_804AB24;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_804AB24
Task_804AB24:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 512
	movzx	edx, BYTE PTR 11[rbx]
	test	edx, edx
	je	.L385
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 3
	movsx	eax, WORD PTR [rcx+rdx*2]
	sar	eax, 7
	add	ax, 512
.L385:
	mov	WORD PTR 16[rbx], ax
	mov	rcx, rbx
	lea	rsi, sArmFuncs[rip]
	call	sub_804CA08
	call	sub_804AE40
	movzx	eax, BYTE PTR 60[rbx]
	xor	edx, edx
	mov	rcx, rbx
	call	[QWORD PTR [rsi+rax*8]]
	movzx	eax, BYTE PTR 61[rbx]
	mov	edx, 1
	mov	rcx, rbx
	call	[QWORD PTR [rsi+rax*8]]
	mov	rcx, rbx
	call	sub_804C5B8
	mov	eax, DWORD PTR [rbx]
	lea	edi, 48640[rax]
	mov	eax, DWORD PTR 4[rbx]
	sar	edi, 8
	lea	ebp, 10240[rax]
	sar	ebp, 8
	cmp	BYTE PTR 11[rbx], 0
	je	.L386
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
.L387:
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L407
.L389:
	mov	rcx, rbx
	call	sub_804CA70
	cmp	DWORD PTR 16[rsi], 47359
	jle	.L393
	cmp	DWORD PTR 12[rsi], 11016703
	jg	.L408
.L395:
	cmp	BYTE PTR 8[rbx], 0
	je	.L409
.L384:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L408:
	mov	rcx, rsi
	call	Coll_DamagePlayer
	movsx	eax, WORD PTR 20[rsi]
	test	eax, eax
	jle	.L396
	neg	eax
	mov	WORD PTR 20[rsi], ax
.L396:
	movzx	eax, WORD PTR 24[rsi]
	test	ax, ax
	jle	.L393
	neg	eax
	mov	WORD PTR 24[rsi], ax
	.p2align 4,,10
	.p2align 3
.L393:
	cmp	DWORD PTR 12[rsi], 11030527
	jle	.L395
	mov	rcx, rsi
	call	Coll_DamagePlayer
	movzx	eax, WORD PTR 20[rsi]
	test	ax, ax
	jle	.L399
	neg	eax
	mov	WORD PTR 20[rsi], ax
.L399:
	movzx	eax, WORD PTR 24[rsi]
	test	ax, ax
	jle	.L395
	neg	eax
	mov	WORD PTR 24[rsi], ax
	cmp	BYTE PTR 8[rbx], 0
	jne	.L384
	.p2align 4,,10
	.p2align 3
.L409:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	lea	rdi, Task_804AD68[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rdi
	mov	DWORD PTR 20[rbx], 255
	call	Player_DisableInputAndBossTimer_FinalBoss
	mov	eax, DWORD PTR 36[rsi]
	mov	DWORD PTR 100[rsi], 0
	mov	edx, eax
	or	edx, 2097152
	mov	DWORD PTR 36[rsi], edx
	test	al, 10
	jne	.L410
	xor	edi, edi
	xor	eax, eax
	mov	WORD PTR 24[rsi], di
.L402:
	mov	WORD PTR 20[rsi], ax
	xor	r11d, r11d
	mov	rax, QWORD PTR .LC26[rip]
	lea	r9, 225[rbx]
	mov	WORD PTR 22[rsi], r11w
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	xor	r8d, r8d
	mov	QWORD PTR 80[rbx], rax
	mov	r11d, DWORD PTR .LC9[rip]
	mov	DWORD PTR 88[rbx], 16319
.L404:
	movzx	edx, WORD PTR 40[rbx+r8*2]
	movq	xmm1, QWORD PTR 24[rbx+r8*8]
	lea	eax, 256[rdx]
	cdqe
	movsx	r10d, WORD PTR [rcx+rax*2]
	mov	eax, r10d
	sal	eax, 4
	sub	eax, r10d
	movsx	r10d, WORD PTR [rcx+rdx*2]
	sar	eax, 6
	mov	edx, r10d
	movd	xmm0, eax
	sal	edx, 4
	sub	edx, r10d
	mov	r10d, 60
	sar	edx, 6
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR 24[rbx+r8*8], xmm1
	mov	DWORD PTR 52[rbx+r8*4], r11d
	mov	BYTE PTR 60[rbx+r8], 7
	mov	WORD PTR 48[rbx+r8*2], r10w
	test	r8, r8
	je	.L403
	mov	edx, 704
	mov	ecx, -254
	mov	WORD PTR 274[rbx], dx
	mov	WORD PTR 304[rbx], cx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L386:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	lea	r13, 96[rbx]
	xor	r9d, r9d
	mov	edx, edi
	mov	r8d, ebp
	mov	rcx, r13
	mov	QWORD PTR 32[rsp], rsi
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	je	.L411
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, ebp
	mov	edx, edi
	mov	rcx, r13
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	je	.L412
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, ebp
	mov	edx, edi
	mov	rcx, r13
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L387
	movzx	eax, WORD PTR 20[rsi]
	test	ax, ax
	jle	.L387
	neg	eax
	mov	WORD PTR 20[rsi], ax
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L407:
	mov	edx, ebp
	sal	edi, 8
	sal	edx, 8
	mov	ecx, edi
	call	Player_UpdateHomingPosition
	jmp	.L389
	.p2align 4,,10
	.p2align 3
.L410:
	mov	ebp, 50
	mov	BYTE PTR 117[rsi], 5
	mov	eax, -512
	mov	WORD PTR 108[rsi], bp
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L412:
	mov	rcx, rbx
	call	Boss8_HitCockpit
	movzx	eax, WORD PTR 20[rsi]
	test	ax, ax
	jle	.L387
	mov	edx, eax
	neg	dx
	cmovs	eax, edx
	mov	WORD PTR 20[rsi], ax
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L403:
	mov	eax, 703
	add	r9, 80
	mov	BYTE PTR 224[rbx], 2
	mov	r8d, 1
	mov	WORD PTR 194[rbx], ax
	mov	BYTE PTR -80[r9], -1
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L411:
	mov	rcx, rbx
	call	Boss8_HitCockpit
	jmp	.L389
	.seh_endproc
	.p2align 4
	.globl	sub_804B2EC
	.def	sub_804B2EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804B2EC
sub_804B2EC:
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
	movzx	ebp, dl
	mov	rbx, rcx
	cmp	BYTE PTR 62[rcx+rbp], 0
	jne	.L421
	lea	rdx, 2[rbp]
	lea	rax, gUnknown_080D8888[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	esi, DWORD PTR 8[rcx+rdx*8]
	add	esi, DWORD PTR [rcx]
	movzx	ecx, WORD PTR [rax+rbp*4]
	movzx	eax, WORD PTR 2[rax+rbp*4]
	mov	edi, DWORD PTR 12[rbx+rdx*8]
	add	edi, DWORD PTR 4[rbx]
	add	edi, eax
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	add	esi, ecx
	mov	r13, QWORD PTR 160[r12]
	cmp	BYTE PTR [rax], 0
	jne	.L434
	test	BYTE PTR 36[r12], -128
	jne	.L417
.L437:
	cmp	DWORD PTR 80[r13], -1
	je	.L417
	mov	eax, DWORD PTR 12[r12]
	mov	edx, DWORD PTR 16[r12]
	sub	eax, esi
	sub	edx, edi
	sar	eax, 8
	sar	edx, 8
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 375
	jle	.L435
.L417:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L421
	cmp	DWORD PTR 96[rax], -1
	je	.L421
	sub	esi, DWORD PTR [rax]
	sub	edi, DWORD PTR 4[rax]
	sar	esi, 8
	sar	edi, 8
	imul	esi, esi
	imul	edi, edi
	add	esi, edi
	cmp	esi, 375
	jle	.L436
.L421:
	xor	eax, eax
.L413:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L434:
	mov	edx, edi
	mov	ecx, esi
	call	Player_UpdateHomingPosition
	test	BYTE PTR 36[r12], -128
	jne	.L417
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L436:
	movzx	eax, BYTE PTR 9[rbx+rbp]
	test	al, al
	je	.L422
	sub	eax, 1
	mov	BYTE PTR 9[rbx+rbp], al
	test	al, 1
	je	.L423
	mov	ecx, 143
	call	m4aSongNumStart
.L424:
	mov	BYTE PTR 62[rbx+rbp], 64
	movzx	eax, BYTE PTR 9[rbx+rbp]
.L422:
	mov	rdx, QWORD PTR .refptr.gCheeseTarget[rip]
	test	al, al
	sete	al
	mov	rdx, QWORD PTR 8[rdx]
	mov	BYTE PTR 61[rdx], 0
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L435:
	movzx	eax, BYTE PTR 9[rbx+rbp]
	test	al, al
	je	.L418
	sub	eax, 1
	mov	BYTE PTR 9[rbx+rbp], al
	test	al, 1
	je	.L419
	mov	ecx, 143
	call	m4aSongNumStart
.L420:
	mov	BYTE PTR 62[rbx+rbp], 64
	movzx	eax, BYTE PTR 9[rbx+rbp]
.L418:
	test	al, al
	sete	al
	neg	WORD PTR 20[r12]
	neg	WORD PTR 22[r12]
	neg	WORD PTR 24[r12]
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L423:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L419:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L420
	.seh_endproc
	.p2align 4
	.def	sub_804BE6C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804BE6C
sub_804BE6C:
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
	movups	XMMWORD PTR 112[rsp], xmm6
	.seh_savexmm	xmm6, 112
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gSineTable[rip]
	movzx	ebx, dl
	movzx	r8d, dl
	mov	r14, rcx
	lea	r15, [rcx+rbx*2]
	lea	r9, 16[rcx+rbx*8]
	movzx	eax, WORD PTR 40[r15]
	movq	xmm0, QWORD PTR 8[r9]
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	ecx, WORD PTR 0[r13+rdx*2]
	movsx	edx, WORD PTR 0[r13+rax*2]
	lea	eax, [rcx+rcx*4]
	lea	r10d, [rdx+rdx*4]
	sar	eax, 9
	sar	r10d, 9
	movd	xmm1, eax
	movd	xmm3, r10d
	punpckldq	xmm1, xmm3
	psubd	xmm0, xmm1
	movq	QWORD PTR 8[r9], xmm0
	sub	WORD PTR 48[r15], 1
	jne	.L439
	lea	rax, gUnknown_080D8888[rip]
	movq	xmm1, QWORD PTR [r14]
	lea	r12, 12[r14]
	mov	edi, 1
	movzx	esi, WORD PTR [rax+rbx*4]
	movzx	eax, WORD PTR 2[rax+rbx*4]
	mov	r9d, -32
	mov	ebp, edi
	paddd	xmm0, xmm1
	mov	QWORD PTR 48[rsp], r12
	mov	r12, r14
	movd	xmm4, eax
	mov	eax, ecx
	movd	xmm6, esi
	mov	QWORD PTR 56[rsp], rbx
	sal	eax, 4
	punpckldq	xmm6, xmm4
	mov	ebx, r9d
	sub	eax, ecx
	mov	ecx, edx
	paddd	xmm6, xmm0
	sal	ecx, 4
	sar	eax, 6
	sub	ecx, edx
	movd	xmm0, eax
	lea	rax, 64[rsp]
	sar	ecx, 6
	mov	QWORD PTR 40[rsp], rax
	movd	xmm5, ecx
	punpckldq	xmm0, xmm5
	psubd	xmm6, xmm0
	psrad	xmm6, 8
.L440:
	mov	r14d, ebp
	mov	edi, 96
	lea	esi, 32[rbx]
	neg	r14d
.L442:
	movzx	edx, WORD PTR 40[r15]
	movdqu	xmm1, xmm6
	lea	ecx, 768[rdx]
	add	dx, 512
	and	ecx, 1023
	and	dx, 1023
	lea	eax, 256[rcx]
	mov	WORD PTR 80[rsp], dx
	mov	rdx, QWORD PTR 48[rsp]
	cdqe
	movsx	eax, WORD PTR 0[r13+rax*2]
	imul	eax, r14d
	movd	xmm0, eax
	movsx	eax, WORD PTR 0[r13+rcx*2]
	mov	ecx, 18
	mov	WORD PTR 96[rsp], cx
	mov	rcx, QWORD PTR 40[rsp]
	imul	eax, r14d
	cmp	ebp, -1
	movd	xmm2, eax
	lea	eax, [rsi+rdi]
	cmove	eax, edi
	punpckldq	xmm0, xmm2
	add	edi, 96
	psrad	xmm0, 11
	psubd	xmm1, xmm0
	mov	WORD PTR 82[rsp], ax
	mov	rax, QWORD PTR 72[r12]
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 3036541878272
	mov	QWORD PTR 72[rsp], rax
	movq	QWORD PTR 88[rsp], xmm1
	call	CreateBossParticleStatic
	cmp	di, 384
	jne	.L442
	add	ebx, 32
	sub	ebp, 1
	cmp	bx, 64
	jne	.L440
	mov	rbx, QWORD PTR 56[rsp]
	mov	edx, 300
	mov	BYTE PTR 60[r12+rbx], 0
	mov	WORD PTR 48[r15], dx
.L438:
	movups	xmm6, XMMWORD PTR 112[rsp]
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
.L439:
	mov	edx, r8d
	mov	rcx, r14
	call	sub_804B2EC
	test	al, al
	je	.L438
	mov	DWORD PTR 52[r14+rbx*4], -50266496
	mov	eax, 60
	mov	BYTE PTR 60[r14+rbx], 7
	mov	WORD PTR 48[r15], ax
	jmp	.L438
	.seh_endproc
	.globl	sArmPalettes
	.section .rdata,"dr"
	.align 32
sArmPalettes:
	.word	5408
	.word	32767
	.word	29530
	.word	26294
	.word	22033
	.word	18796
	.word	15559
	.word	12322
	.word	0
	.word	2333
	.word	213
	.word	78
	.word	575
	.word	831
	.word	14310
	.word	16160
	.word	30431
	.word	16408
	.word	17593
	.word	19802
	.word	22011
	.word	23196
	.word	25406
	.word	26591
	.word	32767
	.word	31480
	.word	32570
	.word	32700
	.word	32216
	.word	31960
	.word	25630
	.word	24799
	.align 32
sArmFuncs:
	.quad	sub_804B43C
	.quad	sub_804B594
	.quad	sub_804B734
	.quad	sub_804B984
	.quad	sub_804BC44
	.quad	sub_804BE6C
	.quad	sub_804BAC0
	.quad	sub_804C240
	.globl	gUnknown_080D8888
	.align 8
gUnknown_080D8888:
	.word	-17408
	.word	28160
	.word	-24064
	.word	28160
	.globl	sTowerStateCallbacks
	.align 32
sTowerStateCallbacks:
	.quad	sub_8049F1C
	.quad	sub_804A070
	.quad	sub_804A1C0
	.quad	sub_804A398
	.quad	sub_804A53C
	.globl	sTowerPiecesTileInfo
	.align 16
sTowerPiecesTileInfo:
	.long	0
	.word	701
	.byte	0
	.space 1
	.long	0
	.word	702
	.byte	0
	.space 1
	.globl	gUnknown_080D8858
	.align 8
gUnknown_080D8858:
	.ascii "\1\1"
	.ascii "\2<"
	.ascii "\3x"
	.ascii "\4\201"
	.ascii "\0\264"
	.ascii "\0\0"
	.globl	gUnknown_080D8840
	.align 16
gUnknown_080D8840:
	.long	42869
	.long	287
	.long	42943
	.long	287
	.long	43017
	.long	287
	.globl	gUnknown_080D8808
	.align 32
gUnknown_080D8808:
	.long	5376
	.long	-4512
	.long	12864
	.long	-5952
	.long	17088
	.long	-2688
	.long	22080
	.long	-3552
	.long	28128
	.long	-4512
	.long	37058
	.long	-7394
	.long	42240
	.long	-3648
	.globl	gUnknown_080D87E6
	.align 32
gUnknown_080D87E6:
	.word	5804
	.word	177
	.word	13292
	.word	177
	.word	17420
	.word	177
	.word	22508
	.word	177
	.word	28585
	.word	177
	.word	-28052
	.word	201
	.word	-23936
	.word	225
	.word	-23936
	.word	225
	.globl	sBossRunCameraYTriggers
	.align 8
sBossRunCameraYTriggers:
	.word	6400
	.word	13888
	.word	18016
	.word	23104
	.word	29152
	.word	-27456
	.word	-22445
	.align 8
.LC0:
	.word	707
	.word	0
	.word	768
	.word	256
	.align 8
.LC5:
	.long	1280
	.long	1
	.align 4
.LC6:
	.word	256
	.word	256
	.align 4
.LC9:
	.word	-384
	.word	-768
	.align 8
.LC10:
	.long	-120
	.long	-120
	.align 8
.LC12:
	.long	10976256
	.long	94720
	.align 4
.LC14:
	.word	80
	.word	80
	.align 4
.LC15:
	.word	0
	.word	701
	.align 2
.LC16:
	.byte	0
	.byte	-1
	.align 4
.LC17:
	.word	0
	.word	702
	.align 16
.LC22:
	.word	0
	.word	0
	.word	368
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 8
.LC26:
	.word	0
	.word	1
	.word	0
	.word	16
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleStatic;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateZoneBoss;	.scl	2;	.type	32;	.endef
	.def	sub_8039F50;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayVolumeControl;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayImmInit;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_CreateShape;	.scl	2;	.type	32;	.endef
	.def	InitHBlankBgOffsets;	.scl	2;	.type	32;	.endef
	.def	sub_80075D0;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer_FinalBoss;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
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
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gTileInfoBossScrews, "dr"
	.globl	.refptr.gTileInfoBossScrews
	.linkonce	discard
.refptr.gTileInfoBossScrews:
	.quad	gTileInfoBossScrews
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gMPlayInfo_SE3, "dr"
	.globl	.refptr.gMPlayInfo_SE3
	.linkonce	discard
.refptr.gMPlayInfo_SE3:
	.quad	gMPlayInfo_SE3
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gBossRingsRespawnCount, "dr"
	.globl	.refptr.gBossRingsRespawnCount
	.linkonce	discard
.refptr.gBossRingsRespawnCount:
	.quad	gBossRingsRespawnCount
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gBossRingsShallRespawn, "dr"
	.globl	.refptr.gBossRingsShallRespawn
	.linkonce	discard
.refptr.gBossRingsShallRespawn:
	.quad	gBossRingsShallRespawn
	.section	.rdata$.refptr.gWorldSpeedX, "dr"
	.globl	.refptr.gWorldSpeedX
	.linkonce	discard
.refptr.gWorldSpeedX:
	.quad	gWorldSpeedX
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gBossCameraClampYUpper, "dr"
	.globl	.refptr.gBossCameraClampYUpper
	.linkonce	discard
.refptr.gBossCameraClampYUpper:
	.quad	gBossCameraClampYUpper
	.section	.rdata$.refptr.gBossCameraYClamps, "dr"
	.globl	.refptr.gBossCameraYClamps
	.linkonce	discard
.refptr.gBossCameraYClamps:
	.quad	gBossCameraYClamps
	.section	.rdata$.refptr.gBossCameraClampYLower, "dr"
	.globl	.refptr.gBossCameraClampYLower
	.linkonce	discard
.refptr.gBossCameraClampYLower:
	.quad	gBossCameraClampYLower
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
