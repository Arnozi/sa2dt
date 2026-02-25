	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8088CC4
	.def	sub_8088CC4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8088CC4
sub_8088CC4:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	xor	ebx, ebx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdi, QWORD PTR 24[rax]
	lea	rsi, 320[rdi]
.L2:
	movzx	eax, BYTE PTR 589[rdi]
	mov	rcx, rsi
	cmp	eax, ebx
	setne	BYTE PTR 53[rsi]
	add	ebx, 1
	add	rsi, 64
	call	DisplaySprite
	cmp	ebx, 4
	jne	.L2
	lea	rbx, 192[rdi]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	cmp	BYTE PTR 588[rdi], 0
	jne	.L7
.L3:
	lea	rcx, 576[rdi]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L1
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, sub_8088EB4[rip]
	mov	QWORD PTR 40[rax], rdx
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	lea	rbx, 256[rdi]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L3
	.seh_endproc
	.p2align 4
	.globl	sub_8088D60
	.def	sub_8088D60;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8088D60
sub_8088D60:
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
	lea	rcx, 576[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L9
	lea	rcx, 320[rbx]
	lea	rsi, 192[rbx]
	call	DisplaySprite
	lea	rcx, 384[rbx]
	call	DisplaySprite
	lea	rcx, 448[rbx]
	call	DisplaySprite
	lea	rcx, 512[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 589[rbx]
	cmp	al, 1
	je	.L10
	test	al, -3
	je	.L23
.L12:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	cmp	BYTE PTR 588[rbx], 0
	je	.L8
	movzx	eax, BYTE PTR 589[rbx]
	lea	rsi, 256[rbx]
	cmp	al, 1
	je	.L19
	test	al, -3
	jne	.L21
	add	WORD PTR 294[rbx], 3
.L21:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L23:
	add	WORD PTR 230[rbx], 4
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L9:
	movzx	ebx, BYTE PTR 589[rbx]
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	cmp	bl, 2
	je	.L13
	ja	.L14
	test	bl, bl
	je	.L24
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 19[rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	ecx, BYTE PTR [rax]
	and	edx, 16
	call	CreateCharacterSelectionScreen
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 0
.L8:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	sub	WORD PTR 230[rbx], 4
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L19:
	sub	WORD PTR 294[rbx], 2
	jmp	.L21
.L24:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	GameStageStart
.L14:
	cmp	bl, 3
	jne	.L8
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateTitleScreenAndSkipIntro
.L13:
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	shr	cl
	movsx	r8d, BYTE PTR [rax]
	and	ecx, 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateTimeAttackLevelSelectScreen
	.seh_endproc
	.p2align 4
	.globl	sub_8089104
	.def	sub_8089104;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8089104
sub_8089104:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 328[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 392[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 456[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 520[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 200[rbx]
	call	VramFree
	cmp	BYTE PTR 588[rbx], 0
	jne	.L27
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rcx, QWORD PTR 264[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	sub_8088EB4
	.def	sub_8088EB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8088EB4
sub_8088EB4:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR 0[rbp]
	movzx	edx, WORD PTR [rdi]
	mov	r12, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 589[r12]
	test	dl, 64
	je	.L29
	test	al, al
	jne	.L51
	and	edx, 128
	je	.L31
.L41:
	add	eax, 1
	mov	ecx, 108
	mov	BYTE PTR 589[r12], al
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 589[r12]
.L31:
	lea	rsi, 320[r12]
	xor	ebx, ebx
.L33:
	cmp	eax, ebx
	mov	rcx, rsi
	setne	BYTE PTR 53[rsi]
	add	ebx, 1
	add	rsi, 64
	call	DisplaySprite
	cmp	ebx, 4
	je	.L32
	movzx	eax, BYTE PTR 589[r12]
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L29:
	and	edx, 128
	je	.L31
	cmp	al, 3
	je	.L31
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L32:
	lea	rbx, 192[r12]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	cmp	BYTE PTR 588[r12], 0
	jne	.L52
.L34:
	test	BYTE PTR [rdi], 1
	je	.L28
	cmp	BYTE PTR 589[r12], 3
	jne	.L53
.L37:
	xor	eax, eax
	mov	ecx, 106
	mov	DWORD PTR 578[r12], 1
	lea	rdi, sub_8088D60[rip]
	mov	WORD PTR 586[r12], ax
	call	m4aSongNumStart
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 4096
	call	m4aMPlayFadeOut
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
.L28:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rcx, QWORD PTR 200[r12]
	lea	rsi, gUnknown_080E0474[rip]
	call	VramFree
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	eax, BYTE PTR [rdi]
	add	eax, 5
	cdqe
	mov	ecx, DWORD PTR [rsi+rax*8]
	call	VramMalloc
	mov	r8d, 16639
	mov	QWORD PTR 200[r12], rax
	movsx	eax, BYTE PTR [rdi]
	mov	WORD PTR 241[r12], r8w
	add	eax, 5
	cmp	BYTE PTR 589[r12], 1
	cdqe
	movzx	edx, WORD PTR 4[rsi+rax*8]
	movzx	eax, BYTE PTR 6[rsi+rax*8]
	mov	WORD PTR 210[r12], dx
	mov	BYTE PTR 240[r12], al
	je	.L54
.L38:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 588[r12], 0
	je	.L37
	mov	rcx, QWORD PTR 264[r12]
	lea	rbx, 256[r12]
	call	VramFree
	mov	ecx, 9
	call	VramMalloc
	mov	edx, 456
	mov	ecx, -256
	cmp	BYTE PTR 589[r12], 1
	mov	QWORD PTR 264[r12], rax
	mov	WORD PTR 274[r12], dx
	mov	WORD PTR 304[r12], cx
	mov	BYTE PTR 306[r12], 64
	jne	.L40
	and	DWORD PTR 288[r12], -1025
.L40:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L52:
	lea	rsi, 256[r12]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L51:
	sub	eax, 1
	mov	ecx, 108
	mov	BYTE PTR 589[r12], al
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 589[r12]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L54:
	and	DWORD PTR 224[r12], -1025
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	sub_8088944
	.def	sub_8088944;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8088944
sub_8088944:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	edx, edx
	lea	r14, gUnknown_080E04D4[rip]
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	sub	eax, 1
	mov	rsi, rcx
	mov	ecx, 4929
	test	al, al
	lea	r13, 512[rsi]
	cmovs	eax, edx
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	xor	r8d, r8d
	xor	edi, edi
	mov	WORD PTR [rdx], cx
	mov	rdx, QWORD PTR .refptr.gBgCntRegs[rip]
	movsx	eax, al
	mov	rcx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	lea	r12d, [rax+rax*4]
	lea	rax, 576[rsi]
	mov	DWORD PTR [rdx], 117579013
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	WORD PTR [rcx], r8w
	mov	r8, QWORD PTR .LC4[rip]
	mov	DWORD PTR 8[rdx], 553582592
	mov	QWORD PTR [rdx], r8
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	BYTE PTR 2[rcx], 0
	mov	QWORD PTR [rdx], 65528
	mov	DWORD PTR 8[rdx], 0
	mov	QWORD PTR 40[rsp], rax
	.p2align 4,,10
	.p2align 3
.L62:
	mov	eax, 4
	cmp	edi, 3
	jne	.L69
.L66:
	mov	rbx, r13
	mov	edi, 5
	mov	ebp, 64
.L59:
	lea	r15d, [rax+r12]
	add	ebp, 8
	mov	ecx, DWORD PTR [r14+r15*8]
	call	VramMalloc
	mov	BYTE PTR 49[rbx], -1
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 4[r14+r15*8]
	mov	WORD PTR 40[rbx], bp
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 6[r14+r15*8]
	mov	BYTE PTR 48[rbx], al
	mov	eax, 213
	mov	WORD PTR 38[rbx], ax
.L64:
	xor	eax, eax
	mov	DWORD PTR 42[rbx], 256
	mov	rcx, rbx
	mov	WORD PTR 16[rbx], ax
	xor	eax, eax
	mov	WORD PTR 36[rbx], ax
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 4096
	call	UpdateSpriteAnimation
	cmp	edi, 5
	jne	.L62
	xor	r13d, r13d
	mov	r12d, -251
	mov	QWORD PTR 200[rsi], 0
	lea	rbp, 192[rsi]
	mov	WORD PTR 240[rsi], r12w
	mov	rcx, rbp
	xor	r14d, r14d
	lea	rdi, gUnknown_080E0474[rip]
	mov	DWORD PTR 208[rsi], 68878336
	mov	r15d, 4351
	mov	BYTE PTR 242[rsi], 16
	mov	BYTE PTR 245[rsi], 0
	mov	DWORD PTR 248[rsi], -1
	mov	QWORD PTR 224[rsi], 4096
	mov	DWORD PTR 232[rsi], 16777216
	mov	WORD PTR 236[rsi], r13w
	call	UpdateSpriteAnimation
	mov	rbx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rbx]
	mov	ecx, DWORD PTR [rdi+rax*8]
	call	VramMalloc
	mov	WORD PTR 208[rsi], r14w
	mov	rcx, rbp
	mov	QWORD PTR 200[rsi], rax
	movsx	rax, BYTE PTR [rbx]
	mov	WORD PTR 241[rsi], r15w
	movzx	edx, WORD PTR 4[rdi+rax*8]
	movzx	eax, BYTE PTR 6[rdi+rax*8]
	mov	BYTE PTR 245[rsi], 0
	mov	DWORD PTR 248[rsi], -1
	mov	BYTE PTR 240[rsi], al
	movabs	rax, 59954170039374848
	mov	QWORD PTR 224[rsi], rax
	xor	eax, eax
	mov	WORD PTR 210[rsi], dx
	mov	DWORD PTR 232[rsi], 16777411
	mov	WORD PTR 236[rsi], ax
	call	UpdateSpriteAnimation
	cmp	BYTE PTR [rbx], 1
	mov	QWORD PTR 264[rsi], 0
	je	.L70
.L63:
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	r8d, 12
	xor	r9d, r9d
	xor	ecx, ecx
	mov	WORD PTR 156[rsi], r8w
	movdqu	xmm0, XMMWORD PTR .LC10[rip]
	lea	rax, 16384[rbx]
	mov	WORD PTR 162[rsi], r9w
	mov	QWORD PTR 104[rsi], rax
	lea	rax, 59392[rbx]
	mov	QWORD PTR 120[rsi], rax
	mov	WORD PTR 114[rsi], cx
	lea	rcx, 96[rsi]
	mov	BYTE PTR 158[rsi], 0
	movups	XMMWORD PTR 140[rsi], xmm0
	call	DrawBackground
	mov	QWORD PTR 8[rsi], rbx
	xor	r10d, r10d
	mov	rcx, rsi
	add	rbx, 14336
	mov	r11d, 32
	mov	WORD PTR 18[rsi], r10w
	movdqu	xmm0, XMMWORD PTR .LC11[rip]
	mov	QWORD PTR 24[rsi], rbx
	mov	ebx, 1
	mov	WORD PTR 60[rsi], r11w
	mov	BYTE PTR 62[rsi], 0
	mov	WORD PTR 66[rsi], bx
	movups	XMMWORD PTR 44[rsi], xmm0
	call	DrawBackground
	mov	rax, QWORD PTR .LC12[rip]
	mov	ecx, 7
	mov	DWORD PTR 584[rsi], 16383
	mov	QWORD PTR 576[rsi], rax
	call	m4aSongNumStart
	mov	rcx, QWORD PTR 40[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	UpdateScreenFade
	.p2align 4,,10
	.p2align 3
.L69:
	lea	ebx, 5[rdi]
	mov	eax, edi
	add	edi, 1
	sal	rbx, 6
	add	rbx, rsi
	cmp	eax, 4
	je	.L66
	cmp	eax, 2
	je	.L60
	mov	ebp, eax
	sal	ebp, 4
	add	ebp, 24
.L61:
	lea	r15d, [rax+r12]
	mov	ecx, DWORD PTR [r14+r15*8]
	call	VramMalloc
	mov	edx, 213
	mov	BYTE PTR 49[rbx], -1
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 4[r14+r15*8]
	mov	WORD PTR 38[rbx], dx
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 6[r14+r15*8]
	mov	WORD PTR 40[rbx], bp
	mov	BYTE PTR 48[rbx], al
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	test	BYTE PTR [rdx], 2
	je	.L65
	mov	edi, 4
	mov	ebp, 48
	mov	eax, 3
	lea	rbx, 448[rsi]
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L65:
	mov	edi, 3
	mov	ebp, 56
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L70:
	mov	BYTE PTR 588[rsi], 1
	mov	ecx, 9
	mov	edi, -256
	xor	ebp, ebp
	call	VramMalloc
	mov	WORD PTR 304[rsi], di
	lea	rcx, 256[rsi]
	mov	QWORD PTR 264[rsi], rax
	movabs	rax, 49821070877791232
	mov	DWORD PTR 272[rsi], 29818880
	mov	BYTE PTR 306[rsi], 16
	mov	BYTE PTR 309[rsi], 0
	mov	DWORD PTR 312[rsi], -1
	mov	QWORD PTR 288[rsi], rax
	mov	DWORD PTR 296[rsi], 20971685
	mov	WORD PTR 300[rsi], bp
	call	UpdateSpriteAnimation
	jmp	.L63
	.seh_endproc
	.p2align 4
	.globl	CreateTimeAttackLobbyScreen
	.def	CreateTimeAttackLobbyScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTimeAttackLobbyScreen
CreateTimeAttackLobbyScreen:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, sub_8089104[rip]
	xor	r9d, r9d
	mov	edx, 592
	mov	r8d, 4096
	lea	rcx, sub_8088CC4[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 588[rcx], ax
	add	rsp, 56
	jmp	sub_8088944
	.seh_endproc
	.globl	gUnknown_080E04D4
	.section .rdata,"dr"
	.align 32
gUnknown_080E04D4:
	.long	22
	.word	1051
	.byte	0
	.space 1
	.long	32
	.word	1051
	.byte	1
	.space 1
	.long	22
	.word	1051
	.byte	2
	.space 1
	.long	22
	.word	1051
	.byte	3
	.space 1
	.long	10
	.word	1051
	.byte	4
	.space 1
	.long	24
	.word	1052
	.byte	0
	.space 1
	.long	42
	.word	1052
	.byte	1
	.space 1
	.long	36
	.word	1052
	.byte	2
	.space 1
	.long	30
	.word	1052
	.byte	3
	.space 1
	.long	8
	.word	1052
	.byte	4
	.space 1
	.long	24
	.word	1053
	.byte	0
	.space 1
	.long	36
	.word	1053
	.byte	1
	.space 1
	.long	42
	.word	1053
	.byte	2
	.space 1
	.long	36
	.word	1053
	.byte	3
	.space 1
	.long	20
	.word	1053
	.byte	4
	.space 1
	.long	24
	.word	1054
	.byte	0
	.space 1
	.long	48
	.word	1054
	.byte	1
	.space 1
	.long	36
	.word	1054
	.byte	2
	.space 1
	.long	32
	.word	1054
	.byte	3
	.space 1
	.long	8
	.word	1054
	.byte	4
	.space 1
	.long	44
	.word	1055
	.byte	0
	.space 1
	.long	44
	.word	1055
	.byte	1
	.space 1
	.long	38
	.word	1055
	.byte	2
	.space 1
	.long	32
	.word	1055
	.byte	3
	.space 1
	.long	8
	.word	1055
	.byte	4
	.space 1
	.long	20
	.word	1056
	.byte	0
	.space 1
	.long	44
	.word	1056
	.byte	1
	.space 1
	.long	40
	.word	1056
	.byte	2
	.space 1
	.long	28
	.word	1056
	.byte	3
	.space 1
	.long	12
	.word	1056
	.byte	4
	.space 1
	.globl	gUnknown_080E04C4
	.align 16
gUnknown_080E04C4:
	.long	9
	.word	455
	.byte	0
	.space 1
	.long	9
	.word	456
	.byte	0
	.space 1
	.globl	gUnknown_080E0474
	.align 32
gUnknown_080E0474:
	.long	20
	.word	0
	.byte	0
	.space 1
	.long	16
	.word	91
	.byte	0
	.space 1
	.long	30
	.word	182
	.byte	0
	.space 1
	.long	20
	.word	273
	.byte	0
	.space 1
	.long	20
	.word	364
	.byte	0
	.space 1
	.long	64
	.word	9
	.byte	3
	.space 1
	.long	64
	.word	100
	.byte	3
	.space 1
	.long	64
	.word	191
	.byte	3
	.space 1
	.long	64
	.word	282
	.byte	3
	.space 1
	.long	64
	.word	373
	.byte	3
	.space 1
	.align 8
.LC4:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 16
.LC10:
	.word	0
	.word	0
	.word	150
	.word	0
	.word	0
	.word	0
	.word	0
	.word	28
	.align 16
.LC11:
	.word	0
	.word	0
	.word	151
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC12:
	.word	1
	.word	2
	.word	0
	.word	512
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLevelSelectScreen;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
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
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
