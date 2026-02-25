	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_EggTotemMain;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggTotemMain
TaskDestructor_EggTotemMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 200[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 272[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 336[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 400[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 464[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 544[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 624[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 704[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 768[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 1144[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 832[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 960[rbx]
	test	rcx, rcx
	je	.L2
	call	VramFree
.L2:
	mov	rcx, QWORD PTR 896[rbx]
	test	rcx, rcx
	je	.L3
	call	VramFree
.L3:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_CallTaskDestroyTotem;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CallTaskDestroyTotem
Task_CallTaskDestroyTotem:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_803F698;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_803F698
sub_803F698:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 1[rcx]
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 230[rcx], ax
	movzx	eax, WORD PTR 5[rcx]
	lea	rsi, 192[rcx]
	mov	rbx, rcx
	sub	ax, WORD PTR 4[rdi]
	lea	rbp, 264[rbx]
	lea	r13, 144[rbx]
	mov	WORD PTR 232[rcx], ax
	mov	rcx, rsi
	lea	r14, 760[rbx]
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 824[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rsi
	mov	WORD PTR 862[rbx], ax
	mov	eax, -82
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 864[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	mov	esi, -14
	call	DisplaySprite
	movzx	eax, WORD PTR 13[rbx]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rbp
	mov	WORD PTR 302[rbx], ax
	mov	eax, esi
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 17[rbx]
	mov	WORD PTR 304[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	rbp, 328[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 21[rbx]
	sub	si, WORD PTR 4[rdi]
	mov	rcx, rbp
	add	si, WORD PTR 25[rbx]
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 368[rbx], si
	lea	rsi, 392[rbx]
	mov	WORD PTR 366[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	rbp, 456[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 29[rbx]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rsi
	mov	WORD PTR 430[rbx], ax
	mov	eax, -8
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 33[rbx]
	mov	WORD PTR 432[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 60[rbx]
	call	DisplaySprite
	mov	r12, QWORD PTR .refptr.gSineTable[rip]
.L18:
	movzx	eax, WORD PTR 1[rsi]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rbp
	mov	WORD PTR 38[rbp], ax
	movzx	eax, WORD PTR 5[rsi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 40[rbp], ax
	movzx	eax, WORD PTR 12[rsi]
	movzx	eax, WORD PTR [r12+rax*2]
	sar	ax, 9
	add	eax, 32
	mov	BYTE PTR 50[rbp], al
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	movsx	ax, BYTE PTR 23[rsi]
	test	al, al
	je	.L13
	cmp	BYTE PTR 20[rsi], 0
	mov	r15, r14
	je	.L15
	lea	r15, 696[rbx]
.L15:
	mov	edx, DWORD PTR 32[r15]
	test	al, al
	jle	.L16
	and	dh, -9
	xor	ecx, ecx
.L17:
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 5[rsi]
	mov	DWORD PTR 32[r15], edx
	add	eax, ecx
	movzx	edx, WORD PTR 1[rsi]
	sub	dx, WORD PTR [rdi]
	mov	rcx, r15
	mov	WORD PTR 38[r15], dx
	mov	WORD PTR 40[r15], ax
	call	UpdateSpriteAnimation
	mov	rcx, r15
	call	DisplaySprite
.L13:
	add	rsi, 28
	add	rbp, 80
	cmp	rsi, r13
	jne	.L18
	cmp	QWORD PTR 896[rbx], 0
	je	.L12
	mov	eax, -16
	sub	ax, WORD PTR [rdi]
	add	ax, WORD PTR 1[rbx]
	mov	WORD PTR 990[rbx], ax
	movzx	eax, WORD PTR 5[rbx]
	lea	rsi, 952[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	rcx, rsi
	mov	WORD PTR 992[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 888[rbx]
	call	DisplaySprite
	mov	eax, -40
	sub	ax, WORD PTR [rdi]
	mov	rcx, rsi
	add	ax, WORD PTR 1[rbx]
	mov	WORD PTR 926[rbx], ax
	mov	eax, -98
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 928[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L16:
	or	dh, 8
	mov	ecx, -1
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L12:
	add	rsp, 40
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
	.def	sub_803F878;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_803F878
sub_803F878:
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
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, rcx
	lea	r12, 12[rcx]
	lea	rdi, 264[rcx]
	lea	rsi, 456[rcx]
.L25:
	movzx	eax, WORD PTR 1[r12]
	sub	ax, WORD PTR 0[rbp]
	mov	rcx, rdi
	add	r12, 8
	mov	WORD PTR 38[rdi], ax
	movzx	eax, WORD PTR -3[r12]
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 40[rdi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rdi, 64
	call	DisplaySprite
	cmp	rsi, rdi
	jne	.L25
	xor	r12d, r12d
	cmp	BYTE PTR 55[rbx], 0
	je	.L36
.L26:
	movzx	eax, WORD PTR 157[rbx]
	sub	ax, WORD PTR 0[rbp]
	lea	rdi, 1080[rbx]
	mov	WORD PTR 1118[rbx], ax
	movzx	eax, WORD PTR 161[rbx]
	mov	rcx, rdi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 1120[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 192[rbx]
	call	DisplaySprite
	mov	eax, 649
	mov	edx, -256
	mov	rcx, rdi
	mov	WORD PTR 210[rbx], ax
	movzx	eax, WORD PTR 145[rbx]
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 240[rbx], dx
	mov	WORD PTR 230[rbx], ax
	movzx	eax, WORD PTR 149[rbx]
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 232[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	BYTE PTR 58[rbx], 0
	jne	.L28
	movzx	edx, WORD PTR 149[rbx]
	sub	dx, WORD PTR 4[rbp]
	lea	rdi, 824[rbx]
	movzx	eax, WORD PTR 145[rbx]
	lea	ecx, -81[rdx]
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 862[rbx], ax
	mov	WORD PTR 864[rbx], cx
	cmp	ax, 49
	jle	.L37
.L29:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
.L28:
	lea	rdi, 60[rbx]
	lea	r13, 696[rbx]
.L30:
	movzx	eax, WORD PTR 1[rdi]
	sub	ax, WORD PTR 0[rbp]
	mov	rcx, rsi
	add	rsi, 80
	mov	WORD PTR -42[rsi], ax
	movzx	eax, WORD PTR 5[rdi]
	add	rdi, 28
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR -40[rsi], ax
	call	DisplaySprite
	cmp	rsi, r13
	jne	.L30
	cmp	QWORD PTR 896[rbx], 0
	je	.L24
	movzx	eax, WORD PTR 185[rbx]
	sub	ax, WORD PTR 0[rbp]
	lea	rsi, 888[rbx]
	mov	WORD PTR 926[rbx], ax
	movzx	eax, WORD PTR 189[rbx]
	mov	rcx, rsi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 928[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
.L24:
	mov	eax, r12d
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
.L36:
	movzx	eax, WORD PTR 169[rbx]
	sub	ax, WORD PTR 0[rbp]
	lea	rdi, 1016[rbx]
	mov	WORD PTR 1054[rbx], ax
	movzx	eax, WORD PTR 173[rbx]
	mov	rcx, rdi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 1056[rbx], ax
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L27
	mov	BYTE PTR 55[rbx], 1
	mov	r12d, 1
.L27:
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L37:
	sub	eax, 4
	sub	edx, 79
	mov	r8d, 8192
	movsx	edx, dx
	movsx	ecx, ax
	call	CreateEggmobileEscapeSequence
	mov	BYTE PTR 58[rbx], 1
	jmp	.L29
	.seh_endproc
	.p2align 4
	.def	Task_EggTotemBullet;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggTotemBullet
Task_EggTotemBullet:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	r10, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r10]
	movsx	edi, WORD PTR 8[rbx]
	movsx	esi, WORD PTR 10[rbx]
	mov	eax, DWORD PTR [rbx]
	mov	r8d, DWORD PTR 4[rbx]
	mov	ecx, edi
	mov	r11d, esi
	test	BYTE PTR 36[r9], -128
	je	.L39
	lea	edx, -1280[rax+rdi]
	add	r8d, esi
.L40:
	mov	DWORD PTR 4[rbx], r8d
	sar	r8d, 8
	mov	DWORD PTR [rbx], edx
	sar	edx, 8
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], r8w
	cmp	dx, -32
	jge	.L41
	test	cx, cx
	js	.L42
	cmp	r8w, -32
	jl	.L56
	cmp	r8w, 272
	jle	.L51
	test	r11w, r11w
	jg	.L42
.L51:
	cmp	dx, -512
	jl	.L42
.L46:
	mov	rax, QWORD PTR 16[rbx]
	lea	rsi, 24[rbx]
	cmp	BYTE PTR 50[rax], 0
	jne	.L57
.L53:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L41:
	cmp	dx, 458
	jle	.L58
	test	cx, cx
	jg	.L42
	cmp	r8w, -32
	jge	.L48
	test	r11w, r11w
	js	.L42
.L49:
	cmp	dx, 752
	jle	.L46
.L42:
	mov	rcx, r10
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 56[rbp]
	sal	edx, 8
	add	edx, edi
	add	edx, eax
	mov	eax, DWORD PTR 60[rbp]
	sal	eax, 8
	add	eax, esi
	add	r8d, eax
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L56:
	test	r11w, r11w
	jns	.L51
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L48:
	cmp	r8w, 272
	jle	.L49
	test	r11w, r11w
	jle	.L49
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L58:
	cmp	r8w, -32
	jge	.L45
	test	r11w, r11w
	jns	.L46
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, rsi
	add	r8d, DWORD PTR 4[rax]
	add	edx, DWORD PTR [rax]
	mov	QWORD PTR 32[rsp], r9
	xor	r9d, r9d
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L53
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 53[rax], 0
	jne	.L53
	mov	edx, 629
	mov	ecx, -255
	mov	BYTE PTR 52[rax], 30
	mov	WORD PTR 842[rax], dx
	mov	WORD PTR 872[rax], cx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L45:
	cmp	r8w, 272
	jle	.L46
	test	r11w, r11w
	jle	.L46
	jmp	.L42
	.seh_endproc
	.p2align 4
	.def	sub_803FB88;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_803FB88
sub_803FB88:
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
	xor	esi, esi
	lea	rbp, gUnknown_080D7BDC[rip]
	xor	r12d, r12d
	movsx	edx, WORD PTR 0[rbp+rsi*2]
	mov	rdi, QWORD PTR .refptr.sub_801EC3C[rip]
	movsx	eax, WORD PTR 8[rcx]
	movq	xmm1, QWORD PTR [rcx]
	movd	xmm0, eax
	movsx	eax, WORD PTR 10[rcx]
	movd	xmm2, eax
	mov	rbx, rcx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movd	eax, xmm0
	movq	QWORD PTR [rcx], xmm0
	add	edx, eax
	mov	DWORD PTR 12[rbx+rsi*8], edx
	test	rsi, rsi
	je	.L64
.L60:
	mov	ecx, DWORD PTR 16[rbx+rsi*8]
	mov	QWORD PTR 32[rsp], rdi
	sar	edx, 8
	mov	r9d, 8
	mov	r8d, 1
	add	r12d, ecx
	sar	ecx, 8
	sub	ecx, 1
	call	sub_801F100
	add	eax, 1
	sal	eax, 8
	add	DWORD PTR 16[rbx+rsi*8], eax
	cmp	rsi, 2
	je	.L62
	mov	eax, DWORD PTR [rbx]
	mov	esi, 2
.L65:
	movsx	edx, WORD PTR 0[rbp+rsi*2]
	add	edx, eax
	mov	DWORD PTR 12[rbx+rsi*8], edx
	test	rsi, rsi
	jne	.L60
.L64:
	add	DWORD PTR 16[rbx], 6
	mov	ecx, DWORD PTR 16[rbx]
	sar	edx, 8
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rdi
	mov	r8d, 1
	mov	esi, 1
	add	r12d, ecx
	sar	ecx, 8
	sub	ecx, 1
	call	sub_801F100
	add	eax, 1
	sal	eax, 8
	add	DWORD PTR 16[rbx], eax
	mov	eax, DWORD PTR [rbx]
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L62:
	movsx	rax, r12d
	sar	r12d, 31
	movzx	edx, WORD PTR 4[rbx]
	imul	rax, rax, 1431655766
	shr	rax, 32
	sub	eax, r12d
	sub	eax, 512
	sub	edx, eax
	mov	DWORD PTR 4[rbx], eax
	mov	WORD PTR 48[rbx], dx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8040D74.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8040D74.part.0
sub_8040D74.part.0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	edx, BYTE PTR 50[rcx]
	mov	eax, edx
	mov	rbx, rcx
	test	edx, edx
	je	.L66
	sub	eax, 1
	and	edx, 1
	mov	BYTE PTR 50[rcx], al
	je	.L75
	mov	ecx, 235
	call	m4aSongNumStart
.L69:
	movzx	eax, BYTE PTR 50[rbx]
	mov	ecx, 629
	mov	BYTE PTR 53[rbx], 30
	mov	WORD PTR 842[rbx], cx
	test	al, al
	jne	.L70
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 872[rbx], 3
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
	je	.L71
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L71
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
.L71:
	mov	BYTE PTR 873[rbx], -1
.L66:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L70:
	mov	edx, -254
	mov	WORD PTR 872[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 28
	je	.L66
	cmp	al, 4
	jne	.L66
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8040E78;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8040E78
sub_8040E78:
	.seh_endprologue
	movzx	eax, BYTE PTR 53[rcx]
	test	al, al
	je	.L77
	sub	eax, 1
	mov	BYTE PTR 52[rcx], 0
	mov	BYTE PTR 53[rcx], al
	test	al, al
	jne	.L76
	cmp	BYTE PTR 50[rcx], 0
	mov	edx, 3
	mov	r8d, 629
	mov	BYTE PTR 873[rcx], -1
	cmove	eax, edx
	mov	WORD PTR 842[rcx], r8w
	mov	BYTE PTR 872[rcx], al
.L76:
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	movzx	eax, BYTE PTR 52[rcx]
	test	al, al
	je	.L76
	sub	eax, 1
	mov	BYTE PTR 52[rcx], al
	test	al, al
	jne	.L76
	mov	eax, 629
	mov	edx, -256
	mov	WORD PTR 842[rcx], ax
	mov	WORD PTR 872[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_803F3E8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_803F3E8
Task_803F3E8:
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
	sub	rsp, 216
	.seh_stackalloc	216
	movups	XMMWORD PTR 192[rsp], xmm6
	.seh_savexmm	xmm6, 192
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 51[rbx]
	test	al, al
	je	.L86
	sub	eax, 1
	mov	BYTE PTR 51[rbx], al
.L87:
	mov	rcx, rbx
	lea	rdi, 60[rbx]
	lea	r14, 144[rbx]
	call	sub_803FB88
	mov	rax, rdi
	lea	r8, gUnknown_080D7E78[rip]
.L102:
	movzx	edx, BYTE PTR 19[rax]
	test	dl, dl
	je	.L96
	movzx	r9d, BYTE PTR 18[rax]
	sub	WORD PTR 14[rax], 1
	movzx	ecx, dl
	mov	r11, QWORD PTR [r8+r9*8]
	lea	rcx, [r11+rcx*8]
	je	.L97
	movzx	r11d, WORD PTR 2[rcx]
	movzx	edx, WORD PTR 16[rax]
	mov	rbp, QWORD PTR .refptr.gSineTable[rip]
	movzx	esi, WORD PTR 4[rcx]
	add	edx, r11d
	and	dx, 1023
	mov	r10d, esi
	mov	WORD PTR 16[rax], dx
	movzx	edx, dx
	lea	r9d, 256[rdx]
	movsx	edx, WORD PTR 0[rbp+rdx*2]
	movsx	r9, r9d
	movsx	r9d, WORD PTR 0[rbp+r9*2]
	imul	edx, esi
	imul	r9d, esi
	sar	edx, 14
	mov	WORD PTR 10[rax], dx
	sar	r9d, 14
	or	r10w, r11w
	mov	WORD PTR 8[rax], r9w
	jne	.L198
	cmp	WORD PTR [rcx], 32
	je	.L98
.L198:
	movsx	edx, dx
.L100:
	movsx	ecx, WORD PTR 8[rax]
	movq	xmm1, QWORD PTR [rax]
	lea	esi, 1280[rcx]
	movsx	ecx, WORD PTR 48[rbx]
	movd	xmm0, esi
	sub	edx, ecx
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
.L96:
	add	rax, 28
	cmp	r14, rax
	jne	.L102
	lea	rdx, sTotemDiscYs[rip]
	mov	rax, rdi
.L104:
	cmp	BYTE PTR 19[rax], 0
	jne	.L103
	movsx	ecx, WORD PTR [rdx]
	movd	xmm0, DWORD PTR [rbx]
	add	ecx, DWORD PTR 4[rbx]
	movd	xmm5, ecx
	punpckldq	xmm0, xmm5
	movq	QWORD PTR [rax], xmm0
.L103:
	add	rax, 28
	add	rdx, 2
	cmp	r14, rax
	jne	.L104
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	lea	rsi, 82[rbx]
	lea	r10, 166[rbx]
	lea	r12, gUnknown_080D7E78[rip]
.L128:
	movzx	eax, BYTE PTR -3[rsi]
	test	al, al
	je	.L106
	movzx	edx, BYTE PTR -4[rsi]
	mov	rcx, QWORD PTR [r12+rdx*8]
	lea	rax, [rcx+rax*8]
	cmp	WORD PTR [rax], 60
	je	.L201
.L106:
	add	rsi, 28
	cmp	r10, rsi
	jne	.L128
	cmp	BYTE PTR 50[rbx], 0
	lea	rsi, 456[rbx]
	je	.L138
.L137:
	mov	r8d, DWORD PTR 4[rdi]
	mov	edx, DWORD PTR [rdi]
	mov	QWORD PTR 32[rsp], rbp
	mov	rcx, rsi
	mov	r9d, 1
	sar	edx, 8
	sar	r8d, 8
	call	Coll_Player_Enemy
	test	eax, eax
	je	.L202
.L133:
	add	rdi, 28
	add	rsi, 80
	cmp	r14, rdi
	jne	.L137
.L138:
	mov	esi, DWORD PTR [rbx]
	mov	edi, DWORD PTR 4[rbx]
	lea	r12, 192[rbx]
	mov	r9d, 1
	mov	rcx, r12
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR [r15]
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 230[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[r15]
	mov	WORD PTR 232[rbx], ax
	mov	QWORD PTR 32[rsp], rbp
	call	Coll_Player_Enemy
	mov	QWORD PTR 32[rsp], rbp
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, r12
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	jne	.L203
	cmp	BYTE PTR 53[rbx], 0
	je	.L204
.L140:
	mov	eax, DWORD PTR 4[rbx]
	mov	ecx, DWORD PTR [rbx]
	lea	edx, -20480[rax]
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 53[rbx], 0
	je	.L205
.L143:
	mov	rcx, rbx
	call	sub_8040E78
	call	sub_803F698
	cmp	BYTE PTR 53[rbx], 0
	je	.L145
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rdx, gUnknown_080D7F14[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rdx
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	movdqu	xmm6, XMMWORD PTR [rax]
	movups	XMMWORD PTR 256[rdx], xmm6
	movdqu	xmm0, XMMWORD PTR 16[rax]
.L146:
	movups	XMMWORD PTR 272[rdx], xmm0
	movzx	eax, BYTE PTR 54[rbx]
	test	al, al
	je	.L147
	sub	eax, 1
	lea	rcx, gUnknown_080D7F14[rip]
	mov	BYTE PTR 54[rbx], al
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm6, XMMWORD PTR [rax]
	movups	XMMWORD PTR 352[rdx], xmm6
	movdqu	xmm0, XMMWORD PTR 16[rax]
.L148:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	movups	XMMWORD PTR 368[rdx], xmm0
	or	DWORD PTR [rax], 2
	cmp	BYTE PTR 50[rbx], 0
	je	.L206
.L85:
	movups	xmm6, XMMWORD PTR 192[rsp]
	add	rsp, 216
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
.L97:
	movzx	r9d, WORD PTR 8[rcx]
	test	r9w, r9w
	jne	.L101
	xor	r9d, r9d
	xor	r10d, r10d
	mov	DWORD PTR 8[rax], 0
	xor	edx, edx
	mov	WORD PTR 18[rax], r9w
	mov	WORD PTR 16[rax], r10w
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L202:
	mov	r8d, DWORD PTR 4[rdi]
	mov	edx, DWORD PTR [rdi]
	mov	QWORD PTR 32[rsp], rbp
	mov	rcx, rsi
	mov	r9d, 2
	sar	edx, 8
	sar	r8d, 8
	call	Coll_Player_Enemy
	test	eax, eax
	jne	.L133
	mov	r8d, DWORD PTR 4[rdi]
	mov	edx, DWORD PTR [rdi]
	mov	r12d, DWORD PTR 36[rbp]
	sar	r8d, 8
	sar	edx, 8
	and	r12d, 8
	je	.L135
	mov	r9, rbp
	mov	rcx, rsi
	mov	r12, QWORD PTR 64[rbp]
	call	Coll_Player_Platform
	mov	edx, DWORD PTR 36[rbp]
	test	dl, 8
	je	.L136
	test	eax, 65536
	jne	.L207
.L136:
	cmp	rsi, r12
	jne	.L133
	mov	eax, edx
	mov	ecx, edx
	mov	QWORD PTR 64[rbp], 0
	and	eax, -265
	and	ecx, -9
	or	eax, 2
	and	dh, 1
	cmovne	eax, ecx
	mov	DWORD PTR 36[rbp], eax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L201:
	cmp	WORD PTR 2[rax], 0
	jne	.L106
	cmp	WORD PTR 4[rax], 0
	jne	.L106
	movzx	edx, WORD PTR -8[rsi]
	cmp	dx, 60
	je	.L208
	cmp	dx, 47
	ja	.L109
	cmp	dx, 30
	je	.L209
	movzx	eax, BYTE PTR 1[rsi]
	cmp	dx, 17
	ja	.L112
	test	al, al
	je	.L106
	cmp	BYTE PTR -1[rsi], 0
	je	.L118
.L200:
	add	eax, 1
	mov	BYTE PTR 1[rsi], al
.L112:
	test	al, al
	je	.L106
	cmp	BYTE PTR 54[rbx], 0
	jne	.L106
	cmp	BYTE PTR -2[rsi], 0
	je	.L106
	cmp	BYTE PTR 50[rbx], 0
	je	.L106
	cbw
	add	ax, WORD PTR -17[rsi]
	xor	r9d, r9d
	mov	QWORD PTR 88[rsp], r10
	movsx	edx, ax
	movsx	eax, WORD PTR -21[rsi]
	mov	QWORD PTR 32[rsp], rbp
	lea	rcx, 696[rbx]
	movd	xmm3, edx
	mov	DWORD PTR 56[rsp], edx
	mov	r8d, edx
	movd	xmm6, eax
	mov	edx, eax
	mov	QWORD PTR 64[rsp], rcx
	mov	DWORD PTR 80[rsp], eax
	punpckldq	xmm6, xmm3
	call	Coll_Player_Boss_Attack
	mov	ecx, DWORD PTR 56[rsp]
	mov	r10, QWORD PTR 88[rsp]
	sal	ecx, 8
	mov	DWORD PTR 72[rsp], ecx
	mov	ecx, DWORD PTR 80[rsp]
	sal	ecx, 8
	cmp	eax, 1
	mov	DWORD PTR 84[rsp], ecx
	je	.L210
	mov	edx, DWORD PTR 72[rsp]
	mov	ecx, DWORD PTR 84[rsp]
	mov	QWORD PTR 88[rsp], r10
	call	Player_UpdateHomingPosition
	mov	QWORD PTR 32[rsp], rbp
	mov	r8d, DWORD PTR 56[rsp]
	xor	r9d, r9d
	mov	edx, DWORD PTR 80[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	call	Coll_Cheese_Enemy_Attack
	mov	r10, QWORD PTR 88[rsp]
	cmp	eax, 1
	jne	.L106
.L155:
	movzx	eax, BYTE PTR -2[rsi]
	mov	QWORD PTR 56[rsp], r10
	sub	eax, 1
	mov	BYTE PTR -2[rsi], al
	test	al, al
	jne	.L125
	movq	xmm0, QWORD PTR [r15]
	xor	r8d, r8d
	mov	rdx, rsi
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rcx, 144[rsp]
	mov	DWORD PTR 152[rsp], r8d
	add	rax, 76160
	psubd	xmm6, xmm0
	mov	WORD PTR 176[rsp], 0
	mov	QWORD PTR 144[rsp], rax
	mov	rax, QWORD PTR .LC4[rip]
	movq	QWORD PTR 168[rsp], xmm6
	mov	QWORD PTR 156[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	mov	ecx, 50000
	mov	r10, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR .refptr.gLevelScore[rip]
	mov	r9d, DWORD PTR [rdx]
	lea	eax, 500[r9]
	mov	DWORD PTR [rdx], eax
	cdq
	idiv	ecx
	mov	r8d, eax
	mov	eax, r9d
	cdq
	idiv	ecx
	cmp	r8d, eax
	je	.L126
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L126
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	mov	edx, r8d
	sub	edx, eax
	movzx	eax, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L126:
	mov	ecx, 144
	mov	QWORD PTR 56[rsp], r10
	call	m4aSongNumStart
	mov	rcx, rbp
	call	Coll_Player_Enemy_AdjustSpeed
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	r10, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
.L127:
	and	BYTE PTR [rsi], 127
	mov	BYTE PTR 54[rbx], 30
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L147:
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	movups	XMMWORD PTR 352[rdx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC2[rip]
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L145:
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	movups	XMMWORD PTR 256[rdx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC2[rip]
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L101:
	add	edx, 1
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 14[rax], r9w
	mov	BYTE PTR 19[rax], dl
	movzx	edx, WORD PTR 10[rcx]
	add	dx, WORD PTR 16[rax]
	movzx	r9d, WORD PTR 12[rcx]
	and	dx, 1023
	mov	WORD PTR 16[rax], dx
	movzx	edx, dx
	lea	ecx, 256[rdx]
	movsx	edx, WORD PTR [r10+rdx*2]
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [r10+rcx*2]
	imul	edx, r9d
	imul	ecx, r9d
	sar	edx, 14
	mov	WORD PTR 10[rax], dx
	sar	ecx, 14
	mov	WORD PTR 8[rax], cx
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L204:
	mov	rcx, rbx
	call	sub_8040D74.part.0
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L203:
	mov	QWORD PTR 32[rsp], rbp
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, r12
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L140
	cmp	BYTE PTR 53[rbx], 0
	mov	BYTE PTR 52[rbx], 30
	jne	.L140
	mov	edx, 629
	mov	ecx, -255
	mov	WORD PTR 842[rbx], dx
	mov	WORD PTR 872[rbx], cx
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L86:
	mov	rdi, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	eax, -85
	mov	BYTE PTR 51[rbx], 80
	imul	edx, DWORD PTR [rdi], 1663525
	add	edx, 1013904223
	mul	dl
	mov	DWORD PTR [rdi], edx
	mov	esi, eax
	shr	si, 9
	lea	eax, [rsi+rsi*2]
	mov	esi, edx
	sub	esi, eax
	movzx	edx, sil
	lea	rax, 0[0+rdx*8]
	sub	rax, rdx
	cmp	BYTE PTR 79[rbx+rax*4], 0
	jne	.L87
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	ecx, 246
	mov	ebp, DWORD PTR [rax]
	call	m4aSongNumStart
	imul	eax, DWORD PTR [rdi], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdi], eax
	test	al, 1
	je	.L94
	test	sil, sil
	je	.L211
	cmp	sil, 1
	jne	.L94
	cmp	BYTE PTR 135[rbx], 0
	jne	.L94
	lea	rdx, gUnknown_080D7EA0[rip+41]
	mov	eax, 1
	lea	r8, 1[rdx]
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L206:
	call	Player_DisableInputAndBossTimer
	cmp	QWORD PTR 64[rbp], 0
	mov	eax, DWORD PTR 36[rbp]
	je	.L150
.L151:
	and	eax, -9
	mov	QWORD PTR 64[rbp], 0
	or	eax, 2
	mov	DWORD PTR 36[rbp], eax
.L152:
	movd	xmm2, DWORD PTR [rbx]
	movq	xmm0, QWORD PTR [rbx]
	mov	BYTE PTR 84[rbx], 1
	mov	rax, QWORD PTR .LC8[rip]
	mov	BYTE PTR 112[rbx], 13
	movdqu	xmm1, xmm2
	pshufd	xmm3, xmm0, 0xe5
	movd	edi, xmm3
	mov	DWORD PTR 44[rbx], -50330368
	punpckldq	xmm1, xmm3
	sub	edi, 6656
	mov	QWORD PTR 36[rbx], rax
	mov	eax, DWORD PTR .LC12[rip]
	punpcklqdq	xmm1, xmm1
	movd	xmm3, edi
	paddd	xmm1, XMMWORD PTR .LC7[rip]
	cmp	QWORD PTR 896[rbx], 0
	punpckldq	xmm2, xmm3
	mov	DWORD PTR 152[rbx], eax
	movups	XMMWORD PTR 12[rbx], xmm1
	movq	xmm1, QWORD PTR .LC9[rip]
	mov	DWORD PTR 164[rbx], -33553152
	paddd	xmm1, xmm0
	mov	DWORD PTR 68[rbx], eax
	mov	DWORD PTR 176[rbx], 1280
	mov	DWORD PTR 96[rbx], eax
	mov	DWORD PTR 124[rbx], eax
	mov	BYTE PTR 140[rbx], 25
	movq	QWORD PTR 28[rbx], xmm1
	movq	QWORD PTR 156[rbx], xmm0
	movq	QWORD PTR 144[rbx], xmm0
	movq	QWORD PTR 168[rbx], xmm2
	je	.L153
	movq	xmm1, QWORD PTR .LC14[rip]
	mov	eax, 222
	mov	BYTE PTR 936[rbx], 1
	mov	WORD PTR 906[rbx], ax
	paddd	xmm0, xmm1
	movq	QWORD PTR 184[rbx], xmm0
.L153:
	mov	rax, QWORD PTR 0[r13]
	lea	rdi, Task_8041138[rip]
	mov	DWORD PTR 55[rbx], 1280
	mov	QWORD PTR 40[rax], rdi
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L205:
	mov	QWORD PTR 32[rsp], rbp
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, r12
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L143
	cmp	BYTE PTR 53[rbx], 0
	jne	.L143
	mov	rcx, rbx
	call	sub_8040D74.part.0
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L135:
	mov	r9, rbp
	mov	rcx, rsi
	call	Coll_Player_Platform
	test	BYTE PTR 36[rbp], 8
	je	.L133
	test	eax, 65536
	je	.L133
.L154:
	movq	xmm1, QWORD PTR .LC5[rip]
	movsx	ecx, WORD PTR 8[rdi]
	sal	eax, 8
	cwde
	movd	xmm0, ecx
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR 12[rbp]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rbp], xmm0
	test	r12d, r12d
	jne	.L133
	sub	WORD PTR 20[rbp], 1280
	jmp	.L133
.L98:
	movzx	esi, WORD PTR 12[rax]
	movsx	edx, dx
	lea	ecx, 16[rsi]
	and	cx, 1023
	mov	WORD PTR 12[rax], cx
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L150:
	test	al, 8
	je	.L152
	jmp	.L151
.L94:
	mov	eax, ebp
	lea	rdx, gUnknown_080D7ED4[rip]
	and	eax, 3
	lea	eax, [rax+rax*2]
	add	eax, esi
	movzx	eax, al
	mov	rdx, QWORD PTR [rdx+rax*8]
	movzx	eax, BYTE PTR [rdx]
	lea	r8, 1[rdx]
	sub	al, 1
	js	.L87
.L90:
	movsx	rax, al
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	r10, gUnknown_080D7E78[rip]
	lea	r11, 3[rdx+rax*2]
	.p2align 4,,10
	.p2align 3
.L95:
	movsx	rax, BYTE PTR [r8]
	movsx	rdx, BYTE PTR 1[r8]
	add	r8, 2
	mov	rcx, QWORD PTR [r10+rdx*8]
	mov	rsi, rdx
	lea	rdx, 0[0+rax*8]
	sub	rdx, rax
	lea	rax, [rbx+rdx*4]
	movzx	edx, WORD PTR 2[rcx]
	mov	BYTE PTR 78[rax], sil
	movzx	esi, WORD PTR 8[rcx]
	mov	WORD PTR 76[rax], dx
	mov	WORD PTR 74[rax], si
	movzx	esi, WORD PTR 12[rcx]
	lea	ecx, 256[rdx]
	movsx	rdx, edx
	movsx	rcx, ecx
	movsx	edx, WORD PTR [r9+rdx*2]
	mov	BYTE PTR 79[rax], 1
	movsx	ecx, WORD PTR [r9+rcx*2]
	imul	edx, esi
	imul	ecx, esi
	mov	esi, 768
	mov	WORD PTR 72[rax], si
	sar	edx, 14
	sar	ecx, 14
	mov	WORD PTR 70[rax], dx
	mov	WORD PTR 68[rax], cx
	cmp	r8, r11
	jne	.L95
	jmp	.L87
.L208:
	mov	eax, DWORD PTR -18[rsi]
	cmp	DWORD PTR 16[rbp], eax
	setl	BYTE PTR -1[rsi]
	or	BYTE PTR [rsi], -128
.L109:
	cmp	BYTE PTR -1[rsi], 0
	movzx	eax, BYTE PTR 1[rsi]
	je	.L200
.L118:
	sub	eax, 1
	mov	BYTE PTR 1[rsi], al
	jmp	.L112
.L207:
	cmp	rsi, r12
	sete	r12b
	movzx	r12d, r12b
	jmp	.L154
.L211:
	cmp	BYTE PTR 135[rbx], 0
	jne	.L212
	lea	rdx, gUnknown_080D7EA0[rip+36]
	mov	eax, 1
	lea	r8, 1[rdx]
	jmp	.L90
.L209:
	cmp	BYTE PTR -2[rsi], 0
	je	.L199
	movzx	eax, BYTE PTR [rsi]
	test	al, al
	js	.L213
.L116:
	and	eax, 127
	mov	BYTE PTR [rsi], al
.L199:
	movzx	eax, BYTE PTR 1[rsi]
	jmp	.L112
.L212:
	cmp	BYTE PTR 107[rbx], 0
	jne	.L94
	lea	rdx, gUnknown_080D7EA0[rip+46]
	mov	eax, 1
	lea	r8, 1[rdx]
	jmp	.L90
.L213:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	edx, DWORD PTR [rcx], 1663525
	add	edx, 1013904223
	mov	DWORD PTR [rcx], edx
	and	edx, 1
	jne	.L116
	movzx	eax, BYTE PTR -1[rsi]
	movsx	edx, BYTE PTR 1[rsi]
	xor	r9d, r9d
	mov	QWORD PTR 72[rsp], r10
	mov	r11d, DWORD PTR -22[rsi]
	mov	r8d, 24832
	lea	ecx, 0[0+rax*4]
	sal	edx, 8
	add	edx, DWORD PTR -18[rsi]
	mov	QWORD PTR 32[rsp], 0
	sub	eax, ecx
	mov	DWORD PTR 80[rsp], r11d
	sal	eax, 8
	lea	ecx, [rax+rdx]
	mov	edx, 88
	mov	DWORD PTR 56[rsp], ecx
	lea	rcx, Task_EggTotemBullet[rip]
	call	TaskCreate
	mov	r11d, DWORD PTR 80[rsp]
	mov	ecx, DWORD PTR 56[rsp]
	mov	r8, QWORD PTR 24[rax]
	mov	eax, DWORD PTR [r15]
	mov	edx, r11d
	sar	r11d, 8
	sal	eax, 8
	mov	QWORD PTR 64[rsp], r8
	sub	edx, eax
	mov	eax, DWORD PTR 4[r15]
	mov	DWORD PTR 80[rsp], r11d
	mov	DWORD PTR [r8], edx
	mov	edx, ecx
	sar	ecx, 8
	sal	eax, 8
	mov	r9d, ecx
	movzx	ecx, WORD PTR 17[rbp]
	sub	edx, eax
	mov	DWORD PTR 56[rsp], r9d
	mov	DWORD PTR 4[r8], edx
	movzx	edx, WORD PTR 13[rbp]
	sub	ecx, r9d
	movsx	ecx, cx
	sub	edx, r11d
	movsx	edx, dx
	call	sub_8004418
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, QWORD PTR 64[rsp]
	xor	r10d, r10d
	movzx	eax, ax
	mov	r11d, DWORD PTR 80[rsp]
	mov	r9d, DWORD PTR 56[rsp]
	lea	edx, 256[rax]
	movsx	eax, WORD PTR [rcx+rax*2]
	mov	QWORD PTR 16[r8], rbx
	movsx	rdx, edx
	mov	WORD PTR 62[r8], r11w
	mov	r11d, -256
	movsx	edx, WORD PTR [rcx+rdx*2]
	sar	eax, 5
	mov	WORD PTR 64[r8], r9w
	mov	WORD PTR 10[r8], ax
	mov	rax, QWORD PTR 1144[rbx]
	sar	edx, 5
	mov	DWORD PTR 40[r8], 43122688
	add	dx, 1280
	mov	QWORD PTR 32[r8], rax
	mov	WORD PTR 60[r8], r10w
	mov	r10, QWORD PTR 72[rsp]
	mov	DWORD PTR 66[r8], 1024
	mov	WORD PTR 72[r8], r11w
	mov	BYTE PTR 74[r8], 16
	mov	BYTE PTR 77[r8], 0
	movzx	eax, BYTE PTR [rsi]
	mov	WORD PTR 8[r8], dx
	mov	DWORD PTR 80[r8], -1
	mov	DWORD PTR 56[r8], 8192
	jmp	.L116
.L210:
	sub	BYTE PTR -2[rsi], 1
	jne	.L122
	movq	xmm1, QWORD PTR [r15]
	movdqu	xmm0, xmm6
	xor	r9d, r9d
	mov	rdx, rsi
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rcx, 96[rsp]
	mov	DWORD PTR 104[rsp], r9d
	mov	WORD PTR 128[rsp], 0
	psubd	xmm0, xmm1
	add	rax, 76160
	mov	QWORD PTR 96[rsp], rax
	mov	rax, QWORD PTR .LC4[rip]
	movq	QWORD PTR 120[rsp], xmm0
	mov	QWORD PTR 108[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	mov	r9d, 50000
	mov	r10, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR .refptr.gLevelScore[rip]
	mov	r8d, DWORD PTR [rdx]
	lea	eax, 500[r8]
	mov	DWORD PTR [rdx], eax
	cdq
	idiv	r9d
	mov	ecx, eax
	mov	eax, r8d
	cdq
	idiv	r9d
	cmp	ecx, eax
	je	.L123
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L123
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	sub	ecx, eax
	movzx	eax, BYTE PTR [rdx]
	add	eax, ecx
	mov	ecx, 255
	cmp	ax, cx
	cmova	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L123:
	mov	ecx, 144
	mov	QWORD PTR 88[rsp], r10
	call	m4aSongNumStart
	mov	r10, QWORD PTR 88[rsp]
.L124:
	mov	edx, DWORD PTR 72[rsp]
	mov	ecx, DWORD PTR 84[rsp]
	mov	QWORD PTR 88[rsp], r10
	call	Player_UpdateHomingPosition
	mov	QWORD PTR 32[rsp], rbp
	mov	r8d, DWORD PTR 56[rsp]
	xor	r9d, r9d
	mov	edx, DWORD PTR 80[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	call	Coll_Cheese_Enemy_Attack
	mov	r10, QWORD PTR 88[rsp]
	cmp	eax, 1
	jne	.L127
	jmp	.L155
.L122:
	mov	ecx, 143
	mov	QWORD PTR 88[rsp], r10
	call	m4aSongNumStart
	mov	r10, QWORD PTR 88[rsp]
	jmp	.L124
.L125:
	mov	ecx, 143
	call	m4aSongNumStart
	mov	r10, QWORD PTR 56[rsp]
	jmp	.L127
	.seh_endproc
	.p2align 4
	.def	Task_EggTotemMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggTotemMain
Task_EggTotemMain:
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
	add	DWORD PTR [rbx], 976
	mov	rcx, rbx
	call	sub_803FB88
	lea	rax, 60[rbx]
	lea	rdx, sTotemDiscYs[rip]
	lea	r8, 144[rbx]
.L216:
	cmp	BYTE PTR 19[rax], 0
	jne	.L215
	movsx	ecx, WORD PTR [rdx]
	movd	xmm0, DWORD PTR [rbx]
	add	ecx, DWORD PTR 4[rbx]
	movd	xmm1, ecx
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
.L215:
	add	rax, 28
	add	rdx, 2
	cmp	rax, r8
	jne	.L216
	mov	rcx, rbx
	call	sub_8040E78
	call	sub_803F698
	sub	DWORD PTR 180[rbx], 1
	jne	.L214
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_803F3E8[rip]
	mov	QWORD PTR 40[rax], rsi
.L214:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEggTotem
	.def	CreateEggTotem;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggTotem
CreateEggTotem:
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
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rdx]
	mov	QWORD PTR 64[rdx], 0
	and	eax, -9
	or	eax, 2097152
	mov	DWORD PTR 36[rdx], eax
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_EggTotemMain[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	lea	rax, TaskDestructor_EggTotemMain[rip]
	mov	edx, 1152
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	r12, rax
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	movzx	r8d, BYTE PTR [rax]
	mov	eax, 8
	test	r8b, r8b
	je	.L220
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	lea	eax, 6[rax+rax]
.L220:
	mov	r13, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 50[rbx], al
	cmp	BYTE PTR 0[r13], 28
	je	.L221
	mov	rax, QWORD PTR .LC17[rip]
	movdqu	xmm0, XMMWORD PTR .LC18[rip]
	lea	rcx, sTotemDiscYs[rip]
	lea	r9, 144[rbx]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR 28[rbx], rax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movups	XMMWORD PTR 12[rbx], xmm0
	movzx	r10d, BYTE PTR [rax]
	lea	rax, 60[rbx]
.L222:
	movsx	edx, WORD PTR [rcx]
	xor	r11d, r11d
	xor	esi, esi
	xor	edi, edi
	mov	DWORD PTR [rax], 174080
	add	edx, 43520
	mov	DWORD PTR 8[rax], 0
	mov	DWORD PTR 4[rax], edx
	mov	edx, 768
	mov	WORD PTR 12[rax], dx
	mov	edx, 3
	mov	WORD PTR 18[rax], r11w
	mov	WORD PTR 14[rax], si
	mov	WORD PTR 16[rax], di
	test	r8b, r8b
	je	.L225
	cmp	r10b, 2
	sete	dl
	lea	edx, 1[rdx+rdx]
.L225:
	mov	BYTE PTR 20[rax], dl
	add	rax, 28
	add	rcx, 2
	mov	BYTE PTR -5[rax], 0
	mov	BYTE PTR -7[rax], 0
	mov	BYTE PTR -6[rax], 0
	cmp	rax, r9
	jne	.L222
.L226:
	xor	ebp, ebp
	mov	DWORD PTR 8[rbx], 1280
	xor	r14d, r14d
	xor	r15d, r15d
	mov	WORD PTR 48[rbx], bp
	mov	ecx, 8
	lea	rsi, 272[rbx]
	lea	rbp, sTileInfoWheels[rip]
	mov	DWORD PTR 51[rbx], 240
	lea	rdi, 464[rbx]
	mov	DWORD PTR 180[rbx], 120
	call	VramMalloc
	mov	ecx, 120
	mov	DWORD PTR 230[rbx], 0
	mov	QWORD PTR 1144[rbx], rax
	call	VramMalloc
	mov	WORD PTR 228[rbx], r14w
	movzx	r14d, WORD PTR .LC0[rip]
	lea	rdx, 1024[rax]
	mov	QWORD PTR 200[rbx], rax
	add	rax, 2176
	mov	QWORD PTR 1024[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 208[rbx], 42663936
	mov	DWORD PTR 234[rbx], 1472
	mov	WORD PTR 240[rbx], r14w
	mov	BYTE PTR 242[rbx], 16
	mov	BYTE PTR 245[rbx], 0
	mov	DWORD PTR 248[rbx], -1
	mov	DWORD PTR 224[rbx], 8192
	mov	QWORD PTR 1088[rbx], rdx
	mov	DWORD PTR 1096[rbx], 42598400
	mov	WORD PTR 1128[rbx], r14w
	mov	BYTE PTR 1130[rbx], 16
	mov	BYTE PTR 1133[rbx], 0
	mov	DWORD PTR 1136[rbx], -1
	mov	QWORD PTR 1112[rbx], 8192
	mov	DWORD PTR 1120[rbx], 96468992
	mov	DWORD PTR 1032[rbx], 43253760
	mov	WORD PTR 1064[rbx], r14w
	mov	BYTE PTR 1066[rbx], 16
	mov	BYTE PTR 1069[rbx], 0
	mov	DWORD PTR 1072[rbx], -1
	mov	QWORD PTR 1048[rbx], 8192
	mov	DWORD PTR 1056[rbx], 96468992
	mov	WORD PTR 1060[rbx], ax
	mov	WORD PTR 1124[rbx], r15w
	lea	r15, sWheelsOamOrderIds[rip]
.L224:
	mov	DWORD PTR 30[rsi], 0
	mov	ecx, DWORD PTR 0[rbp]
	add	rsi, 64
	add	rbp, 8
	add	r15, 1
	call	VramMalloc
	mov	QWORD PTR -64[rsi], rax
	movzx	eax, WORD PTR -4[rbp]
	mov	WORD PTR -54[rsi], ax
	movzx	eax, BYTE PTR -2[rbp]
	mov	BYTE PTR -24[rsi], al
	movzx	eax, BYTE PTR -1[r15]
	mov	BYTE PTR -23[rsi], -1
	sal	eax, 6
	mov	BYTE PTR -22[rsi], 16
	mov	WORD PTR -30[rsi], ax
	xor	eax, eax
	mov	WORD PTR -56[rsi], ax
	xor	eax, eax
	mov	WORD PTR -36[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	mov	BYTE PTR -19[rsi], 0
	mov	DWORD PTR -16[rsi], -1
	mov	DWORD PTR -40[rsi], 8192
	cmp	rdi, rsi
	jne	.L224
	mov	rsi, rdi
	mov	edi, DWORD PTR .LC26[rip]
	lea	rbp, 704[rbx]
.L227:
	mov	DWORD PTR 30[rsi], 0
	mov	ecx, 30
	xor	r15d, r15d
	add	rsi, 80
	call	VramMalloc
	mov	r11d, 1280
	mov	DWORD PTR -72[rsi], edi
	mov	QWORD PTR -80[rsi], rax
	xor	eax, eax
	mov	WORD PTR -46[rsi], r11w
	mov	WORD PTR -52[rsi], r15w
	mov	WORD PTR -44[rsi], ax
	mov	WORD PTR -40[rsi], r14w
	mov	BYTE PTR -38[rsi], 16
	mov	BYTE PTR -35[rsi], 0
	mov	DWORD PTR -32[rsi], -1
	mov	DWORD PTR -56[rsi], 8192
	cmp	rbp, rsi
	jne	.L227
	mov	DWORD PTR 734[rbx], 0
	mov	ecx, 6
	call	VramMalloc
	mov	esi, DWORD PTR .LC27[rip]
	xor	ecx, ecx
	mov	DWORD PTR 738[rbx], 1344
	mov	WORD PTR 732[rbx], cx
	mov	ecx, 3
	mov	QWORD PTR 704[rbx], rax
	mov	DWORD PTR 712[rbx], esi
	mov	WORD PTR 744[rbx], r14w
	mov	BYTE PTR 746[rbx], 16
	mov	BYTE PTR 749[rbx], 0
	mov	DWORD PTR 752[rbx], -1
	mov	DWORD PTR 728[rbx], 8192
	mov	DWORD PTR 798[rbx], 0
	call	VramMalloc
	xor	r8d, r8d
	mov	r9d, -255
	mov	DWORD PTR 776[rbx], esi
	mov	QWORD PTR 768[rbx], rax
	mov	ecx, 12
	mov	WORD PTR 796[rbx], r8w
	mov	DWORD PTR 802[rbx], 1344
	mov	WORD PTR 808[rbx], r9w
	mov	BYTE PTR 810[rbx], 16
	mov	BYTE PTR 813[rbx], 0
	mov	DWORD PTR 816[rbx], -1
	mov	DWORD PTR 792[rbx], 8192
	mov	DWORD PTR 862[rbx], 0
	call	VramMalloc
	xor	r10d, r10d
	mov	DWORD PTR 840[rbx], 41222144
	mov	QWORD PTR 832[rbx], rax
	movsx	eax, BYTE PTR 0[r13]
	mov	WORD PTR 860[rbx], r10w
	mov	DWORD PTR 866[rbx], 1408
	mov	WORD PTR 872[rbx], r14w
	mov	BYTE PTR 874[rbx], 16
	mov	BYTE PTR 877[rbx], 0
	mov	DWORD PTR 880[rbx], -1
	mov	DWORD PTR 856[rbx], 8192
	cmp	al, 28
	je	.L228
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L243
.L228:
	mov	QWORD PTR 896[rbx], 0
	mov	QWORD PTR 960[rbx], 0
.L229:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], r12
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
.L243:
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	edx, BYTE PTR 7[rdx]
	cmp	edx, eax
	jg	.L228
	mov	DWORD PTR 926[rbx], 0
	mov	ecx, 30
	call	VramMalloc
	mov	WORD PTR 936[rbx], r14w
	mov	ecx, 20
	mov	QWORD PTR 896[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 904[rbx], 14548992
	mov	WORD PTR 924[rbx], ax
	mov	DWORD PTR 930[rbx], 1280
	mov	BYTE PTR 938[rbx], 16
	mov	BYTE PTR 941[rbx], 0
	mov	DWORD PTR 944[rbx], -1
	mov	DWORD PTR 920[rbx], 8192
	mov	DWORD PTR 990[rbx], 0
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 968[rbx], 42991616
	mov	QWORD PTR 960[rbx], rax
	mov	WORD PTR 988[rbx], dx
	mov	DWORD PTR 994[rbx], 1344
	mov	WORD PTR 1000[rbx], r14w
	mov	BYTE PTR 1002[rbx], 16
	mov	BYTE PTR 1005[rbx], 0
	mov	DWORD PTR 1008[rbx], -1
	mov	DWORD PTR 984[rbx], 8192
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L221:
	shr	al
	movdqu	xmm0, XMMWORD PTR .LC20[rip]
	mov	r8d, DWORD PTR .LC21[rip]
	lea	rcx, sTotemDiscYs[rip]
	mov	BYTE PTR 50[rbx], al
	mov	rax, QWORD PTR .LC19[rip]
	lea	r9, 144[rbx]
	movups	XMMWORD PTR 12[rbx], xmm0
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR 28[rbx], rax
	lea	rax, 60[rbx]
.L223:
	movsx	edx, WORD PTR [rcx]
	xor	r10d, r10d
	xor	r11d, r11d
	mov	DWORD PTR [rax], 3510784
	mov	DWORD PTR 8[rax], 0
	add	rax, 28
	add	rcx, 2
	add	edx, 43520
	mov	WORD PTR -14[rax], r10w
	mov	DWORD PTR -24[rax], edx
	mov	edx, 768
	mov	WORD PTR -16[rax], dx
	mov	WORD PTR -12[rax], r11w
	mov	BYTE PTR -5[rax], 0
	mov	DWORD PTR -10[rax], r8d
	mov	BYTE PTR -6[rax], 0
	cmp	r9, rax
	jne	.L223
	jmp	.L226
	.seh_endproc
	.p2align 4
	.globl	EggTotemMove
	.def	EggTotemMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggTotemMove
EggTotemMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	movd	xmm2, edx
	mov	rdx, QWORD PTR 24[rax]
	movd	xmm0, ecx
	punpckldq	xmm0, xmm2
	movq	xmm1, QWORD PTR [rdx]
	lea	rax, 12[rdx]
	lea	rcx, 36[rdx]
	paddd	xmm1, xmm0
	movq	QWORD PTR [rdx], xmm1
.L245:
	movq	xmm1, QWORD PTR [rax]
	add	rax, 8
	paddd	xmm1, xmm0
	movq	QWORD PTR -8[rax], xmm1
	cmp	rax, rcx
	jne	.L245
	lea	rax, 60[rdx]
	lea	rcx, 144[rdx]
.L246:
	movq	xmm1, QWORD PTR [rax]
	add	rax, 28
	paddd	xmm1, xmm0
	movq	QWORD PTR -28[rax], xmm1
	cmp	rax, rcx
	jne	.L246
	movq	xmm1, QWORD PTR 156[rdx]
	paddd	xmm1, xmm0
	movq	QWORD PTR 156[rdx], xmm1
	movq	xmm1, QWORD PTR 144[rdx]
	paddd	xmm1, xmm0
	movq	QWORD PTR 144[rdx], xmm1
	movq	xmm1, QWORD PTR 168[rdx]
	paddd	xmm1, xmm0
	movq	QWORD PTR 168[rdx], xmm1
	movq	xmm1, QWORD PTR 184[rdx]
	paddd	xmm1, xmm0
	movq	QWORD PTR 184[rdx], xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_803FC14
	.def	sub_803FC14;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803FC14
sub_803FC14:
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
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	movups	XMMWORD PTR 112[rsp], xmm7
	.seh_savexmm	xmm7, 112
	movups	XMMWORD PTR 128[rsp], xmm8
	.seh_savexmm	xmm8, 128
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gStageTime[rip]
	movsx	edx, WORD PTR 36[rcx]
	add	DWORD PTR 12[rcx], edx
	movsx	edx, WORD PTR 40[rcx]
	add	DWORD PTR 20[rcx], edx
	movsx	edx, WORD PTR 44[rcx]
	add	DWORD PTR 28[rcx], edx
	movsx	edx, WORD PTR 164[rcx]
	add	DWORD PTR 156[rcx], edx
	mov	edx, DWORD PTR [rbx]
	movsx	r8d, WORD PTR 152[rcx]
	mov	r12, rcx
	add	r8d, DWORD PTR 144[rcx]
	mov	DWORD PTR 144[rcx], r8d
	imul	ecx, edx, -1227133513
	add	ecx, 306783378
	ror	ecx
	cmp	ecx, 306783378
	jbe	.L262
.L250:
	imul	edx, edx, -991146299
	add	edx, 165191049
	cmp	edx, 330382098
	jbe	.L263
.L251:
	lea	rbp, 60[r12]
	mov	QWORD PTR 224[rsp], r12
	movsx	edx, WORD PTR 176[r12]
	lea	rsi, 144[r12]
	add	DWORD PTR 168[r12], edx
	mov	r12, rbp
.L259:
	movzx	eax, BYTE PTR 24[r12]
	test	al, al
	jne	.L252
	movzx	eax, WORD PTR 10[r12]
	add	eax, 32
	mov	WORD PTR 10[r12], ax
.L253:
	movsx	edi, WORD PTR 8[r12]
	cwde
	movq	xmm1, QWORD PTR [r12]
	mov	r9d, 8
	movd	xmm3, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r8d, 1
	movd	xmm0, edi
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR [r12], xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rax
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 3
	call	sub_801F100
	test	eax, eax
	js	.L264
.L257:
	add	r12, 28
	cmp	rsi, r12
	jne	.L259
	movups	xmm6, XMMWORD PTR 96[rsp]
	movups	xmm7, XMMWORD PTR 112[rsp]
	movups	xmm8, XMMWORD PTR 128[rsp]
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
.L252:
	sub	eax, 1
	mov	BYTE PTR 24[r12], al
	test	al, al
	je	.L265
.L254:
	movzx	eax, WORD PTR 10[r12]
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L264:
	sal	eax, 8
	add	DWORD PTR 4[r12], eax
	movsx	eax, WORD PTR 10[r12]
	imul	eax, eax, 35
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 36
	sub	eax, edx
	mov	WORD PTR 10[r12], ax
	movzx	eax, WORD PTR 8[r12]
	test	ax, ax
	jle	.L257
	sub	ax, 256
	mov	WORD PTR 8[r12], ax
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L265:
	mov	rax, QWORD PTR 224[rsp]
	mov	rdi, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	ebx, 4
	lea	r14, 48[rsp]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	movq	xmm8, QWORD PTR .LC31[rip]
	lea	r15, 57[rax]
	movq	xmm7, QWORD PTR .LC32[rip]
	movq	xmm6, QWORD PTR .LC33[rip]
.L255:
	imul	edx, DWORD PTR [rdi], 1663525
	movq	xmm0, QWORD PTR [r12]
	movq	xmm2, QWORD PTR 0[r13]
	psrad	xmm0, 8
	lea	eax, 1013904223[rdx]
	movd	xmm1, edx
	psubd	xmm0, xmm2
	xor	edx, edx
	imul	eax, eax, 1663525
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1000
	movd	xmm5, eax
	add	eax, 1013904223
	imul	eax, eax, 1663525
	punpckldq	xmm1, xmm5
	paddd	xmm1, xmm8
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	pand	xmm1, xmm7
	paddd	xmm1, xmm6
	and	ecx, 63
	sub	edx, ecx
	mov	rcx, r14
	add	eax, 1013904223
	mov	WORD PTR 64[rsp], dx
	mov	edx, 1024
	paddd	xmm0, xmm1
	mov	DWORD PTR [rdi], eax
	and	ax, 511
	sub	edx, eax
	lea	rax, 76160[rbp]
	mov	WORD PTR 66[rsp], dx
	mov	rdx, r15
	mov	QWORD PTR 48[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 56[rsp], rax
	movq	QWORD PTR 72[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	sub	bl, 1
	jne	.L255
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L263:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	movabs	rax, 2658584756224
	mov	r8d, DWORD PTR 156[r12]
	mov	QWORD PTR 56[rsp], rax
	imul	edx, DWORD PTR [rcx], 1663525
	sar	r8d, 8
	sub	r8d, DWORD PTR [r9]
	add	edx, 1013904223
	mov	r10d, edx
	imul	edx, edx, 1663525
	and	r10d, 63
	lea	r8d, -31[r8+r10]
	mov	DWORD PTR 72[rsp], r8d
	mov	r8d, DWORD PTR 160[r12]
	add	edx, 1013904223
	sar	r8d, 8
	sub	r8d, DWORD PTR 4[r9]
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 31
	lea	r8d, -16[r8+r9]
	mov	DWORD PTR 76[rsp], r8d
	xor	r8d, r8d
	add	edx, 1013904223
	mov	WORD PTR 80[rsp], r8w
	mov	r8d, 1000
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 63
	sub	r8d, r9d
	add	edx, 1013904223
	mov	WORD PTR 64[rsp], r8w
	mov	DWORD PTR [rcx], edx
	and	dx, 511
	mov	ecx, 1408
	sub	ecx, edx
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 66[rsp], cx
	lea	rcx, 48[rsp]
	add	rdx, 76160
	mov	QWORD PTR 48[rsp], rdx
	lea	rdx, 57[r12]
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L262:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	sar	r8d, 8
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	movabs	rax, 2658584756224
	mov	QWORD PTR 56[rsp], rax
	imul	edx, DWORD PTR [rcx], 1663525
	sub	r8d, DWORD PTR [r9]
	add	edx, 1013904223
	mov	r10d, edx
	imul	edx, edx, 1663525
	and	r10d, 63
	lea	r8d, -31[r8+r10]
	mov	DWORD PTR 72[rsp], r8d
	mov	r8d, DWORD PTR 148[r12]
	add	edx, 1013904223
	sar	r8d, 8
	sub	r8d, DWORD PTR 4[r9]
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 31
	lea	r8d, -75[r8+r9]
	xor	r9d, r9d
	mov	WORD PTR 80[rsp], r9w
	add	edx, 1013904223
	mov	DWORD PTR 76[rsp], r8d
	mov	r8d, 1000
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 63
	sub	r8d, r9d
	add	edx, 1013904223
	mov	WORD PTR 64[rsp], r8w
	mov	DWORD PTR [rcx], edx
	and	dx, 511
	mov	ecx, 1408
	sub	ecx, edx
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 66[rsp], cx
	lea	rcx, 48[rsp]
	add	rdx, 76160
	mov	QWORD PTR 48[rsp], rdx
	lea	rdx, 57[r12]
	call	CreateBossParticleWithExplosionUpdate
	mov	edx, DWORD PTR [rbx]
	jmp	.L250
	.seh_endproc
	.p2align 4
	.def	Task_8041138;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8041138
Task_8041138:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L272
.L267:
	cmp	QWORD PTR 896[rbx], 0
	je	.L269
	add	DWORD PTR 184[rbx], 1280
	mov	eax, DWORD PTR 188[rbx]
	cmp	eax, -12287
	jge	.L273
.L269:
	mov	rcx, rbx
	call	sub_803FC14
	mov	rcx, rbx
	call	sub_8040E78
	call	sub_803F878
	test	al, al
	je	.L266
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_80411CC[rip]
	mov	QWORD PTR 40[rax], rdx
.L266:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	sub	eax, 768
	mov	DWORD PTR 188[rbx], eax
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L272:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L267
	.seh_endproc
	.p2align 4
	.globl	sub_803FF44
	.def	sub_803FF44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803FF44
sub_803FF44:
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
	sub	rsp, 168
	.seh_stackalloc	168
	movups	XMMWORD PTR 112[rsp], xmm6
	.seh_savexmm	xmm6, 112
	movups	XMMWORD PTR 128[rsp], xmm7
	.seh_savexmm	xmm7, 128
	movups	XMMWORD PTR 144[rsp], xmm8
	.seh_savexmm	xmm8, 144
	.seh_endprologue
	cmp	BYTE PTR 56[rcx], 0
	mov	r12, rcx
	jne	.L275
	mov	rbx, QWORD PTR .refptr.sub_801EC3C[rip]
	xor	esi, esi
	lea	rdi, gUnknown_080D7F10[rip]
.L280:
	movzx	eax, WORD PTR 38[r12+rsi*4]
	movsx	ecx, WORD PTR 36[r12+rsi*4]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 12[r12+rsi*8]
	add	eax, 32
	movd	xmm0, ecx
	movsx	ecx, BYTE PTR [rdi+rsi]
	mov	WORD PTR 38[r12+rsi*4], ax
	cwde
	movd	xmm6, eax
	punpckldq	xmm0, xmm6
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r12+rsi*8], xmm0
	pshufd	xmm7, xmm0, 0xe5
	movd	eax, xmm7
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbx
	sar	eax, 8
	sar	edx, 8
	lea	ecx, -1[rax+rcx]
	call	sub_801F100
	test	eax, eax
	js	.L308
.L277:
	add	rsi, 1
	cmp	rsi, 3
	jne	.L280
	movzx	eax, WORD PTR 166[r12]
	mov	r9d, 8
	movsx	edi, WORD PTR 164[r12]
	mov	r8d, 1
	movq	xmm1, QWORD PTR 156[r12]
	add	eax, 32
	movd	xmm0, edi
	mov	WORD PTR 166[r12], ax
	cwde
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 156[r12], xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbx
	sar	ecx, 8
	sar	edx, 8
	sub	ecx, 8
	call	sub_801F100
	test	eax, eax
	js	.L309
.L282:
	mov	edx, DWORD PTR 160[r12]
	movd	xmm0, DWORD PTR 156[r12]
	lea	eax, 12800[rdx]
	movdqu	xmm1, xmm0
	movd	xmm2, eax
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	punpckldq	xmm1, xmm2
	movq	QWORD PTR 144[r12], xmm1
	imul	eax, DWORD PTR [rax], -1431655765
	add	eax, 715827882
	ror	eax
	cmp	eax, 715827882
	jbe	.L310
.L287:
	lea	rdi, 60[r12]
	mov	QWORD PTR 240[rsp], r12
	lea	rbp, 144[r12]
	mov	r12, rdi
.L301:
	movzx	eax, BYTE PTR 24[r12]
	test	al, al
	jne	.L294
	movzx	eax, WORD PTR 10[r12]
	add	eax, 32
	mov	WORD PTR 10[r12], ax
.L295:
	movsx	edi, WORD PTR 8[r12]
	cwde
	movq	xmm1, QWORD PTR [r12]
	mov	r9d, 8
	movd	xmm3, eax
	mov	r8d, 1
	movd	xmm0, edi
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR [r12], xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbx
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 4
	call	sub_801F100
	test	eax, eax
	js	.L311
.L299:
	add	r12, 28
	cmp	rbp, r12
	jne	.L301
	movups	xmm6, XMMWORD PTR 112[rsp]
	movups	xmm7, XMMWORD PTR 128[rsp]
	movups	xmm8, XMMWORD PTR 144[rsp]
	add	rsp, 168
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
.L294:
	sub	eax, 1
	mov	BYTE PTR 24[r12], al
	test	al, al
	je	.L312
	movzx	eax, WORD PTR 10[r12]
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L311:
	sal	eax, 8
	add	DWORD PTR 4[r12], eax
	movsx	eax, WORD PTR 10[r12]
	imul	eax, eax, 35
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 36
	sub	eax, edx
	mov	WORD PTR 10[r12], ax
	movzx	eax, WORD PTR 8[r12]
	test	ax, ax
	jle	.L299
	sub	ax, 256
	mov	WORD PTR 8[r12], ax
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L308:
	sal	eax, 8
	add	DWORD PTR 16[r12+rsi*8], eax
	movsx	eax, WORD PTR 38[r12+rsi*4]
	xor	edx, edx
	imul	eax, eax, -80
	cmp	eax, -25599
	jl	.L313
.L278:
	movzx	eax, WORD PTR 36[r12+rsi*4]
	mov	WORD PTR 38[r12+rsi*4], dx
	test	ax, ax
	jle	.L277
	sub	eax, 32
	lea	edx, 0[0+rsi*4]
	sub	eax, edx
	mov	WORD PTR 36[r12+rsi*4], ax
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L275:
	movsx	eax, WORD PTR 36[rcx]
	add	DWORD PTR 12[rcx], eax
	mov	r9d, 8
	mov	r8d, 1
	movsx	eax, WORD PTR 40[rcx]
	add	DWORD PTR 20[rcx], eax
	movsx	eax, WORD PTR 44[rcx]
	add	DWORD PTR 28[rcx], eax
	movsx	eax, WORD PTR 164[rcx]
	add	DWORD PTR 156[rcx], eax
	movzx	eax, WORD PTR 154[rcx]
	movsx	edi, WORD PTR 152[rcx]
	movq	xmm1, QWORD PTR 144[rcx]
	mov	rbx, QWORD PTR .refptr.sub_801EC3C[rip]
	add	eax, 32
	movd	xmm0, edi
	mov	WORD PTR 154[rcx], ax
	cwde
	movd	xmm5, eax
	punpckldq	xmm0, xmm5
	paddd	xmm0, xmm1
	movq	QWORD PTR 144[rcx], xmm0
	pshufd	xmm6, xmm0, 0xe5
	movd	ecx, xmm6
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rbx
	sar	ecx, 8
	sar	edx, 8
	sub	ecx, 50
	call	sub_801F100
	mov	r13d, eax
	test	eax, eax
	js	.L314
.L288:
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rsi]
	imul	edx, eax, -1227133513
	add	edx, 306783378
	ror	edx
	cmp	edx, 306783378
	jbe	.L315
.L292:
	imul	eax, eax, -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	ja	.L287
	mov	r14, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 156[r12]
	imul	eax, DWORD PTR [r14], 1663525
	sar	edx, 8
	sub	edx, DWORD PTR [r15]
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	lea	edx, -31[rdx+rcx]
	mov	DWORD PTR 88[rsp], edx
	add	eax, 1013904223
	mov	edx, DWORD PTR 160[r12]
	mov	ecx, eax
	sar	edx, 8
	and	ecx, 31
	sub	edx, DWORD PTR 4[r15]
	lea	edx, -16[rdx+rcx]
.L307:
	imul	eax, eax, 1663525
	xor	ecx, ecx
	mov	DWORD PTR 92[rsp], edx
	mov	edx, 1000
	mov	WORD PTR 96[rsp], cx
	lea	rbp, 57[r12]
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	sub	edx, ecx
	lea	rcx, 64[rsp]
	add	eax, 1013904223
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1408
	mov	DWORD PTR [r14], eax
	and	ax, 511
	sub	edx, eax
	movabs	rax, 2658584756224
	mov	WORD PTR 82[rsp], dx
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR 72[rsp], rax
	add	rdx, 76160
	mov	QWORD PTR 64[rsp], rdx
	mov	rdx, rbp
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L313:
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, eax
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L309:
	movsx	edx, WORD PTR 166[r12]
	sal	eax, 8
	add	DWORD PTR 160[r12], eax
	imul	edx, edx, -80
	movsx	rax, edx
	mov	ecx, edx
	imul	rax, rax, 1374389535
	sar	ecx, 31
	sar	rax, 37
	sub	eax, ecx
	mov	WORD PTR 166[r12], ax
	cmp	edx, -25599
	jge	.L316
	cmp	edx, -36899
	jl	.L317
.L284:
	movzx	eax, WORD PTR 164[r12]
	test	ax, ax
	jle	.L282
	sub	eax, 48
	mov	WORD PTR 164[r12], ax
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L314:
	movzx	eax, BYTE PTR 56[r12]
	sub	eax, 1
	mov	BYTE PTR 56[r12], al
	test	al, al
	jne	.L289
	lea	rbp, 57[r12]
	lea	rcx, 64[rsp]
	mov	DWORD PTR 48[rsp], r13d
	mov	r14, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 56[rsp], rbx
	mov	esi, 9
	movabs	rdi, 2658584756224
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	rbx, r14
	mov	r13, r15
	mov	r15, rbp
	mov	rbp, rcx
	mov	r14, rdx
	.p2align 4,,10
	.p2align 3
.L290:
	imul	eax, DWORD PTR [rbx], 1663525
	mov	edx, DWORD PTR 156[r12]
	xor	r9d, r9d
	mov	QWORD PTR 72[rsp], rdi
	mov	WORD PTR 96[rsp], r9w
	sar	edx, 8
	sub	edx, DWORD PTR 0[r13]
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	lea	edx, -31[rdx+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 88[rsp], edx
	mov	edx, DWORD PTR 160[r12]
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	sar	edx, 8
	sub	edx, DWORD PTR 4[r13]
	lea	edx, -45[rdx+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 92[rsp], edx
	mov	edx, 1000
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	sub	edx, ecx
	mov	rcx, rbp
	add	eax, 1013904223
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1536
	mov	DWORD PTR [rbx], eax
	and	ax, 511
	sub	edx, eax
	lea	rax, 76160[r14]
	mov	WORD PTR 82[rsp], dx
	mov	rdx, r15
	mov	QWORD PTR 64[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	sub	sil, 1
	jne	.L290
	mov	r13d, DWORD PTR 48[rsp]
	mov	rbx, QWORD PTR 56[rsp]
	movzx	eax, BYTE PTR 56[r12]
.L289:
	cmp	al, 2
	ja	.L318
.L291:
	movsx	eax, WORD PTR 154[r12]
	sal	r13d, 8
	add	DWORD PTR 148[r12], r13d
	mov	edx, eax
	sal	edx, 4
	sub	eax, edx
	sal	eax, 2
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, eax
	mov	WORD PTR 154[r12], dx
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L312:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR 48[rsp], rbx
	mov	esi, 4
	mov	rcx, QWORD PTR 240[rsp]
	mov	r13, QWORD PTR .refptr.gPseudoRandom[rip]
	lea	r14, 64[rsp]
	movq	xmm8, QWORD PTR .LC31[rip]
	mov	rbx, rdi
	mov	rdi, rax
	movq	xmm7, QWORD PTR .LC32[rip]
	movq	xmm6, QWORD PTR .LC33[rip]
	lea	r15, 57[rcx]
.L297:
	imul	edx, DWORD PTR 0[r13], 1663525
	movq	xmm0, QWORD PTR [r12]
	movq	xmm2, QWORD PTR [rbx]
	psrad	xmm0, 8
	lea	eax, 1013904223[rdx]
	movd	xmm1, edx
	psubd	xmm0, xmm2
	xor	edx, edx
	imul	eax, eax, 1663525
	mov	WORD PTR 96[rsp], dx
	mov	edx, 1000
	movd	xmm5, eax
	add	eax, 1013904223
	imul	eax, eax, 1663525
	punpckldq	xmm1, xmm5
	paddd	xmm1, xmm8
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	pand	xmm1, xmm7
	paddd	xmm1, xmm6
	and	ecx, 63
	sub	edx, ecx
	mov	rcx, r14
	add	eax, 1013904223
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1024
	paddd	xmm0, xmm1
	mov	DWORD PTR 0[r13], eax
	and	ax, 511
	sub	edx, eax
	lea	rax, 76160[rdi]
	mov	WORD PTR 82[rsp], dx
	mov	rdx, r15
	mov	QWORD PTR 64[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 72[rsp], rax
	movq	QWORD PTR 88[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	sub	sil, 1
	jne	.L297
	mov	rbx, QWORD PTR 48[rsp]
	movzx	eax, WORD PTR 10[r12]
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L315:
	mov	r14, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	lea	rbp, 57[r12]
	xor	r8d, r8d
	mov	edx, DWORD PTR 144[r12]
	mov	WORD PTR 96[rsp], r8w
	imul	eax, DWORD PTR [r14], 1663525
	sar	edx, 8
	sub	edx, DWORD PTR [r15]
	add	eax, 1013904223
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	lea	edx, -31[rdx+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 88[rsp], edx
	mov	edx, DWORD PTR 148[r12]
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 31
	sar	edx, 8
	sub	edx, DWORD PTR 4[r15]
	lea	edx, -75[rdx+rcx]
	add	eax, 1013904223
	mov	DWORD PTR 92[rsp], edx
	mov	edx, 1000
	mov	ecx, eax
	imul	eax, eax, 1663525
	and	ecx, 63
	sub	edx, ecx
	lea	rcx, 64[rsp]
	add	eax, 1013904223
	mov	WORD PTR 80[rsp], dx
	mov	edx, 1408
	mov	DWORD PTR [r14], eax
	and	ax, 511
	sub	edx, eax
	movabs	rax, 2658584756224
	mov	WORD PTR 82[rsp], dx
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR 72[rsp], rax
	add	rdx, 76160
	mov	QWORD PTR 64[rsp], rdx
	mov	rdx, rbp
	call	CreateBossParticleWithExplosionUpdate
	mov	eax, DWORD PTR [rsi]
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L310:
	mov	r14, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	movd	ecx, xmm0
	sar	edx, 8
	sar	ecx, 8
	imul	eax, DWORD PTR [r14], 1663525
	sub	ecx, DWORD PTR [r15]
	sub	edx, DWORD PTR 4[r15]
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	and	r8d, 63
	lea	ecx, -31[rcx+r8]
	add	eax, 1013904223
	mov	DWORD PTR 88[rsp], ecx
	mov	ecx, eax
	and	ecx, 63
	lea	edx, -45[rdx+rcx]
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L316:
	xor	r10d, r10d
	mov	WORD PTR 166[r12], r10w
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L318:
	mov	r9d, 20
	mov	r8d, 128
	mov	edx, 32
	mov	DWORD PTR 32[rsp], 131
	mov	ecx, 1024
	call	CreateScreenShake
	jmp	.L291
.L317:
	mov	r9d, 20
	mov	r8d, 128
	mov	edx, 32
	mov	DWORD PTR 32[rsp], 131
	mov	ecx, 1024
	call	CreateScreenShake
	jmp	.L284
	.seh_endproc
	.p2align 4
	.def	Task_80411CC;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_80411CC
Task_80411CC:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L322
.L320:
	mov	rcx, rbx
	call	sub_803FF44
	mov	rcx, rbx
	call	sub_8040E78
	call	sub_803F878
	cmp	WORD PTR 230[rbx], -200
	jl	.L323
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L322:
	mov	ecx, 144
	call	m4aSongNumStart
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L323:
	mov	r8d, 2
	mov	edx, 150
	mov	ecx, -40
	call	sub_802EF68
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_CallTaskDestroyTotem[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	gUnknown_080D7F14
	.section .rdata,"dr"
	.align 32
gUnknown_080D7F14:
	.word	18847
	.word	32152
	.word	27928
	.word	32313
	.word	32376
	.word	31678
	.word	16408
	.word	28413
	.word	32760
	.word	32634
	.word	32700
	.word	24664
	.word	31960
	.word	19673
	.word	22939
	.word	26236
	.word	28256
	.word	639
	.word	8959
	.word	473
	.word	415
	.word	2116
	.word	32767
	.word	8456
	.word	29
	.word	149
	.word	76
	.word	15295
	.word	831
	.word	26425
	.word	20083
	.word	12684
	.globl	gUnknown_080D7F10
gUnknown_080D7F10:
	.ascii "\16\16\10"
	.globl	gUnknown_080D7ED4
	.align 32
gUnknown_080D7ED4:
	.quad	gUnknown_080D7EA0
	.quad	gUnknown_080D7EA0+3
	.quad	gUnknown_080D7EA0+6
	.quad	gUnknown_080D7EA0+9
	.quad	gUnknown_080D7EA0+12
	.quad	gUnknown_080D7EA0+15
	.quad	gUnknown_080D7EA0+18
	.quad	gUnknown_080D7EA0+21
	.quad	gUnknown_080D7EA0+24
	.quad	gUnknown_080D7EA0+27
	.quad	gUnknown_080D7EA0+30
	.quad	gUnknown_080D7EA0+33
	.quad	gUnknown_080D7EA0+36
	.quad	gUnknown_080D7EA0+41
	.quad	gUnknown_080D7EA0+46
	.globl	gUnknown_080D7EA0
	.align 32
gUnknown_080D7EA0:
	.ascii "\1\0\0\1\1\0\1\2\0\1\0\1\1\1\1\1\2\1\1\0\2\1\1\2\1\2\2\1\0\3\1\1\3\1\2\3\2\0\4\2\5\2\1\6\2\7\2\0\10\1\11\0"
	.globl	gUnknown_080D7E78
	.align 32
gUnknown_080D7E78:
	.quad	gUnknown_080D7BE8
	.quad	gUnknown_080D7BE8+64
	.quad	gUnknown_080D7BE8+128
	.quad	gUnknown_080D7BE8+192
	.quad	gUnknown_080D7BE8+256
	.quad	gUnknown_080D7BE8+312
	.quad	gUnknown_080D7BE8+368
	.quad	gUnknown_080D7BE8+456
	.quad	gUnknown_080D7BE8+528
	.quad	gUnknown_080D7BE8+592
	.globl	gUnknown_080D7BE8
	.align 32
gUnknown_080D7BE8:
	.word	1
	.word	512
	.word	512
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	64
	.word	0
	.word	256
	.word	0
	.word	60
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	256
	.word	0
	.word	63
	.word	0
	.word	256
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	640
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	96
	.word	0
	.word	320
	.word	0
	.word	60
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	320
	.word	0
	.word	95
	.word	0
	.word	320
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	640
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	128
	.word	0
	.word	320
	.word	0
	.word	60
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	320
	.word	0
	.word	127
	.word	0
	.word	320
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	512
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	128
	.word	0
	.word	256
	.word	0
	.word	60
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	256
	.word	0
	.word	127
	.word	0
	.word	256
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	400
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	128
	.word	0
	.word	144
	.word	0
	.word	64
	.word	8
	.word	200
	.word	0
	.word	128
	.word	0
	.word	144
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	400
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	128
	.word	0
	.word	288
	.word	0
	.word	64
	.word	1016
	.word	202
	.word	0
	.word	128
	.word	0
	.word	288
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	400
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	64
	.word	0
	.word	184
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	1
	.word	256
	.word	0
	.word	0
	.word	20
	.word	0
	.word	200
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	1
	.word	256
	.word	0
	.word	0
	.word	64
	.word	0
	.word	184
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	400
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	192
	.word	0
	.word	184
	.word	0
	.word	1
	.word	768
	.word	0
	.word	0
	.word	20
	.word	0
	.word	208
	.word	0
	.word	1
	.word	768
	.word	0
	.word	0
	.word	192
	.word	0
	.word	184
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	432
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	192
	.word	0
	.word	216
	.word	0
	.word	1
	.word	512
	.word	216
	.word	0
	.word	150
	.word	0
	.word	0
	.word	0
	.word	191
	.word	0
	.word	216
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	512
	.word	400
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	192
	.word	0
	.word	128
	.word	0
	.word	1
	.word	512
	.word	128
	.word	0
	.word	150
	.word	0
	.word	0
	.word	0
	.word	191
	.word	0
	.word	128
	.word	0
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	sTotemDiscYs
	.align 2
sTotemDiscYs:
	.word	-8192
	.word	-12288
	.word	-16384
	.globl	gUnknown_080D7BDC
	.align 2
gUnknown_080D7BDC:
	.word	5632
	.word	3328
	.word	-4096
	.globl	sWheelsOamOrderIds
sWheelsOamOrderIds:
	.ascii "\25\31\30"
	.globl	sTileInfoBulletLauncher
	.align 16
sTileInfoBulletLauncher:
	.long	6
	.word	657
	.byte	0
	.space 1
	.long	3
	.word	657
	.byte	1
	.space 1
	.globl	sTileInfoWheels
	.align 16
sTileInfoWheels:
	.long	16
	.word	652
	.byte	0
	.space 1
	.long	16
	.word	653
	.byte	0
	.space 1
	.long	4
	.word	654
	.byte	0
	.space 1
	.set	.LC0,.LC12+2
	.align 16
.LC2:
	.word	29
	.word	149
	.word	76
	.word	15295
	.word	831
	.word	26425
	.word	20083
	.word	12684
	.align 8
.LC4:
	.word	619
	.word	0
	.word	960
	.word	1536
	.align 8
.LC5:
	.long	1280
	.long	512
	.align 16
.LC6:
	.word	28256
	.word	639
	.word	8959
	.word	473
	.word	415
	.word	2116
	.word	32767
	.word	8456
	.align 16
.LC7:
	.long	5632
	.long	-3072
	.long	3328
	.long	-3072
	.align 8
.LC8:
	.word	1280
	.word	-768
	.word	1280
	.word	-768
	.align 8
.LC9:
	.long	-4096
	.long	-1536
	.align 4
.LC12:
	.word	1280
	.word	-256
	.align 8
.LC14:
	.long	-10240
	.long	-25088
	.set	.LC17,.LC18
	.align 16
.LC18:
	.long	174080
	.long	43520
	.long	174080
	.long	43520
	.set	.LC19,.LC20
	.align 16
.LC20:
	.long	3510784
	.long	43520
	.long	3510784
	.long	43520
	.align 4
.LC21:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.align 4
.LC26:
	.word	0
	.word	655
	.align 4
.LC27:
	.word	0
	.word	657
	.align 8
.LC31:
	.long	1013904223
	.long	1013904223
	.align 8
.LC32:
	.long	63
	.long	7
	.align 8
.LC33:
	.long	-31
	.long	-3
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_AdjustSpeed;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
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
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
