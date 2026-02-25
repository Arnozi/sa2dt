	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Coll_Player_Entity_RectIntersection
	.def	Coll_Player_Entity_RectIntersection;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Entity_RectIntersection
Coll_Player_Entity_RectIntersection:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	xor	eax, eax
	cmp	DWORD PTR 56[rcx], -1
	mov	rsi, QWORD PTR 64[rsp]
	mov	ebx, edx
	je	.L1
	mov	eax, DWORD PTR 36[r9]
	and	eax, 128
	jne	.L7
	movsx	r10d, BYTE PTR 60[rcx]
	mov	r11d, DWORD PTR 12[r9]
	add	r10d, edx
	movsx	edx, BYTE PTR [rsi]
	sar	r11d, 8
	add	edx, r11d
	cmp	r10d, edx
	jg	.L3
	movsx	edi, BYTE PTR 62[rcx]
	add	ebx, edi
	cmp	edx, ebx
	jg	.L10
.L4:
	mov	r9d, DWORD PTR 16[r9]
	movsx	r10d, BYTE PTR 61[rcx]
	movsx	edx, BYTE PTR 1[rsi]
	sar	r9d, 8
	add	r10d, r8d
	add	edx, r9d
	cmp	r10d, edx
	jg	.L5
	movsx	ecx, BYTE PTR 63[rcx]
	add	ecx, r8d
	cmp	edx, ecx
	jle	.L8
	cmp	r10d, edx
	je	.L5
.L1:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xor	eax, eax
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	cmp	r10d, edx
	jne	.L1
	.p2align 4,,10
	.p2align 3
.L3:
	movsx	edx, BYTE PTR 2[rsi]
	add	edx, r11d
	cmp	r10d, edx
	jg	.L1
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movsx	eax, BYTE PTR 3[rsi]
	add	eax, r9d
	cmp	r10d, eax
	setle	al
	movzx	eax, al
	sal	eax, 19
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L8:
	mov	eax, 524288
	jmp	.L1
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_PlatformCrumbling
	.def	Coll_Player_PlatformCrumbling;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_PlatformCrumbling
Coll_Player_PlatformCrumbling:
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
	movsx	r11d, BYTE PTR 27[r9]
	mov	rax, rcx
	movsx	ecx, BYTE PTR 26[r9]
	cmp	DWORD PTR 56[rax], -1
	je	.L24
	mov	r10d, DWORD PTR 36[r9]
	test	r10b, -128
	jne	.L24
	mov	ebx, r10d
	and	ebx, 8
	je	.L15
	xor	ebx, ebx
	cmp	QWORD PTR 64[r9], rax
	je	.L33
.L15:
	mov	esi, ecx
	movsx	ebp, BYTE PTR 60[rax]
	neg	esi
	movsx	esi, sil
	add	edx, ebp
	mov	r10d, esi
	sal	edx, 8
	sal	r10d, 8
	add	r10d, DWORD PTR 12[r9]
	cmp	edx, r10d
	jle	.L34
.L16:
	sub	ecx, esi
	sal	ecx, 8
	add	ecx, r10d
	cmp	edx, ecx
	jle	.L17
.L18:
	test	ebx, ebx
	je	.L24
	mov	eax, DWORD PTR 36[r9]
	test	al, 8
	jne	.L24
	and	eax, -33
	or	eax, 2
	mov	DWORD PTR 36[r9], eax
	.p2align 4,,10
	.p2align 3
.L24:
	xor	eax, eax
.L11:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	movsx	edi, BYTE PTR 62[rax]
	sub	edi, ebp
	sal	edi, 8
	add	edi, edx
	cmp	r10d, edi
	jg	.L35
.L17:
	mov	ecx, r11d
	movsx	r12d, BYTE PTR 61[rax]
	mov	edi, DWORD PTR 16[r9]
	neg	ecx
	movsx	ecx, cl
	lea	ebp, [r12+r8]
	mov	edx, ecx
	mov	esi, ebp
	sal	edx, 8
	sal	esi, 8
	add	edx, edi
	cmp	esi, edx
	jg	.L19
	movsx	r10d, BYTE PTR 63[rax]
	sub	r10d, r12d
	sal	r10d, 8
	add	r10d, esi
	cmp	edx, r10d
	jle	.L20
	cmp	esi, edx
	jne	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	movsx	r10d, r11b
	sub	r10d, ecx
	mov	ecx, r10d
	sal	ecx, 8
	add	edx, ecx
	cmp	esi, edx
	jg	.L18
.L20:
	cmp	WORD PTR 22[r9], 0
	js	.L18
	or	DWORD PTR 36[r9], 8
	test	ebx, ebx
	jne	.L21
	mov	BYTE PTR 40[r9], 0
.L21:
	xor	edx, edx
	mov	QWORD PTR 64[r9], rax
	sub	ebp, r11d
	mov	WORD PTR 22[r9], dx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	je	.L23
	movsx	eax, BYTE PTR 63[rax]
	add	r8d, eax
	lea	ebp, [r8+r11]
.L23:
	movzx	edi, dil
	sal	ebp, 8
	mov	eax, 8
	add	edi, ebp
	mov	DWORD PTR 16[r9], edi
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L35:
	cmp	edx, r10d
	jne	.L18
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L33:
	and	r10d, -9
	mov	ebx, 1
	mov	DWORD PTR 36[r9], r10d
	jmp	.L15
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Entity_HitboxN
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Entity_HitboxN
Coll_Player_Entity_HitboxN:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10d, DWORD PTR 72[rsp]
	mov	r11d, edx
	mov	rdx, QWORD PTR 64[rsp]
	mov	eax, DWORD PTR 36[rdx]
	and	eax, 128
	jne	.L41
	movsx	r9, r9w
	lea	rcx, [rcx+r9*8]
	cmp	DWORD PTR 56[rcx], -1
	je	.L36
	mov	r9, QWORD PTR 160[rdx]
	movsx	r10, r10w
	lea	rbx, [r9+r10*8]
	cmp	DWORD PTR 72[rbx], -1
	je	.L36
	mov	esi, DWORD PTR 12[rdx]
	movsx	r10d, BYTE PTR 60[rcx]
	movsx	r9d, BYTE PTR 76[rbx]
	sar	esi, 8
	add	r10d, r11d
	add	r9d, esi
	cmp	r10d, r9d
	jle	.L43
