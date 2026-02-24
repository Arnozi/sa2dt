	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_80867E8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80867E8
sub_80867E8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_808673C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808673C
sub_808673C:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gRandomItemBox[rip]
	mov	rdx, QWORD PTR 24[r9]
	movzx	eax, BYTE PTR [rax]
	mov	r8, QWORD PTR [rdx]
	mov	ecx, eax
	and	ecx, 7
	movsx	r10d, BYTE PTR 3[r8]
	cmp	r10d, ecx
	je	.L7
.L4:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	r10d, DWORD PTR 160[rdx]
	mov	ebx, eax
	mov	r11d, DWORD PTR 4[rcx]
	sub	bx, WORD PTR [rcx]
	movzx	ecx, WORD PTR 156[rdx]
	add	ecx, ebx
	cmp	cx, 682
	ja	.L6
	sub	eax, r11d
	add	eax, r10d
	cmp	ax, 496
	ja	.L6
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movzx	eax, BYTE PTR 12[rdx]
	mov	rcx, r9
	mov	BYTE PTR [r8], al
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	shr	al, 4
	movsx	r10d, BYTE PTR 4[r8]
	movzx	ecx, al
	cmp	r10d, ecx
	jg	.L4
	mov	BYTE PTR 4[r8], al
	lea	rax, sub_808616C[rip]
	mov	QWORD PTR 40[r9], rax
	pop	rbx
	ret
	.seh_endproc
	.def	sub_808673C_inline;	.scl	3;	.type	32;	.endef
	.set	sub_808673C_inline,sub_808673C
	.p2align 4
	.def	sub_808636C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808636C
sub_808636C:
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
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 156[rbx]
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 150[rbx], ax
	mov	eax, DWORD PTR 160[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	edx, DWORD PTR 48[rbx]
	mov	WORD PTR 152[rbx], ax
	movzx	eax, WORD PTR 148[rbx]
	lea	ecx, -8[rax]
	mov	eax, DWORD PTR 112[rbx]
	mov	WORD PTR 148[rbx], cx
	test	cx, cx
	jle	.L10
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	and	edx, -32
	and	eax, -32
	lea	rdi, 144[rbx]
	lea	rsi, 16[rbx]
	add	rbx, 80
	movzx	r8d, BYTE PTR [r9]
	or	edx, r8d
	or	eax, r8d
	mov	ecx, r8d
	mov	DWORD PTR 32[rbx], eax
	add	ecx, 1
	mov	DWORD PTR -32[rbx], edx
	mov	rdx, rdi
	mov	BYTE PTR [r9], cl
	mov	rcx, rsi
	call	TransformSprite
	mov	rdx, rdi
	mov	rcx, rbx
	call	TransformSprite
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L10:
	and	eax, -33
	and	edx, -33
	mov	DWORD PTR 112[rbx], eax
	mov	eax, 256
	mov	WORD PTR 148[rbx], ax
	lea	rax, sub_808673C[rip]
	mov	DWORD PTR 48[rbx], edx
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_808673C_inline
	.seh_endproc
	.p2align 4
	.def	sub_808679C_inline;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808679C_inline
sub_808679C_inline:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rdx]
	or	DWORD PTR 48[rax], 32
	or	DWORD PTR 112[rax], 32
	mov	WORD PTR 144[rax], cx
	mov	QWORD PTR 146[rax], 16777472
	lea	rax, sub_808636C[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	sub_808636C
	.seh_endproc
	.def	sub_808679C;	.scl	3;	.type	32;	.endef
	.set	sub_808679C,sub_808679C_inline
	.p2align 4
	.def	sub_80866AC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80866AC
sub_80866AC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r8]
	movzx	edx, BYTE PTR 167[rcx]
	lea	eax, 1[rdx]
	mov	BYTE PTR 167[rcx], al
	movzx	eax, WORD PTR 164[rcx]
	cmp	dl, 59
	jbe	.L13
	lea	rdx, sub_80866FC[rip]
	mov	BYTE PTR 167[rcx], 0
	mov	QWORD PTR 40[r8], rdx
.L14:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	sar	ax, 8
	add	rcx, 80
	mov	edx, DWORD PTR 80[rcx]
	mov	r8d, DWORD PTR 76[rcx]
	sub	dx, WORD PTR 4[r9]
	sub	r8w, WORD PTR [r9]
	add	eax, edx
	mov	WORD PTR -26[rcx], r8w
	mov	WORD PTR -24[rcx], dx
	mov	WORD PTR 38[rcx], r8w
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	sub	ax, 256
	mov	WORD PTR 164[rcx], ax
	jmp	.L14
	.seh_endproc
	.p2align 4
	.def	sub_80866FC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80866FC
