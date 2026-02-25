	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_Interactable069
	.def	TaskDestructor_Interactable069;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable069
TaskDestructor_Interactable069:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 520[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_BigSnowball
	.def	CreateEntity_BigSnowball;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_BigSnowball
CreateEntity_BigSnowball:
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
	lea	rax, TaskDestructor_Interactable069[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r12d, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 544
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, Task_Interactable069[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	movzx	ecx, BYTE PTR 5[rsi]
	movsx	dx, BYTE PTR 4[rsi]
	sal	ebp, 5
	mov	rbx, QWORD PTR 24[rax]
	movsx	ax, BYTE PTR 3[rsi]
	sal	edx, 3
	sal	eax, 3
	mov	WORD PTR 510[rbx], dx
	mov	WORD PTR 508[rbx], ax
	lea	eax, [rax+rcx*8]
	mov	ecx, r12d
	xor	r12d, r12d
	mov	WORD PTR 512[rbx], ax
	movzx	eax, BYTE PTR 6[rsi]
	mov	QWORD PTR 528[rbx], rsi
	lea	r10d, [rdx+rax*8]
	movsx	edx, dx
	mov	WORD PTR 514[rbx], r10w
	movzx	r11d, BYTE PTR [rsi]
	movzx	r8d, r11b
	mov	eax, r8d
	mov	ah, cl
	movzx	ecx, r11b
	mov	WORD PTR 536[rbx], ax
	movsx	eax, r10w
	add	edi, ecx
	sub	eax, edx
	mov	edx, 2863311531
	sal	edi, 3
	sal	eax, 8
	mov	DWORD PTR 424[rbx], edi
	movzx	ecx, BYTE PTR 1[rsi]
	mov	QWORD PTR 436[rbx], 0
	imul	rax, rdx
	mov	DWORD PTR 444[rbx], -1
	add	ebp, ecx
	mov	ecx, 31
	sal	ebp, 3
	shr	rax, 42
	mov	DWORD PTR 428[rbx], ebp
	add	eax, 120
	mov	WORD PTR 432[rbx], ax
	xor	eax, eax
	mov	WORD PTR 448[rbx], ax
	call	VramMalloc
	xor	edx, edx
	mov	ecx, -256
	mov	BYTE PTR 50[rbx], 16
	mov	ebp, DWORD PTR .LC0[rip]
	mov	WORD PTR 36[rbx], dx
	mov	rdi, rax
	mov	WORD PTR 48[rbx], cx
	mov	rcx, rbx
	mov	QWORD PTR 520[rbx], rax
	mov	DWORD PTR 42[rbx], 1152
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 8192
	mov	QWORD PTR 8[rbx], rax
	mov	DWORD PTR 16[rbx], ebp
	call	UpdateSpriteAnimation
	xor	r8d, r8d
	mov	BYTE PTR 114[rbx], 16
	lea	rcx, 64[rbx]
	mov	r9d, -255
	lea	rax, 512[rdi]
	mov	WORD PTR 100[rbx], r8w
	mov	WORD PTR 112[rbx], r9w
	mov	DWORD PTR 106[rbx], 1152
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 120[rbx], -1
	mov	DWORD PTR 96[rbx], 8192
	mov	QWORD PTR 72[rbx], rax
	mov	DWORD PTR 80[rbx], ebp
	call	UpdateSpriteAnimation
	xor	r10d, r10d
	mov	r11d, -254
	lea	rax, 800[rdi]
	mov	WORD PTR 164[rbx], r10w
	lea	rcx, 128[rbx]
	mov	WORD PTR 176[rbx], r11w
	mov	DWORD PTR 170[rbx], 1152
	mov	BYTE PTR 178[rbx], 16
	mov	BYTE PTR 181[rbx], 0
	mov	DWORD PTR 184[rbx], -1
	mov	DWORD PTR 160[rbx], 8192
	mov	QWORD PTR 136[rbx], rax
	mov	DWORD PTR 144[rbx], ebp
	call	UpdateSpriteAnimation
	lea	rax, 928[rdi]
	mov	WORD PTR 228[rbx], r12w
	lea	rcx, 192[rbx]
	mov	QWORD PTR 200[rbx], rax
	mov	eax, -253
	add	rdi, 960
	mov	DWORD PTR 234[rbx], 1152
	mov	BYTE PTR 242[rbx], 16
	mov	BYTE PTR 245[rbx], 0
	mov	DWORD PTR 248[rbx], -1
	mov	DWORD PTR 224[rbx], 8192
	mov	DWORD PTR 208[rbx], ebp
	mov	WORD PTR 240[rbx], ax
	call	UpdateSpriteAnimation
	xor	eax, eax
	mov	DWORD PTR 298[rbx], 1152
	lea	rcx, 256[rbx]
	mov	WORD PTR 292[rbx], ax
	mov	eax, -252
	mov	BYTE PTR 306[rbx], 16
	mov	BYTE PTR 309[rbx], 0
	mov	DWORD PTR 312[rbx], -1
	mov	DWORD PTR 288[rbx], 8192
	mov	QWORD PTR 264[rbx], rdi
	mov	DWORD PTR 272[rbx], ebp
	mov	WORD PTR 304[rbx], ax
	call	UpdateSpriteAnimation
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8078E48
	.def	sub_8078E48;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8078E48
sub_8078E48:
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
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r13d, -4096
	imul	esi, DWORD PTR [r8], 1663525
	add	esi, 1013904223
	imul	edi, esi, 1663525
	shr	esi, 20
	mov	DWORD PTR 456[rcx], 0
	lea	r9, 476[rcx]
	mov	r12d, esi
	mov	esi, -4096
	sub	esi, r12d
	add	edi, 1013904223
	movd	xmm1, esi
	imul	ebx, edi, 1663525
	shr	edi, 20
	neg	edi
	pinsrw	xmm1, edi, 1
	add	ebx, 1013904223
	imul	r11d, ebx, 1663525
	shr	ebx, 20
	add	ebx, 4096
	movd	xmm3, ebx
	add	r11d, 1013904223
	imul	r10d, r11d, 1663525
	shr	r11d, 20
	neg	r11d
	pinsrw	xmm3, r11d, 1
	add	r10d, 1013904223
	punpckldq	xmm1, xmm3
	imul	ebp, r10d, 1663525
	shr	r10d, 20
	mov	r12d, r10d
	mov	r10d, -2048
	sub	r10d, r12d
	mov	r12d, r13d
	add	ebp, 1013904223
	movd	xmm2, r10d
	imul	edx, ebp, 1663525
	shr	ebp, 19
	sub	r12d, ebp
	mov	ebp, r13d
	pinsrw	xmm2, r12d, 1
	add	edx, 1013904223
	imul	eax, edx, 1663525
	shr	edx, 20
	add	edx, 2048
	movd	xmm0, edx
	lea	rdx, 492[rcx]
	add	eax, 1013904223
	mov	r14d, eax
	shr	r14d, 19
	sub	ebp, r14d
	pinsrw	xmm0, ebp, 1
	punpckldq	xmm2, xmm0
	movdqu	xmm0, xmm1
	punpcklqdq	xmm0, xmm2
	movups	XMMWORD PTR 460[rcx], xmm0
.L5:
	imul	eax, eax, 1663525
	add	r9, 4
	add	eax, 1013904223
	mov	r10d, eax
	imul	eax, eax, 1663525
	shr	r10d, 18
	sub	r10d, 8192
	add	eax, 1013904223
	mov	WORD PTR -4[r9], r10w
	mov	r10d, eax
	shr	r10d, 18
	neg	r10d
	mov	WORD PTR -2[r9], r10w
	cmp	rdx, r9
	jne	.L5
	mov	WORD PTR 490[rcx], r10w
	lea	r10, 508[rcx]
.L6:
	imul	eax, eax, 1663525
	add	rdx, 4
	add	eax, 1013904223
	mov	r9d, eax
	imul	eax, eax, 1663525
	shr	r9d, 18
	sub	r9d, 8192
	add	eax, 1013904223
	mov	WORD PTR -4[rdx], r9w
	mov	r9d, eax
	shr	r9d, 18
	neg	r9d
	mov	WORD PTR -2[rdx], r9w
	cmp	rdx, r10
	jne	.L6
	imul	eax, eax, 1663525
	xor	r11d, r11d
	xor	esi, esi
	mov	ebx, -704
	mov	rdx, QWORD PTR .LC6[rip]
	mov	r10d, -704
	mov	edi, -640
	mov	WORD PTR 506[rcx], r9w
	mov	r9d, 1024
	mov	r12d, -640
	mov	WORD PTR 342[rcx], bx
	lea	rbx, 424[rcx]
	add	eax, 1013904223
	mov	QWORD PTR 320[rcx], rdx
	imul	edx, eax, 1663525
	and	eax, 2047
	mov	WORD PTR 334[rcx], r10w
	sub	r9d, eax
	mov	eax, -32
	mov	WORD PTR 338[rcx], r11w
	mov	WORD PTR 328[rcx], r9w
	xor	r9d, r9d
	add	edx, 1013904223
	mov	WORD PTR 330[rcx], r9w
	mov	r9d, edx
	mov	WORD PTR 346[rcx], si
	and	r9d, 31
	mov	WORD PTR 350[rcx], di
	sub	eax, r9d
	mov	r9d, 4096
	mov	WORD PTR 358[rcx], r12w
	mov	WORD PTR 332[rcx], ax
	imul	eax, edx, 1663525
	add	eax, 1013904223
	imul	edx, eax, 1663525
	and	eax, 2047
	sub	eax, 1024
	mov	WORD PTR 336[rcx], ax
	add	edx, 1013904223
	mov	eax, edx
	and	eax, 31
	add	eax, 32
	mov	WORD PTR 340[rcx], ax
	imul	eax, edx, 1663525
	add	eax, 1013904223
	imul	edx, eax, 1663525
	and	eax, 8191
	sub	r9d, eax
	mov	eax, -48
	mov	WORD PTR 344[rcx], r9w
	add	edx, 1013904223
	mov	r9d, edx
	imul	edx, edx, 1663525
	and	r9d, 63
	sub	eax, r9d
	lea	r9, 360[rcx]
	add	edx, 1013904223
	mov	WORD PTR 348[rcx], ax
	imul	eax, edx, 1663525
	and	edx, 8191
	add	eax, 1013904223
	sub	edx, 4096
	xor	ebp, ebp
	mov	WORD PTR 352[rcx], dx
	mov	edx, eax
	and	edx, 63
	mov	WORD PTR 354[rcx], bp
	add	edx, 48
	mov	WORD PTR 356[rcx], dx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L14:
	imul	eax, eax, 1663525
	add	eax, 1013904223
	mov	r10d, eax
	and	r10d, 63
	add	r10d, 64
.L7:
	mov	WORD PTR [r9], dx
	mov	edx, -576
	add	r9, 8
	mov	WORD PTR -6[r9], r11w
	mov	WORD PTR -4[r9], r10w
	mov	WORD PTR -2[r9], dx
	cmp	rbx, r9
	je	.L13
.L8:
	imul	eax, eax, 1663525
	add	eax, 1013904223
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 16383
	sub	edx, 8192
	add	eax, 1013904223
	mov	r11d, eax
	and	r11d, 4095
	test	dx, dx
	jg	.L14
	mov	r10d, -95
	mov	eax, -1133579425
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L13:
	mov	DWORD PTR [r8], eax
	mov	eax, -576
	mov	WORD PTR 422[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8079510
	.def	sub_8079510;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8079510
sub_8079510:
	.seh_endprologue
	lea	rax, 320[rcx]
	add	rcx, 424
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L23:
	test	r8w, r8w
	jle	.L16
	add	rax, 8
	cmp	rcx, rax
	je	.L22
.L20:
	movzx	edx, WORD PTR 6[rax]
	movzx	r8d, WORD PTR 2[rax]
	test	dx, dx
	jg	.L23
.L16:
	movzx	r9d, WORD PTR [rax]
	sal	r8d, 16
	movzx	r10d, WORD PTR 4[rax]
	or	r8d, r9d
	mov	r9d, edx
	add	edx, 42
	sal	r9d, 16
	movd	xmm0, r8d
	mov	r8d, 1536
	or	r9d, r10d
	cmp	dx, r8w
	movd	xmm1, r9d
	cmovg	edx, r8d
	add	rax, 8
	paddw	xmm0, xmm1
	mov	WORD PTR -2[rax], dx
	movd	DWORD PTR -8[rax], xmm0
	cmp	rcx, rax
	jne	.L20
.L22:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80791B4
	.def	sub_80791B4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80791B4
sub_80791B4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	edx, edx
	movzx	esi, WORD PTR 432[rcx]
	mov	eax, DWORD PTR [rax]
	div	esi
	mov	esi, edx
	mov	ebx, eax
	cmp	DWORD PTR 444[rcx], eax
	je	.L25
	call	sub_8078E48
	mov	DWORD PTR 444[rcx], ebx
.L25:
	movsx	edx, WORD PTR 514[rcx]
	lea	eax, [rsi+rsi*2]
	sal	eax, 9
	sal	edx, 8
	mov	DWORD PTR 440[rcx], eax
	cmp	eax, edx
	jle	.L26
	mov	DWORD PTR 452[rcx], 1
	sub	eax, edx
	cmp	eax, 15360
	jg	.L31
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	lea	rdx, 476[rcx]
	mov	DWORD PTR 452[rcx], 0
	add	rcx, 508
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	eax, WORD PTR 2[rdx]
	sub	ax, 512
	mov	WORD PTR 2[rdx], ax
	cmp	ax, -24576
	jge	.L28
	imul	eax, DWORD PTR [r9], 1663525
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	shr	r8d, 18
	sub	r8d, 8192
	add	eax, 1013904223
	mov	WORD PTR [rdx], r8w
	mov	DWORD PTR [r9], eax
	shr	eax, 18
	neg	eax
	mov	WORD PTR 2[rdx], ax
.L28:
	add	rdx, 4
	cmp	rdx, rcx
	jne	.L29
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8079510
	.seh_endproc
	.p2align 4
	.globl	sub_8079560
	.def	sub_8079560;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8079560
sub_8079560:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	xor	ebx, ebx
	movsx	ebp, WORD PTR 514[rcx]
	mov	r12d, DWORD PTR 424[rcx]
	add	ebp, DWORD PTR 428[rcx]
	mov	rsi, rcx
	lea	r14, 256[rcx]
	lea	r13, 192[rcx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L39:
	cmp	WORD PTR 322[rsi+rbx*8], 0
	jle	.L33
.L34:
	add	rbx, 1
	cmp	rbx, 13
	je	.L38
.L36:
	cmp	WORD PTR 326[rsi+rbx*8], 0
	jg	.L39
.L33:
	movsx	dx, BYTE PTR 321[rsi+rbx*8]
	mov	eax, r12d
	sub	ax, WORD PTR [rdi]
	add	eax, edx
	mov	edx, ebp
	sub	dx, WORD PTR 4[rdi]
	test	bl, 1
	je	.L35
	mov	WORD PTR 230[rsi], ax
	mov	rcx, r13
	movsx	ax, BYTE PTR 323[rsi+rbx*8]
	add	rbx, 1
	add	eax, edx
	mov	WORD PTR 232[rsi], ax
	call	DisplaySprite
	cmp	rbx, 13
	jne	.L36
.L38:
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
.L35:
	mov	WORD PTR 294[rsi], ax
	mov	rcx, r14
	movsx	ax, BYTE PTR 323[rsi+rbx*8]
	add	eax, edx
	mov	WORD PTR 296[rsi], ax
	call	DisplaySprite
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	sub_80792AC
	.def	sub_80792AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80792AC
sub_80792AC:
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
	movsx	eax, WORD PTR 514[rcx]
	mov	edx, DWORD PTR 440[rcx]
	mov	r12d, eax
	sal	eax, 8
	mov	rbx, rcx
	mov	ecx, edx
	sub	ecx, eax
	cmp	ecx, 15360
	jg	.L41
	movsx	eax, WORD PTR 458[rbx]
	sub	r12w, WORD PTR 510[rbx]
	movsx	r12d, r12w
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jg	.L55
.L42:
	lea	rdi, 460[rbx]
	lea	rsi, 468[rbx]
.L44:
	movsx	eax, WORD PTR 2[rdi]
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jg	.L56
.L43:
	add	rdi, 4
	cmp	rdi, rsi
	jne	.L44
	lea	r13, 476[rbx]
.L46:
	movsx	eax, WORD PTR 2[rsi]
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jg	.L57
.L45:
	add	rsi, 4
	cmp	rsi, r13
	jne	.L46
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	lea	rsi, 492[rbx]
	lea	rbp, 192[rbx]
	.p2align 4,,10
	.p2align 3
.L48:
	movsx	eax, WORD PTR 2[r13]
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jg	.L58
.L47:
	add	r13, 4
	cmp	r13, rsi
	jne	.L48
	movsx	eax, WORD PTR 2[rsi]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	lea	r13, 508[rbx]
	lea	rbp, 256[rbx]
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jg	.L59
.L49:
	add	rsi, 4
	cmp	rsi, r13
	je	.L40
.L60:
	mov	edx, DWORD PTR 440[rbx]
	movsx	eax, WORD PTR 2[rsi]
	add	eax, edx
	sar	eax, 8
	cmp	r12d, eax
	jle	.L49
.L59:
	movsx	ecx, WORD PTR [rsi]
	add	ecx, DWORD PTR 436[rbx]
	add	rsi, 4
	mov	edx, DWORD PTR 424[rbx]
	sar	ecx, 8
	sub	dx, WORD PTR [rdi]
	add	edx, ecx
	mov	rcx, rbp
	mov	WORD PTR 294[rbx], dx
	mov	edx, DWORD PTR 428[rbx]
	sub	dx, WORD PTR 4[rdi]
	add	eax, edx
	mov	WORD PTR 296[rbx], ax
	call	DisplaySprite
	cmp	rsi, r13
	jne	.L60
.L40:
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
.L55:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movsx	ecx, WORD PTR 456[rbx]
	add	ecx, DWORD PTR 436[rbx]
	mov	edx, DWORD PTR 424[rbx]
	sar	ecx, 8
	sub	dx, WORD PTR [r8]
	add	edx, ecx
	mov	rcx, rbx
	mov	WORD PTR 38[rbx], dx
	mov	edx, DWORD PTR 428[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 40[rbx], ax
	call	DisplaySprite
	mov	edx, DWORD PTR 440[rbx]
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L58:
	movsx	ecx, WORD PTR 0[r13]
	add	ecx, DWORD PTR 436[rbx]
	mov	edx, DWORD PTR 424[rbx]
	sar	ecx, 8
	sub	dx, WORD PTR [rdi]
	add	edx, ecx
	mov	rcx, rbp
	mov	WORD PTR 230[rbx], dx
	mov	edx, DWORD PTR 428[rbx]
	sub	dx, WORD PTR 4[rdi]
	add	eax, edx
	mov	WORD PTR 232[rbx], ax
	call	DisplaySprite
	mov	edx, DWORD PTR 440[rbx]
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L57:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movsx	ecx, WORD PTR [rsi]
	add	ecx, DWORD PTR 436[rbx]
	mov	edx, DWORD PTR 424[rbx]
	sar	ecx, 8
	sub	dx, WORD PTR [r8]
	add	edx, ecx
	lea	rcx, 128[rbx]
	mov	WORD PTR 166[rbx], dx
	mov	edx, DWORD PTR 428[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 168[rbx], ax
	call	DisplaySprite
	mov	edx, DWORD PTR 440[rbx]
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L56:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movsx	ecx, WORD PTR [rdi]
	add	ecx, DWORD PTR 436[rbx]
	mov	edx, DWORD PTR 424[rbx]
	sar	ecx, 8
	sub	dx, WORD PTR [r8]
	add	edx, ecx
	lea	rcx, 64[rbx]
	mov	WORD PTR 102[rbx], dx
	mov	edx, DWORD PTR 428[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 104[rbx], ax
	call	DisplaySprite
	mov	edx, DWORD PTR 440[rbx]
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L41:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	sub_8079560
	.seh_endproc
	.p2align 4
	.globl	sub_8079810
	.def	sub_8079810;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8079810
sub_8079810:
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
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_80791B4
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rsi], -128
	jne	.L65
	mov	eax, DWORD PTR 428[rbx]
	sal	eax, 8
	add	eax, DWORD PTR 440[rbx]
	sub	eax, 4096
	mov	DWORD PTR 16[rsi], eax
	mov	eax, DWORD PTR 452[rbx]
	test	eax, eax
	jne	.L66
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_80792AC
	.p2align 4,,10
	.p2align 3
.L66:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	eax, DWORD PTR 36[rsi]
	test	al, -128
	jne	.L64
	and	eax, -4194305
	mov	BYTE PTR 117[rsi], 9
	mov	DWORD PTR 36[rsi], eax
.L64:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_Interactable069[rip]
	mov	rcx, rbx
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_80792AC
	.p2align 4,,10
	.p2align 3
.L65:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_Interactable069[rip]
	mov	rcx, rbx
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_80792AC
	.seh_endproc
	.p2align 4
	.globl	sub_8079624
	.def	sub_8079624;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8079624
sub_8079624:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, 1
	mov	eax, DWORD PTR 424[rcx]
	movsx	edx, WORD PTR 512[rcx]
	sub	eax, DWORD PTR [r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L67
	movsx	edx, WORD PTR 508[rcx]
	add	eax, edx
	cmp	eax, 554
	jg	.L67
	mov	eax, DWORD PTR 428[rcx]
	movsx	edx, WORD PTR 514[rcx]
	sub	eax, DWORD PTR 4[r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L67
	movsx	edx, WORD PTR 510[rcx]
	xor	r9d, r9d
	add	eax, edx
	cmp	eax, 368
	setg	r9b
.L67:
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80796A8
	.def	sub_80796A8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80796A8
sub_80796A8:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r10]
	and	eax, 128
	jne	.L74
	mov	r9d, DWORD PTR 440[rcx]
	movsx	edx, WORD PTR 514[rcx]
	sar	r9d, 8
	sub	edx, r9d
	cmp	edx, 63
	jle	.L72
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, WORD PTR 424[rcx]
	movzx	r8d, WORD PTR 13[r10]
	sub	dx, WORD PTR [r11]
	add	dx, WORD PTR 437[rcx]
	movsx	edx, dx
	sub	r8w, WORD PTR [r11]
	movsx	r8d, r8w
	lea	ebx, -32[rdx]
	cmp	ebx, r8d
	jg	.L72
	add	edx, 32
	cmp	r8d, edx
	jg	.L72
	mov	r8d, DWORD PTR 4[r11]
	mov	eax, DWORD PTR 428[rcx]
	movzx	edx, WORD PTR 17[r10]
	sub	eax, r8d
	add	eax, r9d
	sub	edx, r8d
	movsx	ecx, ax
	movsx	r8d, dx
	sub	ecx, 32
	cmp	ecx, r8d
	setle	cl
	cmp	ax, dx
	setge	al
	movzx	eax, al
	and	eax, ecx
.L72:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	xor	eax, eax
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_Interactable069
	.def	Task_Interactable069;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Interactable069
Task_Interactable069:
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
	call	sub_80791B4
	mov	rcx, rbx
	call	sub_80796A8
	test	eax, eax
	jne	.L81
.L76:
	mov	rcx, rbx
	call	sub_8079624
	test	eax, eax
	je	.L77
	mov	rax, QWORD PTR 528[rbx]
	movzx	edx, BYTE PTR 536[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L77:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_80792AC
	.p2align 4,,10
	.p2align 3
.L81:
	call	Player_SetMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 20
	xor	ecx, ecx
	mov	WORD PTR 108[rax], dx
	lea	rdx, sub_8079810[rip]
	or	DWORD PTR 36[rax], 4194304
	mov	DWORD PTR 20[rax], 0
	mov	WORD PTR 24[rax], cx
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L76
	.seh_endproc
	.p2align 4
	.globl	sub_80797AC
	.def	sub_80797AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80797AC
sub_80797AC:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	Player_SetMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 20
	xor	ecx, ecx
	mov	WORD PTR 108[rax], dx
	lea	rdx, sub_8079810[rip]
	or	DWORD PTR 36[rax], 4194304
	mov	DWORD PTR 20[rax], 0
	mov	WORD PTR 24[rax], cx
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80797E8
	.def	sub_80797E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80797E8
sub_80797E8:
	.seh_endprologue
	mov	rax, QWORD PTR 528[rcx]
	movzx	edx, BYTE PTR 536[rcx]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_8079888
	.def	sub_8079888;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8079888
sub_8079888:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rdx]
	test	al, -128
	jne	.L85
	and	eax, -4194305
	mov	BYTE PTR 117[rdx], 9
	mov	DWORD PTR 36[rdx], eax
.L85:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rcx, Task_Interactable069[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.word	0
	.word	582
	.align 8
.LC6:
	.word	0
	.word	0
	.word	0
	.word	-768
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