.L38:
	movsx	r9d, BYTE PTR 78[rbx]
	add	r9d, esi
	cmp	r10d, r9d
	jg	.L36
.L39:
	mov	r10d, DWORD PTR 16[rdx]
	movsx	r9d, BYTE PTR 61[rcx]
	movsx	edx, BYTE PTR 77[rbx]
	sar	r10d, 8
	add	r9d, r8d
	add	edx, r10d
	cmp	r9d, edx
	jle	.L44
.L40:
	movsx	eax, BYTE PTR 79[rbx]
	add	eax, r10d
	cmp	r9d, eax
	setle	al
	movzx	eax, al
.L36:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	xor	eax, eax
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	movsx	edi, BYTE PTR 62[rcx]
	add	r11d, edi
	cmp	r9d, r11d
	jle	.L39
	cmp	r10d, r9d
	jne	.L36
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L44:
	movsx	ecx, BYTE PTR 63[rcx]
	add	ecx, r8d
	cmp	edx, ecx
	jle	.L42
	cmp	r9d, edx
	jne	.L36
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L42:
	mov	eax, 1
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	Coll_Cheese_Enemy_Attack
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Cheese_Enemy_Attack
Coll_Cheese_Enemy_Attack:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR 56[rsp]
	mov	eax, DWORD PTR 36[rax]
	mov	r10d, edx
	and	eax, 128
	jne	.L50
	movsx	r9, r9w
	lea	rcx, [rcx+r9*8]
	cmp	DWORD PTR 56[rcx], -1
	je	.L45
	mov	rdx, QWORD PTR .refptr.gCheese[rip]
	mov	rdx, QWORD PTR [rdx]
	test	rdx, rdx
	je	.L45
	cmp	DWORD PTR 96[rdx], -1
	je	.L45
	mov	ebx, DWORD PTR [rdx]
	movsx	r11d, BYTE PTR 60[rcx]
	movsx	r9d, BYTE PTR 100[rdx]
	sar	ebx, 8
	add	r11d, r10d
	add	r9d, ebx
	cmp	r11d, r9d
	jle	.L55
.L47:
	movsx	r9d, BYTE PTR 102[rdx]
	add	r9d, ebx
	cmp	r11d, r9d
	jg	.L45
.L48:
	mov	r11d, DWORD PTR 4[rdx]
	movsx	r10d, BYTE PTR 61[rcx]
	movsx	r9d, BYTE PTR 101[rdx]
	sar	r11d, 8
	add	r10d, r8d
	add	r9d, r11d
	cmp	r10d, r9d
	jle	.L56
.L49:
	movsx	eax, BYTE PTR 103[rdx]
	add	eax, r11d
	cmp	r10d, eax
	setle	al
	movzx	eax, al
.L45:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	xor	eax, eax
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	movsx	esi, BYTE PTR 62[rcx]
	add	r10d, esi
	cmp	r9d, r10d
	jle	.L48
	cmp	r11d, r9d
	jne	.L45
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L56:
	movsx	ecx, BYTE PTR 63[rcx]
	add	ecx, r8d
	cmp	r9d, ecx
	jle	.L51
	cmp	r10d, r9d
	jne	.L45
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L51:
	mov	eax, 1
	jmp	.L45
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_ItemBox
	.def	Coll_Player_ItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_ItemBox
Coll_Player_ItemBox:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rcx
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 128
	jne	.L62
	mov	r10, QWORD PTR 160[rcx]
	cmp	DWORD PTR 80[r10], -1
	je	.L57
	cmp	DWORD PTR 56[r9], -1
	je	.L57
	mov	esi, DWORD PTR 12[rcx]
	movsx	ebx, BYTE PTR 60[r9]
	movsx	r11d, BYTE PTR 84[r10]
	sar	esi, 8
	add	ebx, edx
	add	r11d, esi
	cmp	ebx, r11d
	jg	.L59
	movsx	edi, BYTE PTR 62[r9]
	add	edx, edi
	cmp	r11d, edx
	jle	.L60
	cmp	ebx, r11d
	je	.L59
.L57:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	xor	eax, eax
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	movsx	edx, BYTE PTR 86[r10]
	add	edx, esi
	cmp	ebx, edx
	jg	.L57
.L60:
	mov	ecx, DWORD PTR 16[rcx]
	movsx	r11d, BYTE PTR 61[r9]
	movsx	edx, BYTE PTR 85[r10]
	sar	ecx, 8
	add	r11d, r8d
	add	edx, ecx
	cmp	r11d, edx
	jg	.L61
	movsx	r9d, BYTE PTR 63[r9]
	add	r8d, r9d
	cmp	edx, r8d
	jle	.L63
	cmp	r11d, edx
	jne	.L57
	.p2align 4,,10
	.p2align 3
.L61:
	movsx	eax, BYTE PTR 87[r10]
	add	eax, ecx
	cmp	r11d, eax
	setle	al
	movzx	eax, al
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L63:
	mov	eax, 1
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Enemy_AdjustSpeed
	.def	Coll_Player_Enemy_AdjustSpeed;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Enemy_AdjustSpeed
Coll_Player_Enemy_AdjustSpeed:
	.seh_endprologue
	test	BYTE PTR 39[rcx], 2
	je	.L65
	mov	BYTE PTR 117[rcx], 8
	mov	DWORD PTR 20[rcx], 0
.L66:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 16384
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L67
	cmp	al, 28
	je	.L73
	cmp	al, 29
	je	.L67