sub_80866FC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 167[rcx]
	lea	r8d, 1[rax]
	mov	BYTE PTR 167[rcx], r8b
	cmp	al, 29
	jbe	.L16
	lea	rax, sub_808673C[rip]
	mov	QWORD PTR 40[rdx], rax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	mov	edx, DWORD PTR 156[rcx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	add	rcx, 80
	mov	eax, DWORD PTR 80[rcx]
	sub	dx, WORD PTR [r8]
	sub	ax, WORD PTR 4[r8]
	mov	WORD PTR -26[rcx], dx
	mov	WORD PTR 38[rcx], dx
	movsx	dx, BYTE PTR 85[rcx]
	mov	WORD PTR -24[rcx], ax
	add	eax, edx
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	sub_80865E4_inline;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80865E4_inline
sub_80865E4_inline:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR .refptr.gRandomItemBox[rip]
	mov	rdx, QWORD PTR [rdi]
	movzx	eax, BYTE PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	mov	ecx, eax
	and	ecx, 7
	mov	rsi, QWORD PTR [rbx]
	movsx	r8d, BYTE PTR 3[rsi]
	cmp	r8d, ecx
	jne	.L35
	shr	al, 4
	movsx	edx, BYTE PTR 4[rsi]
	movzx	eax, al
	cmp	edx, eax
	jg	.L36
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, DWORD PTR 160[rbx]
	mov	edx, DWORD PTR 156[rbx]
	test	BYTE PTR 36[rbp], -128
	je	.L37
.L24:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 156[rbx]
	mov	edx, DWORD PTR 160[rbx]
	sub	ax, WORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	lea	ecx, 128[rax]
	cmp	cx, 682
	ja	.L29
	sub	edx, r8d
	lea	ecx, 128[rdx]
	cmp	cx, 496
	ja	.L29
	mov	WORD PTR 54[rbx], ax
	lea	rcx, 16[rbx]
	mov	WORD PTR 118[rbx], ax
	movsx	ax, BYTE PTR 165[rbx]
	mov	WORD PTR 56[rbx], dx
	add	eax, edx
	mov	WORD PTR 120[rbx], ax
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L35:
	or	DWORD PTR 48[rbx], 32
	xor	ecx, ecx
	lea	rax, sub_808636C[rip]
	or	DWORD PTR 112[rbx], 32
	mov	WORD PTR 144[rbx], cx
	mov	QWORD PTR 146[rbx], 16777472
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_808636C
	.p2align 4,,10
	.p2align 3
.L36:
	mov	ecx, 150
	call	m4aSongNumStart
	movsx	edx, WORD PTR 160[rbx]
	movsx	ecx, WORD PTR 156[rbx]
	call	CreateDustCloud
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_80866AC[rip]
	mov	BYTE PTR 167[rbx], 0
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	lea	r12, 16[rbx]
	mov	rcx, r12
	call	Coll_Player_ItemBox
	test	eax, eax
	je	.L25
	mov	BYTE PTR 168[rbx], 1
	test	BYTE PTR 36[rbp], 2
	je	.L27
.L26:
	mov	eax, -768
	mov	DWORD PTR 108[rbp], -65498
	mov	WORD PTR 22[rbp], ax
	mov	BYTE PTR 117[rbp], 5
.L27:
	mov	rax, QWORD PTR [rbx]
	mov	ecx, 150
	add	BYTE PTR 4[rax], 1
	call	m4aSongNumStart
	movsx	edx, WORD PTR 160[rbx]
	movsx	ecx, WORD PTR 156[rbx]
	call	CreateDustCloud
	mov	BYTE PTR 167[rbx], 0
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 5
	movzx	edx, WORD PTR 8[rbx]
	mov	BYTE PTR 1[rax], dl
	movzx	edx, WORD PTR 10[rbx]
	mov	BYTE PTR 2[rax], dl
	movzx	edx, BYTE PTR 13[rbx]
	mov	BYTE PTR 3[rax], dl
	mov	rdx, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 4[rdx]
	mov	BYTE PTR 4[rax], dl
	mov	rax, QWORD PTR [rdi]
	lea	rdx, sub_808665C[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rsi], al
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L25:
	mov	r8d, DWORD PTR 160[rbx]
	mov	edx, DWORD PTR 156[rbx]
	xor	r9d, r9d
	mov	rcx, r12
	mov	DWORD PTR 40[rsp], 0
	mov	QWORD PTR 32[rsp], rbp
	call	Coll_Player_Entity_HitboxN
	test	eax, eax
	je	.L24
	mov	BYTE PTR 168[rbx], 0
	jmp	.L26
	.seh_endproc
	.def	sub_80865E4;	.scl	3;	.type	32;	.endef
	.set	sub_80865E4,sub_80865E4_inline
	.p2align 4
	.def	sub_808623C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808623C
sub_808623C:
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
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 156[rbx]
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 150[rbx], ax
	mov	eax, DWORD PTR 160[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	edx, DWORD PTR 48[rbx]
	mov	WORD PTR 152[rbx], ax
	movzx	eax, WORD PTR 148[rbx]
	lea	ecx, 8[rax]
	mov	eax, DWORD PTR 112[rbx]
	mov	WORD PTR 148[rbx], cx
	cmp	cx, 255
	jg	.L40
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	and	edx, -32
	and	eax, -32
	lea	rdi, 144[rbx]
	lea	rsi, 16[rbx]
	add	rbx, 80
	movzx	r8d, BYTE PTR [r9]
	or	edx, r8d
	or	eax, r8d
	mov	ecx, r8d
	mov	DWORD PTR 32[rbx], eax
	add	ecx, 1
	mov	DWORD PTR -32[rbx], edx
	mov	rdx, rdi
	mov	BYTE PTR [r9], cl
	mov	rcx, rsi
	call	TransformSprite
	mov	rdx, rdi
	mov	rcx, rbx
	call	TransformSprite
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L40:
	and	eax, -33
	and	edx, -33
	mov	DWORD PTR 112[rbx], eax
	mov	eax, 256
	mov	DWORD PTR 48[rbx], edx
	xor	edx, edx
	mov	WORD PTR 148[rbx], ax
	lea	rax, sub_80865E4[rip]
	mov	WORD PTR 164[rbx], dx
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_80865E4_inline
	.seh_endproc
	.p2align 4
	.def	sub_808616C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808616C
sub_808616C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, gUnknown_080E029A[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	mov	eax, DWORD PTR [rax]
	lea	rcx, 80[rbx]
	and	eax, 7
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	BYTE PTR 166[rbx], al
	movzx	eax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	lea	rdx, [rax+rax*2]
	lea	rax, gUnknown_080E02AA[rip]
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 98[rbx], dx
	mov	BYTE PTR 128[rbx], al
	call	UpdateSpriteAnimation
	or	DWORD PTR 48[rbx], 32
	xor	eax, eax
	lea	rcx, sub_808623C[rip]
	or	DWORD PTR 112[rbx], 32
	mov	WORD PTR 144[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 146[rbx], 256
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_808623C
	.seh_endproc
	.p2align 4
	.def	sub_808665C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808665C
sub_808665C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 167[rbx]
	lea	ecx, 1[rax]
	mov	BYTE PTR 167[rbx], cl
	cmp	al, 59
	ja	.L56
	movzx	eax, WORD PTR 164[rbx]
	sub	ax, 256
	mov	WORD PTR 164[rbx], ax
.L49:
	mov	ecx, DWORD PTR 156[rbx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	sar	ax, 8
	mov	edx, DWORD PTR 160[rbx]
	sub	cx, WORD PTR [r8]
	sub	dx, WORD PTR 4[r8]
	mov	WORD PTR 54[rbx], cx
	add	eax, edx
	mov	WORD PTR 118[rbx], cx
	lea	rcx, 80[rbx]
	mov	WORD PTR 56[rbx], dx
	mov	WORD PTR 120[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L56:
	movzx	eax, BYTE PTR 166[rbx]
	test	al, al
	je	.L44
	cmp	al, 1
	je	.L45
.L46:
	lea	rax, sub_80866FC[rip]
	mov	BYTE PTR 167[rbx], 0
	mov	QWORD PTR 40[rdx], rax
	movzx	eax, WORD PTR 164[rbx]
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L45:
	call	CreateRoomEvent
	mov	edx, 1030
	mov	WORD PTR [rax], dx
	mov	rdx, QWORD PTR [rsi]
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L44:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r9d, 3435973837
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	lea	ecx, 1013904223[rax]
	mov	DWORD PTR [rdx], ecx
	mov	rax, rcx
	imul	rcx, r9
	movzx	edx, WORD PTR [r8]
	shr	rcx, 34
	lea	ecx, [rcx+rcx*4]
	sub	eax, ecx
	lea	rcx, sRingBonuses[rip]
	movzx	ecx, BYTE PTR [rcx+rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	add	ecx, edx
	mov	WORD PTR [r8], cx
	cmp	BYTE PTR [rax], 29
	je	.L47
	mov	eax, ecx
	shr	dx, 2
	shr	ax, 2
	movzx	edx, dx
	movzx	eax, ax
	imul	edx, edx, 5243
	imul	eax, eax, 5243
	shr	edx, 17
	shr	eax, 17
	cmp	ax, dx
	je	.L47
	test	r9b, r9b
	jne	.L47
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	mov	ecx, 255
	movzx	eax, BYTE PTR [rdx]
	add	eax, 1
	cmp	eax, ecx
	cmova	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L48:
	mov	ecx, 117
	call	m4aSongNumStart
	mov	rdx, QWORD PTR [rsi]
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L47:
	cmp	r9b, 5
	jne	.L48
	cmp	cx, 255
	jbe	.L48
	mov	ecx, 255
	mov	WORD PTR [r8], cx
	jmp	.L48
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_MysteryItemBox
	.def	CreateEntity_MysteryItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_MysteryItemBox
CreateEntity_MysteryItemBox:
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
	mov	rbx, QWORD PTR .refptr.gRandomItemBox[rip]
	movzx	eax, BYTE PTR [rbx]
	mov	rsi, rcx
	mov	r12d, edx
	mov	ecx, eax
	mov	ebp, r8d
	movsx	edx, BYTE PTR 3[rsi]
	and	ecx, 7
	mov	edi, r9d
	cmp	ecx, edx
	jne	.L58
	shr	al, 4
	movsx	edx, BYTE PTR 4[rsi]
	movzx	eax, al
	cmp	edx, eax
	jle	.L61
.L58:
	lea	rax, sub_80867E8[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 176
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_808673C[rip]
	call	TaskCreate
.L59:
	movzx	edx, BYTE PTR [rbx]
	movsx	r8d, BYTE PTR 4[rsi]
	shr	dl, 4
	movzx	ecx, dl
	cmp	r8d, ecx
	jg	.L60
	mov	BYTE PTR 4[rsi], dl
.L60:
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	lea	r13, gUnknown_080E029A[rip]
	mov	eax, DWORD PTR [rax]
	and	eax, 7
	movzx	eax, WORD PTR 0[r13+rax*2]
	mov	BYTE PTR 166[rbx], al
	xor	eax, eax
	mov	WORD PTR 164[rbx], ax
	movzx	eax, r12w
	movzx	ecx, BYTE PTR [rsi]
	sal	eax, 5
	add	eax, ecx
	mov	edx, ecx
	movzx	ecx, bp
	sal	eax, 3
	sal	ecx, 5
	mov	DWORD PTR 156[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	QWORD PTR [rbx], rsi
	add	eax, ecx
	mov	WORD PTR 8[rbx], r12w
	xor	ecx, ecx
	sal	eax, 3
	mov	WORD PTR 10[rbx], bp
	mov	DWORD PTR 160[rbx], eax
	movzx	eax, dl
	mov	edx, edi
	mov	ah, dl
	xor	edx, edx
	mov	WORD PTR 12[rbx], ax
	mov	BYTE PTR [rsi], -2
	movzx	esi, WORD PTR .LC7[rip]
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 52[rbx], cx
	mov	ecx, 16
	mov	WORD PTR 65[rbx], si
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 58[rbx], 1152
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 724
	mov	BYTE PTR 64[rbx], 0
	lea	rcx, 16[rbx]
	mov	WORD PTR 34[rbx], r8w
	mov	QWORD PTR 24[rbx], rax
	call	UpdateSpriteAnimation
	xor	r9d, r9d
	xor	r10d, r10d
	mov	ecx, 4
	mov	WORD PTR 96[rbx], r9w
	mov	WORD PTR 116[rbx], r10w
	mov	WORD PTR 129[rbx], si
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 122[rbx], 1216
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 8192
	call	VramMalloc
	lea	rcx, 80[rbx]
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, BYTE PTR 166[rbx]
	movzx	eax, WORD PTR 0[r13+rax*2]
	lea	rdx, [rax+rax*2]
	lea	rax, gUnknown_080E02AA[rip]
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 98[rbx], dx
	mov	BYTE PTR 128[rbx], al
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L61:
	lea	rax, sub_80867E8[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 176
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_80865E4[rip]
	call	TaskCreate
	jmp	.L59
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080E02AA:
	.word	725
	.word	9
	.word	4
	.word	725
	.word	12
	.word	4
	.align 16
gUnknown_080E029A:
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
sRingBonuses:
	.ascii "\1\5\12\36"
	.ascii "2"
	.align 2
.LC7:
	.byte	-1
	.byte	16
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateDustCloud;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_ItemBox;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gMultiplayerPseudoRandom, "dr"
	.globl	.refptr.gMultiplayerPseudoRandom
	.linkonce	discard
.refptr.gMultiplayerPseudoRandom:
	.quad	gMultiplayerPseudoRandom
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
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
	.section	.rdata$.refptr.gRandomItemBox, "dr"
	.globl	.refptr.gRandomItemBox
	.linkonce	discard
.refptr.gRandomItemBox:
	.quad	gRandomItemBox
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