.L69:
	movzx	eax, WORD PTR 22[rcx]
	test	ax, ax
	jle	.L66
	neg	eax
	mov	WORD PTR 22[rcx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 16384
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L69
.L67:
	movzx	eax, WORD PTR 20[rcx]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	neg	WORD PTR 22[rcx]
	mov	edx, DWORD PTR 56[rdx]
	sar	ax
	cwde
	neg	eax
	sal	edx, 8
	sub	eax, edx
	mov	WORD PTR 20[rcx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 16384
	ret
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Boss_Attack
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Boss_Attack
Coll_Player_Boss_Attack:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r10d, edx
	mov	rdx, QWORD PTR 96[rsp]
	mov	eax, DWORD PTR 36[rdx]
	and	eax, 128
	jne	.L80
	movsx	r9, r9w
	lea	rcx, [rcx+r9*8]
	cmp	DWORD PTR 56[rcx], -1
	je	.L74
	mov	rbx, QWORD PTR 160[rdx]
	cmp	DWORD PTR 80[rbx], -1
	je	.L74
	mov	esi, DWORD PTR 12[rdx]
	movsx	r11d, BYTE PTR 60[rcx]
	movsx	r9d, BYTE PTR 84[rbx]
	sar	esi, 8
	add	r11d, r10d
	add	r9d, esi
	cmp	r11d, r9d
	jle	.L81
.L76:
	movsx	r9d, BYTE PTR 86[rbx]
	add	r9d, esi
	cmp	r11d, r9d
	jg	.L74
.L77:
	mov	r11d, DWORD PTR 16[rdx]
	movsx	r10d, BYTE PTR 61[rcx]
	movsx	r9d, BYTE PTR 85[rbx]
	sar	r11d, 8
	add	r10d, r8d
	add	r9d, r11d
	cmp	r10d, r9d
	jle	.L82
.L78:
	movsx	ecx, BYTE PTR 87[rbx]
	add	ecx, r11d
	cmp	r10d, ecx
	jle	.L79
.L74:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	movsx	edi, BYTE PTR 62[rcx]
	add	r10d, edi
	cmp	r9d, r10d
	jle	.L77
	cmp	r11d, r9d
	jne	.L74
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L79:
	mov	rcx, rdx
	call	Coll_Player_Enemy_AdjustSpeed
	mov	eax, 1
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L82:
	movsx	ecx, BYTE PTR 63[rcx]
	add	ecx, r8d
	cmp	r9d, ecx
	jle	.L79
	cmp	r10d, r9d
	jne	.L74
	jmp	.L78
	.seh_endproc
	.p2align 4
	.globl	Coll_DamagePlayer
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_DamagePlayer
Coll_DamagePlayer:
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
	xor	eax, eax
	cmp	WORD PTR 50[rcx], 0
	mov	rbx, rcx
	jg	.L83
	cmp	WORD PTR 48[rcx], 0
	jg	.L83
	mov	eax, 120
	mov	WORD PTR 48[rcx], ax
	mov	eax, DWORD PTR 36[rcx]
	test	eax, 16777216
	jne	.L96
.L85:
	movzx	edx, BYTE PTR 59[rbx]
	mov	BYTE PTR 117[rbx], 9
	mov	ecx, edx
	and	ecx, 127
	and	edx, 9
	mov	BYTE PTR 59[rbx], cl
	jne	.L86
	mov	rdi, QWORD PTR .refptr.gRingCount[rip]
	movzx	esi, WORD PTR [rdi]
	test	si, si
	jne	.L97
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], 64
	jne	.L90
	or	al, -128
	mov	DWORD PTR 36[rbx], eax
	.p2align 4,,10
	.p2align 3
.L90:
	mov	eax, 1
.L83:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	and	eax, -16777217
	and	BYTE PTR 59[rcx], 127
	mov	BYTE PTR 60[rcx], 1
	mov	DWORD PTR 36[rcx], eax
	mov	rcx, QWORD PTR 160[rcx]
	mov	edx, DWORD PTR 48[rcx]
	and	dh, -49
	or	dh, 32
	mov	DWORD PTR 48[rcx], edx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L97:
	mov	r12, QWORD PTR .refptr.gGameMode[rip]
	movzx	ebp, si
	cmp	BYTE PTR [r12], 5
	jne	.L88
	mov	eax, 10
	cmp	ebp, eax
	cmova	ebp, eax
	cmp	si, ax
	cmova	esi, eax
.L88:
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	mov	r8d, ebp
	sar	edx, 8
	sar	ecx, 8
	call	InitScatteringRings
	cmp	BYTE PTR [r12], 2
	ja	.L98
.L89:
	sub	WORD PTR [rdi], si
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L86:
	mov	ecx, 119
	call	m4aSongNumStart
	and	BYTE PTR 59[rbx], -10
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L98:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 4
	mov	BYTE PTR 1[rax], bpl
	jmp	.L89
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Enemy_Attack
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Enemy_Attack
Coll_Player_Enemy_Attack:
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
	mov	rax, rcx
	movzx	r9d, r9b
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	lea	rbx, [rax+r9*8]
	cmp	DWORD PTR 56[rbx], -1
	mov	r10, QWORD PTR 160[rcx]
	je	.L102
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 36[rcx]
	test	al, -128
	je	.L128
.L102:
	xor	eax, eax
.L99:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rdi]
	cmp	r9b, 2
	jbe	.L103
	mov	r11, QWORD PTR [rsi]
	cmp	BYTE PTR [r11], -3
	je	.L129
.L103:
	test	eax, 1073741824
	jne	.L105
	cmp	DWORD PTR 80[r10], -1
	je	.L106
	mov	ebp, DWORD PTR 12[rcx]
	movsx	r11d, BYTE PTR 60[rbx]
	movsx	eax, BYTE PTR 84[r10]
	sar	ebp, 8
	add	r11d, edx
	add	eax, ebp
	cmp	r11d, eax
	jle	.L130
.L107:
	movsx	eax, BYTE PTR 86[r10]
	add	eax, ebp
	cmp	r11d, eax
	jle	.L108
	.p2align 4,,10
	.p2align 3
.L106:
	cmp	DWORD PTR 72[r10], -1
	je	.L105
	mov	ebp, DWORD PTR 12[rcx]
	movsx	r11d, BYTE PTR 60[rbx]
	movsx	eax, BYTE PTR 76[r10]
	sar	ebp, 8
	add	r11d, edx
	add	eax, ebp
	cmp	r11d, eax
	jle	.L131
.L112:
	movsx	eax, BYTE PTR 78[r10]
	add	eax, ebp
	cmp	r11d, eax
	jg	.L105
.L113:
	mov	ebp, DWORD PTR 16[rcx]
	movsx	r11d, BYTE PTR 61[rbx]
	movsx	eax, BYTE PTR 77[r10]
	sar	ebp, 8
	add	r11d, r8d
	add	eax, ebp
	cmp	r11d, eax
	jle	.L132
.L114:
	movsx	eax, BYTE PTR 79[r10]
	add	eax, ebp
	cmp	r11d, eax
	jg	.L105
.L115:
	test	BYTE PTR 59[rcx], 2
	jne	.L116
	mov	DWORD PTR 96[rsp], r8d
	mov	DWORD PTR 88[rsp], edx
	call	Coll_DamagePlayer
	mov	edx, DWORD PTR 88[rsp]
	mov	r8d, DWORD PTR 96[rsp]
	.p2align 4,,10
	.p2align 3
.L105:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L102
	cmp	DWORD PTR 96[rax], -1
	je	.L102
	mov	r10d, DWORD PTR [rax]
	movsx	r9d, BYTE PTR 60[rbx]
	movsx	ecx, BYTE PTR 100[rax]
	sar	r10d, 8
	add	r9d, edx
	add	ecx, r10d
	cmp	r9d, ecx
	jle	.L133
.L119:
	movsx	ecx, BYTE PTR 102[rax]
	add	ecx, r10d
	cmp	r9d, ecx
	jg	.L102
.L120:
	mov	r10d, DWORD PTR 4[rax]
	movsx	r9d, BYTE PTR 61[rbx]
	movsx	ecx, BYTE PTR 101[rax]
	sar	r10d, 8
	add	r9d, r8d
	add	ecx, r10d
	cmp	r9d, ecx
	jg	.L121
	movsx	r11d, BYTE PTR 63[rbx]
	add	r11d, r8d
	cmp	ecx, r11d
	jle	.L122
	cmp	r9d, ecx
	jne	.L102
	.p2align 4,,10
	.p2align 3
.L121:
	movsx	eax, BYTE PTR 103[rax]
	add	eax, r10d
	cmp	r9d, eax
	jg	.L102
.L122:
	cmp	BYTE PTR [rdi], 2
	ja	.L134
.L118:
	movsx	esi, r8w
.L127:
	movsx	ebx, dx
	mov	edx, esi
	mov	ecx, ebx
	call	CreateDustCloud
	mov	edx, esi
	mov	ecx, ebx
	call	CreateTrappedAnimal
	mov	edx, esi
	mov	ecx, ebx
	call	CreateEnemyDefeatScoreAndManageLives
.L104:
	mov	eax, 1
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L130:
	movsx	r12d, BYTE PTR 62[rbx]
	add	r12d, edx
	cmp	eax, r12d
	jg	.L135
.L108:
	mov	ebp, DWORD PTR 16[rcx]
	movsx	r11d, BYTE PTR 61[rbx]
	movsx	eax, BYTE PTR 85[r10]
	sar	ebp, 8
	add	r11d, r8d
	add	eax, ebp
	cmp	r11d, eax
	jg	.L109
	movsx	r12d, BYTE PTR 63[rbx]
	add	r12d, r8d
	cmp	eax, r12d
	jle	.L110
	cmp	r11d, eax
	jne	.L106
	.p2align 4,,10
	.p2align 3
.L109:
	movsx	eax, BYTE PTR 87[r10]
	add	eax, ebp
	cmp	r11d, eax
	jg	.L106
.L110:
	cmp	r9b, 2
	ja	.L136
.L111:
	mov	DWORD PTR 88[rsp], edx
	movsx	esi, r8w
	call	Coll_Player_Enemy_AdjustSpeed
	mov	edx, DWORD PTR 88[rsp]
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L133:
	movsx	r11d, BYTE PTR 62[rbx]
	add	r11d, edx
	cmp	ecx, r11d
	jle	.L120
	cmp	r9d, ecx
	jne	.L102
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L131:
	movsx	r12d, BYTE PTR 62[rbx]
	add	r12d, edx
	cmp	eax, r12d
	jle	.L113
	cmp	r11d, eax
	jne	.L105
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L135:
	cmp	r11d, eax
	jne	.L106
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L129:
	movsx	esi, r8w
	movsx	ebx, dx
	mov	ecx, ebx
	mov	edx, esi
	call	CreateDustCloud
	mov	edx, esi
	mov	ecx, ebx
	call	CreateTrappedAnimal
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L132:
	movsx	r12d, BYTE PTR 63[rbx]
	add	r12d, r8d
	cmp	eax, r12d
	jle	.L115
	cmp	r11d, eax
	jne	.L105
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L116:
	cmp	r9b, 2
	jbe	.L118
	mov	DWORD PTR 96[rsp], r8d
	mov	DWORD PTR 88[rsp], edx
	call	CreateRoomEvent
	mov	r8d, DWORD PTR 96[rsp]
	mov	edx, DWORD PTR 88[rsp]
	mov	BYTE PTR [rax], 3
	movzx	ecx, WORD PTR 8[rsi]
	mov	BYTE PTR 1[rax], cl
	movzx	ecx, WORD PTR 10[rsi]
	mov	BYTE PTR 2[rax], cl
	movzx	ecx, BYTE PTR 13[rsi]
	mov	BYTE PTR 3[rax], cl
	jmp	.L118
.L134:
	mov	DWORD PTR 96[rsp], r8d
	mov	DWORD PTR 88[rsp], edx
	call	CreateRoomEvent
	mov	edx, DWORD PTR 88[rsp]
	mov	r8d, DWORD PTR 96[rsp]
	mov	BYTE PTR [rax], 3
	movzx	ecx, WORD PTR 8[rsi]
	mov	BYTE PTR 1[rax], cl
	movzx	ecx, WORD PTR 10[rsi]
	mov	BYTE PTR 2[rax], cl
	movzx	ecx, BYTE PTR 13[rsi]
	mov	BYTE PTR 3[rax], cl
	jmp	.L118
.L136:
	mov	DWORD PTR 96[rsp], r8d
	mov	DWORD PTR 88[rsp], edx
	call	CreateRoomEvent
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, DWORD PTR 96[rsp]
	mov	BYTE PTR [rax], 3
	movzx	r9d, WORD PTR 8[rsi]
	mov	edx, DWORD PTR 88[rsp]
	mov	BYTE PTR 1[rax], r9b
	movzx	r9d, WORD PTR 10[rsi]
	mov	BYTE PTR 2[rax], r9b
	movzx	r9d, BYTE PTR 13[rsi]
	mov	BYTE PTR 3[rax], r9b
	jmp	.L111
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Projectile
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Projectile
Coll_Player_Projectile:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, rcx
	mov	ecx, DWORD PTR 36[r9]
	mov	r10d, ecx
	and	r10d, 1073741824
	jne	.L143
	cmp	DWORD PTR 56[rax], -1
	je	.L137
	and	ecx, 128
	jne	.L137
	mov	rbx, QWORD PTR 160[r9]
	cmp	DWORD PTR 72[rbx], -1
	je	.L137
	mov	esi, DWORD PTR 12[r9]
	movsx	r11d, BYTE PTR 60[rax]
	movsx	ecx, BYTE PTR 76[rbx]
	sar	esi, 8
	add	r11d, edx
	add	ecx, esi
	cmp	r11d, ecx
	jg	.L139
	movsx	edi, BYTE PTR 62[rax]
	add	edx, edi
	cmp	ecx, edx
	jle	.L140
	cmp	r11d, ecx
	je	.L139
.L137:
	mov	eax, r10d
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	xor	r10d, r10d
	mov	eax, r10d
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L139:
	movsx	edx, BYTE PTR 78[rbx]
	xor	r10d, r10d
	add	edx, esi
	cmp	r11d, edx
	jg	.L137
.L140:
	mov	r11d, DWORD PTR 16[r9]
	movsx	ecx, BYTE PTR 61[rax]
	movsx	edx, BYTE PTR 77[rbx]
	sar	r11d, 8
	add	ecx, r8d
	add	edx, r11d
	cmp	ecx, edx
	jg	.L141
	movsx	eax, BYTE PTR 63[rax]
	add	eax, r8d
	cmp	edx, eax
	jle	.L142
	xor	r10d, r10d
	cmp	ecx, edx
	jne	.L137
	.p2align 4,,10
	.p2align 3
.L141:
	movsx	eax, BYTE PTR 79[rbx]
	xor	r10d, r10d
	add	eax, r11d
	cmp	ecx, eax
	jg	.L137
.L142:
	mov	rcx, r9
	call	Coll_DamagePlayer
	mov	r10d, 1
	jmp	.L137
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Enemy
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Enemy
Coll_Player_Enemy:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r10d, edx
	mov	rdx, QWORD PTR 96[rsp]
	mov	eax, DWORD PTR 36[rdx]
	and	eax, 128
	jne	.L155
	movsx	r9, r9w
	lea	rcx, [rcx+r9*8]
	cmp	DWORD PTR 56[rcx], -1
	je	.L149
	mov	r9, QWORD PTR 160[rdx]
	cmp	DWORD PTR 72[r9], -1
	je	.L149
	mov	esi, DWORD PTR 12[rdx]
	movsx	ebx, BYTE PTR 60[rcx]
	movsx	r11d, BYTE PTR 76[r9]
	sar	esi, 8
	add	ebx, r10d
	add	r11d, esi
	cmp	ebx, r11d
	jg	.L151
	movsx	edi, BYTE PTR 62[rcx]
	add	r10d, edi
	cmp	r11d, r10d
	jle	.L152
	cmp	ebx, r11d
	je	.L151
.L149:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	movsx	r10d, BYTE PTR 78[r9]
	add	r10d, esi
	cmp	ebx, r10d
	jg	.L149
.L152:
	mov	ebx, DWORD PTR 16[rdx]
	movsx	r11d, BYTE PTR 61[rcx]
	movsx	r10d, BYTE PTR 77[r9]
	sar	ebx, 8
	add	r11d, r8d
	add	r10d, ebx
	cmp	r11d, r10d
	jg	.L153
	movsx	ecx, BYTE PTR 63[rcx]
	add	ecx, r8d
	cmp	r10d, ecx
	jle	.L154
	cmp	r11d, r10d
	jne	.L149
	.p2align 4,,10
	.p2align 3
.L153:
	movsx	ecx, BYTE PTR 79[r9]
	add	ecx, ebx
	cmp	r11d, ecx
	jg	.L149
.L154:
	mov	rcx, rdx
	call	Coll_DamagePlayer
	mov	eax, 1
	jmp	.L149
	.seh_endproc
	.p2align 4
	.globl	sub_800CE94
	.def	sub_800CE94;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800CE94
sub_800CE94:
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
	.seh_endprologue
	mov	rsi, QWORD PTR 104[rsp]
	mov	r10d, DWORD PTR 12[rsi]
	mov	rax, rcx
	mov	ecx, edx
	sar	r10d, 8
	movsx	r11d, BYTE PTR 60[rax]
	lea	ebx, [r11+rdx]
	movsx	edx, BYTE PTR [r9]
	add	edx, r10d
	cmp	ebx, edx
	jle	.L185
.L157:
	movsx	edi, BYTE PTR 2[r9]
	xor	r13d, r13d
	add	edi, r10d
	cmp	ebx, edi
	jg	.L156
.L158:
	mov	edi, DWORD PTR 16[rsi]
	movsx	r15d, BYTE PTR 61[rax]
	movsx	ebp, BYTE PTR 1[r9]
	sar	edi, 8
	lea	r12d, [r15+r8]
	add	ebp, edi
	cmp	r12d, ebp
	jle	.L186
.L160:
	movsx	r14d, BYTE PTR 3[r9]
	xor	r13d, r13d
	add	r14d, edi
	cmp	r12d, r14d
	jg	.L156
	movsx	r13d, BYTE PTR 63[rax]
.L161:
	movsx	r14d, BYTE PTR 62[rax]
	add	r15d, r13d
	sar	r15d
	add	r11d, r14d
	lea	eax, [r15+r8]
	sar	r11d
	add	r11d, ecx
	cmp	r10d, r11d
	jl	.L162
	add	r14d, ecx
	sub	r14d, edx
	mov	edx, 262144
.L163:
	cmp	edi, eax
	jge	.L164
	movsx	eax, BYTE PTR 3[r9]
	mov	r8d, r12d
	mov	ecx, r14d
	add	eax, edi
	sub	r8d, eax
	neg	ecx
	lea	eax, 5[r8]
	cmovs	ecx, r14d
	xor	r9d, r9d
	test	eax, eax
	cmovg	eax, r9d
	neg	eax
	cmp	ecx, eax
	jl	.L165
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR 22[rsi]
	test	BYTE PTR [rax], -128
	jne	.L166
	xor	r13d, r13d
	test	dx, dx
	js	.L156
.L172:
	test	BYTE PTR 36[rsi], 2
	jne	.L173
	movzx	eax, BYTE PTR 40[rsi]
	add	eax, 32
	test	al, 64
	je	.L173
	xor	eax, eax
	mov	WORD PTR 24[rsi], ax
.L173:
	movzx	r8d, r8b
	or	r8d, 65536
	mov	r13d, r8d
.L156:
	mov	eax, r13d
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
.L185:
	movsx	edi, BYTE PTR 62[rax]
	add	edi, ecx
	cmp	edx, edi
	jle	.L158
	xor	r13d, r13d
	cmp	ebx, edx
	je	.L157
	mov	eax, r13d
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
.L186:
	movsx	r13d, BYTE PTR 63[rax]
	lea	r14d, 0[r13+r8]
	cmp	ebp, r14d
	jle	.L161
	xor	r13d, r13d
	cmp	r12d, ebp
	jne	.L156
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L164:
	add	r8d, r13d
	xor	ecx, ecx
	sub	r8d, ebp
	lea	eax, 2[r8]
	movzx	r13d, r8b
	test	eax, eax
	cmovs	eax, ecx
	mov	ecx, r14d
	neg	ecx
	cmovs	ecx, r14d
	or	r13d, 131072
	or	edx, 131072
	cmp	eax, ecx
	jle	.L156
.L169:
	mov	eax, r14d
	and	edx, 786432
	movzx	r8d, r8b
	sal	eax, 8
	movzx	eax, ax
	or	r8d, eax
	mov	eax, edx
	or	eax, r8d
	movzx	edx, r8b
	and	r8d, 65280
	cmove	eax, edx
	xor	al, al
	mov	r13d, eax
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L162:
	movsx	edx, BYTE PTR 2[r9]
	add	edx, r10d
	sub	ebx, edx
	mov	edx, 524288
	mov	r14d, ebx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L166:
	xor	r13d, r13d
	test	dx, dx
	jle	.L172
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L165:
	or	edx, 65536
	jmp	.L169
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Platform
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Platform
Coll_Player_Platform:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	movzx	eax, BYTE PTR 27[r9]
	mov	r10d, eax
	sal	eax, 8
	neg	r10d
	mov	rsi, rcx
	mov	ecx, edx
	movzx	edx, BYTE PTR 26[r9]
	mov	rbx, r9
	or	eax, edx
	mov	r9d, edx
	movzx	edx, r10b
	sal	eax, 8
	neg	r9d
	or	eax, edx
	movzx	edx, r9b
	sal	eax, 8
	or	eax, edx
	cmp	DWORD PTR 56[rsi], -1
	mov	DWORD PTR 60[rsp], eax
	je	.L196
	mov	edi, DWORD PTR 36[rbx]
	test	dil, -128
	jne	.L196
	test	dil, 8
	jne	.L207
.L191:
	mov	QWORD PTR 32[rsp], rbx
	mov	edx, ecx
	lea	r9, 60[rsp]
	mov	rcx, rsi
	call	sub_800CE94
	test	eax, eax
	je	.L196
.L197:
	test	eax, 65536
	je	.L187
	mov	edx, DWORD PTR 36[rbx]
	mov	QWORD PTR 64[rbx], rsi
	and	edx, -3
	or	edx, 8
	mov	DWORD PTR 36[rbx], edx
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L207:
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L191
	mov	eax, edi
	mov	edx, ecx
	lea	r9, 60[rsp]
	mov	rcx, rsi
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	mov	QWORD PTR 32[rsp], rbx
	call	sub_800CE94
	test	eax, eax
	jne	.L197
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	and	edi, -41
	mov	QWORD PTR 64[rbx], 0
	or	edi, 2
	movzx	eax, BYTE PTR [rax]
	mov	DWORD PTR 36[rbx], edi
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L194
	cmp	al, 28
	je	.L208
	cmp	al, 29
	jne	.L196
.L194:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 56[rax]
	sal	eax, 8
	sub	WORD PTR 24[rbx], ax
	.p2align 4,,10
	.p2align 3
.L196:
	xor	eax, eax
.L187:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L208:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	je	.L194
	jmp	.L196
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Interactable
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Interactable
Coll_Player_Interactable:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	movzx	eax, BYTE PTR 27[r9]
	mov	r10d, eax
	sal	eax, 8
	neg	r10d
	mov	rsi, rcx
	mov	ecx, edx
	movzx	edx, BYTE PTR 26[r9]
	mov	rbx, r9
	or	eax, edx
	mov	r9d, edx
	movzx	edx, r10b
	sal	eax, 8
	neg	r9d
	or	eax, edx
	movzx	edx, r9b
	sal	eax, 8
	or	eax, edx
	mov	DWORD PTR 60[rsp], eax
	xor	eax, eax
	cmp	DWORD PTR 56[rsi], -1
	je	.L209
	mov	edi, DWORD PTR 36[rbx]
	test	dil, -128
	jne	.L209
	test	dil, 8
	jne	.L225
.L211:
	mov	QWORD PTR 32[rsp], rbx
	mov	edx, ecx
	lea	r9, 60[rsp]
	mov	rcx, rsi
	call	sub_800CE94
	test	eax, 65536
	je	.L209
.L216:
	or	edi, 8
	mov	QWORD PTR 64[rbx], rsi
	mov	DWORD PTR 36[rbx], edi
.L209:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L225:
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L211
	and	edi, -9
	mov	edx, ecx
	lea	r9, 60[rsp]
	mov	rcx, rsi
	mov	DWORD PTR 36[rbx], edi
	mov	QWORD PTR 32[rsp], rbx
	call	sub_800CE94
	test	eax, 65536
	jne	.L216
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	QWORD PTR 64[rbx], 0
	movzx	edx, BYTE PTR [rdx]
	mov	ecx, edx
	and	ecx, 3
	cmp	cl, 2
	je	.L213
	cmp	dl, 28
	je	.L226
	cmp	dl, 29
	jne	.L209
.L213:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 56[rdx]
	sal	edx, 8
	sub	WORD PTR 24[rbx], dx
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L226:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L213
	jmp	.L209
	.seh_endproc
	.p2align 4
	.globl	sub_800D0A0
	.def	sub_800D0A0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800D0A0
sub_800D0A0:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_800DA4C
	.def	sub_800DA4C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800DA4C
sub_800DA4C:
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
	mov	r11d, DWORD PTR 88[rsp]
	mov	r10, rcx
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r9d, edx
	mov	eax, DWORD PTR 36[rcx]
	and	eax, 134217856
	je	.L250
	xor	eax, eax
.L228:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	cmp	BYTE PTR 60[rcx], r11b
	jne	.L228
	mov	r11, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	and	edx, 3
	mov	rdx, QWORD PTR [r11+rdx*8]
	mov	r11, QWORD PTR 24[rdx]
	mov	edx, DWORD PTR 20[rcx]
	test	edx, edx
	jne	.L230
	cmp	DWORD PTR 64[r10], -1
	je	.L230
	movsx	ecx, BYTE PTR 68[r10]
	movsx	esi, WORD PTR 96[r11]
	movsx	ebx, r9w
	movsx	edx, BYTE PTR 60[r11]
	add	ecx, ebx
	add	edx, esi
	cmp	ecx, edx
	jg	.L231
	movsx	edi, BYTE PTR 70[r10]
	add	ebx, edi
	cmp	edx, ebx
	jle	.L232
	cmp	ecx, edx
	jne	.L230
	.p2align 4,,10
	.p2align 3
.L231:
	movsx	edx, BYTE PTR 62[r11]
	add	edx, esi
	cmp	ecx, edx
	jg	.L230
.L232:
	movsx	ecx, BYTE PTR 69[r10]
	movsx	esi, WORD PTR 98[r11]
	movsx	ebx, r8w
	movsx	edx, BYTE PTR 61[r11]
	add	ecx, ebx
	add	edx, esi
	cmp	ecx, edx
	jle	.L251
.L233:
	movsx	eax, BYTE PTR 63[r11]
	add	eax, esi
	cmp	ecx, eax
	setle	al
	movzx	eax, al
	add	eax, eax
	.p2align 4,,10
	.p2align 3
.L230:
	cmp	DWORD PTR 64[r11], -1
	je	.L234
	cmp	DWORD PTR 56[r10], -1
	je	.L234
	movsx	esi, WORD PTR 96[r11]
	movsx	ecx, BYTE PTR 60[r10]
	movsx	ebx, r9w
	movsx	edx, BYTE PTR 68[r11]
	add	ecx, ebx
	mov	edi, esi
	add	edx, esi
	cmp	ecx, edx
	jg	.L235
	movsx	ebp, BYTE PTR 62[r10]
	add	ebx, ebp
	cmp	edx, ebx
	jle	.L236
	cmp	ecx, edx
	jne	.L234
	.p2align 4,,10
	.p2align 3
.L235:
	movsx	edx, BYTE PTR 70[r11]
	add	edx, esi
	cmp	ecx, edx
	jg	.L234
.L236:
	movsx	esi, WORD PTR 98[r11]
	movsx	ecx, BYTE PTR 61[r10]
	movsx	ebx, r8w
	movsx	edx, BYTE PTR 69[r11]
	add	ecx, ebx
	mov	ebp, esi
	add	edx, esi
	cmp	ecx, edx
	jle	.L252
.L237:
	movsx	edx, BYTE PTR 71[r11]
	add	edx, esi
	cmp	ecx, edx
	jg	.L234
.L238:
	mov	edx, eax
	or	eax, 131072
	or	edx, 262144
	cmp	di, r9w
	cmovg	eax, edx
	mov	edx, eax
	or	eax, 1048576
	or	edx, 65536
	cmp	bp, r8w
	cmovg	eax, edx
	or	eax, 1
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L252:
	movsx	r12d, BYTE PTR 63[r10]
	add	ebx, r12d
	cmp	edx, ebx
	jle	.L238
	cmp	ecx, edx
	je	.L237
	.p2align 4,,10
	.p2align 3
.L234:
	cmp	DWORD PTR 56[r11], -1
	je	.L228
	cmp	DWORD PTR 64[r10], -1
	je	.L228
	movsx	edx, r9w
	movsx	ebx, WORD PTR 96[r11]
	movsx	r9d, BYTE PTR 68[r10]
	movsx	ecx, BYTE PTR 60[r11]
	add	r9d, edx
	add	ecx, ebx
	cmp	r9d, ecx
	jg	.L243
	movsx	esi, BYTE PTR 70[r10]
	add	edx, esi
	cmp	ecx, edx
	jle	.L244
	cmp	r9d, ecx
	jne	.L228
	.p2align 4,,10
	.p2align 3
.L243:
	movsx	edx, BYTE PTR 62[r11]
	add	edx, ebx
	cmp	r9d, edx
	jg	.L228
.L244:
	movsx	ecx, BYTE PTR 69[r10]
	movsx	r9d, WORD PTR 98[r11]
	movsx	r8d, r8w
	movsx	edx, BYTE PTR 61[r11]
	add	ecx, r8d
	add	edx, r9d
	cmp	ecx, edx
	jle	.L253
.L245:
	movsx	edx, BYTE PTR 63[r11]
	add	edx, r9d
	cmp	ecx, edx
	mov	edx, 2
	cmovle	eax, edx
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L253:
	movsx	r10d, BYTE PTR 71[r10]
	add	r8d, r10d
	cmp	edx, r8d
	jle	.L248
	cmp	ecx, edx
	jne	.L228
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L251:
	movsx	edi, BYTE PTR 71[r10]
	add	ebx, edi
	cmp	edx, ebx
	jle	.L247
	cmp	ecx, edx
	jne	.L230
	jmp	.L233
.L247:
	mov	eax, 2
	jmp	.L230
.L248:
	mov	eax, 2
	jmp	.L228
	.seh_endproc
	.p2align 4
	.globl	sub_800DD54
	.def	sub_800DD54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800DD54
sub_800DD54:
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
	cmp	WORD PTR 50[rcx], 0
	mov	rbx, rcx
	jg	.L254
	cmp	WORD PTR 48[rcx], 0
	jg	.L254
	mov	eax, DWORD PTR 36[rcx]
	mov	r10d, 120
	mov	WORD PTR 48[rcx], r10w
	mov	edx, eax
	and	edx, 1
	cmp	edx, 1
	sbb	edx, edx
	and	dx, -768
	add	dx, 384
	mov	WORD PTR 20[rcx], dx
	test	al, 64
	jne	.L257
	mov	r9d, -768
	mov	WORD PTR 22[rcx], r9w
.L258:
	and	eax, -1341
	mov	edx, 14
	mov	rcx, rbx
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	mov	eax, 20
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	xor	ecx, ecx
	mov	edx, 3590
	mov	BYTE PTR 117[rbx], 9
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	WORD PTR 26[rbx], dx
	mov	WORD PTR 105[rbx], cx
	cmp	BYTE PTR [rax], 5
	je	.L263
.L259:
	mov	ecx, 119
	call	m4aSongNumStart
	mov	eax, 1
.L254:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	mov	r8d, -384
	sar	dx
	mov	WORD PTR 22[rcx], r8w
	mov	WORD PTR 20[rcx], dx
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L263:
	mov	rbp, QWORD PTR .refptr.gRingCount[rip]
	mov	eax, 10
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	movzx	esi, WORD PTR 0[rbp]
	cmp	esi, eax
	mov	edi, esi
	cmova	esi, eax
	sar	edx, 8
	sar	ecx, 8
	mov	r8d, esi
	call	InitScatteringRings
	mov	eax, 10
	cmp	di, ax
	cmova	edi, eax
	sub	WORD PTR 0[rbp], di
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 4
	mov	BYTE PTR 1[rax], sil
	jmp	.L259
	.seh_endproc
	.p2align 4
	.globl	sub_800DE44
	.def	sub_800DE44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800DE44
sub_800DE44:
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
	cmp	WORD PTR 50[rcx], 0
	mov	rbx, rcx
	jg	.L264
	cmp	WORD PTR 48[rcx], 0
	jg	.L264
	mov	eax, DWORD PTR 36[rcx]
	mov	r10d, 120
	mov	WORD PTR 48[rcx], r10w
	mov	edx, eax
	and	edx, 1
	cmp	edx, 1
	sbb	edx, edx
	and	dx, 768
	sub	dx, 384
	mov	WORD PTR 20[rcx], dx
	test	al, 64
	jne	.L267
	mov	r9d, -768
	mov	WORD PTR 22[rcx], r9w
.L268:
	and	eax, -1341
	mov	edx, 14
	mov	rcx, rbx
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	mov	eax, 20
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	xor	ecx, ecx
	mov	edx, 3590
	mov	BYTE PTR 117[rbx], 9
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	WORD PTR 26[rbx], dx
	mov	WORD PTR 105[rbx], cx
	cmp	BYTE PTR [rax], 5
	je	.L273
.L269:
	mov	ecx, 119
	call	m4aSongNumStart
	mov	eax, 1
.L264:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	mov	r8d, -384
	sar	dx
	mov	WORD PTR 22[rcx], r8w
	mov	WORD PTR 20[rcx], dx
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L273:
	mov	rbp, QWORD PTR .refptr.gRingCount[rip]
	mov	eax, 5
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	movzx	esi, WORD PTR 0[rbp]
	cmp	esi, eax
	mov	edi, esi
	cmova	esi, eax
	sar	edx, 8
	sar	ecx, 8
	mov	r8d, esi
	call	InitScatteringRings
	mov	eax, 5
	cmp	di, ax
	cmova	edi, eax
	sub	WORD PTR 0[rbp], di
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 4
	mov	BYTE PTR 1[rax], sil
	jmp	.L269
	.seh_endproc
	.p2align 4
	.globl	Coll_Player_Entity_Intersection
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.seh_proc	Coll_Player_Entity_Intersection
Coll_Player_Entity_Intersection:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	movzx	eax, BYTE PTR 27[r9]
	mov	ebx, eax
	sal	eax, 8
	neg	ebx
	mov	r10d, edx
	movzx	edx, BYTE PTR 26[r9]
	or	eax, edx
	mov	r11d, edx
	movzx	edx, bl
	sal	eax, 8
	neg	r11d
	or	eax, edx
	movzx	edx, r11b
	sal	eax, 8
	or	eax, edx
	mov	edx, r10d
	mov	DWORD PTR 60[rsp], eax
	lea	rax, 60[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Entity_RectIntersection
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	InitScatteringRings;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	CreateDustCloud;	.scl	2;	.type	32;	.endef
	.def	CreateTrappedAnimal;	.scl	2;	.type	32;	.endef
	.def	CreateEnemyDefeatScoreAndManageLives;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
