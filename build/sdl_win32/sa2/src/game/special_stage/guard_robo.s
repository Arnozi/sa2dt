	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	SpecialStageGuardRoboOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	SpecialStageGuardRoboOnDestroy
SpecialStageGuardRoboOnDestroy:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80714C4
	.def	sub_80714C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80714C4
sub_80714C4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80714C8
	.def	sub_80714C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80714C8
sub_80714C8:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 104[rdx]
	sub	eax, 1
	mov	WORD PTR 104[rdx], ax
	test	ax, ax
	jle	.L6
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	eax, 1
	mov	WORD PTR 88[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_807120C
	.def	sub_807120C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807120C
sub_807120C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 24[r8]
	mov	rbx, QWORD PTR 24[rdx]
	mov	rax, rcx
	movzx	ecx, WORD PTR 248[rbx]
	lea	edx, 1[rcx]
	cmp	dx, 15
	ja	.L8
	mov	r9d, 34945
	bt	r9, rdx
	jnc	.L8
.L7:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movsx	edx, WORD PTR 94[rax]
	movsx	r9d, WORD PTR 238[rbx]
	lea	r10d, -4[rdx]
	cmp	r9d, r10d
	jl	.L7
	add	edx, 4
	cmp	r9d, edx
	jg	.L7
	movsx	edx, WORD PTR 98[rax]
	movsx	r9d, WORD PTR 242[rbx]
	lea	r10d, -4[rdx]
	cmp	r9d, r10d
	jl	.L7
	add	edx, 4
	cmp	r9d, edx
	jg	.L7
	movsx	dx, BYTE PTR 245[rbx]
	cmp	dx, 3
	ja	.L7
	lea	edx, -4[rcx]
	cmp	dx, 1
	jbe	.L13
	cmp	cx, 9
	je	.L13
	cmp	WORD PTR 2156[r8], 0
	movzx	eax, WORD PTR 250[rbx]
	jne	.L12
	test	ax, ax
	jne	.L7
	movzx	eax, WORD PTR 324[rbx]
	mov	ecx, 146
	mov	DWORD PTR 272[rbx], 0
	mov	WORD PTR 252[rbx], ax
	mov	eax, 14
	mov	WORD PTR 248[rbx], ax
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
.L12:
	test	ax, ax
	jne	.L7
	mov	rcx, r8
	mov	edx, 10
	call	SpecialStageHandleLoseRings
	movzx	eax, WORD PTR 320[rbx]
	mov	ecx, 118
	mov	DWORD PTR 272[rbx], 0
	mov	DWORD PTR 248[rbx], 9830406
	mov	WORD PTR 252[rbx], ax
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
.L13:
	movzx	edx, WORD PTR 112[rax]
	mov	rcx, r8
	mov	WORD PTR 104[rax], dx
	mov	edx, 2
	mov	WORD PTR 88[rax], dx
	call	HandleRoboPlayerCollision
	mov	ecx, 10
	mov	WORD PTR 248[rbx], cx
	mov	ecx, 275
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	sub_80710B0
	.def	sub_80710B0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80710B0
sub_80710B0:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	movzx	ecx, WORD PTR 100[rbx]
	mov	edx, DWORD PTR 92[rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	r11d, ecx
	neg	r11d
	mov	rbp, QWORD PTR 24[rax]
	mov	rax, r11
	and	r11d, 1023
	movsx	edi, WORD PTR 512[r9+r11*2]
	and	eax, 1023
	movsx	r8d, WORD PTR [r9+rax*2]
	mov	r10d, DWORD PTR 240[rbp]
	mov	r11d, DWORD PTR 236[rbp]
	mov	eax, DWORD PTR 96[rbx]
	sar	edi, 6
	lea	esi, 0[0+r8*4]
	mov	ebp, edi
	sar	r8d, 6
	sub	r10d, eax
	sub	r11d, edx
	sar	r10d, 8
	sar	r11d, 8
	imul	r8d, r10d
	imul	ebp, r11d
	add	r8d, ebp
	test	r8d, r8d
	jle	.L15
.L27:
	sub	cx, WORD PTR 108[rbx]
	and	cx, 1023
	mov	WORD PTR 100[rbx], cx
.L16:
	movzx	r8d, cx
	movzx	ecx, cx
	movzx	r10d, WORD PTR 102[rbx]
	movsx	ecx, WORD PTR 512[r9+rcx*2]
	movsx	r8d, WORD PTR [r9+r8*2]
	imul	ecx, r10d
	imul	r8d, r10d
	sal	ecx, 2
	sal	r8d, 2
	sar	ecx, 8
	sar	r8d, 8
	sub	eax, ecx
	mov	ecx, 64356352
	sub	edx, r8d
	cmp	edx, ecx
	cmovle	ecx, edx
	cmp	edx, 2752511
	mov	edx, 2752512
	cmovg	edx, ecx
	mov	rcx, rbx
	mov	DWORD PTR 92[rbx], edx
	mov	edx, 64356352
	cmp	eax, edx
	cmovle	edx, eax
	cmp	eax, 2752511
	mov	eax, 2752512
	cmovg	eax, edx
	mov	DWORD PTR 96[rbx], eax
	call	sub_807120C
	movsx	ecx, WORD PTR 110[rbx]
	movzx	eax, WORD PTR 102[rbx]
	add	eax, ecx
	movzx	r8d, ax
	cmp	r8d, ecx
	cmovg	eax, ecx
	mov	WORD PTR 102[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	je	.L17
	add	cx, WORD PTR 108[rbx]
	and	cx, 1023
	mov	WORD PTR 100[rbx], cx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	neg	esi
	imul	r10d, edi
	sar	esi, 8
	imul	esi, r11d
	add	esi, r10d
	jns	.L16
	jmp	.L27
	.seh_endproc
	.p2align 4
	.globl	sub_8071380
	.def	sub_8071380;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8071380
sub_8071380:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r11, rdx
	mov	rdx, QWORD PTR 88[rsp]
	movzx	r10d, BYTE PTR 7[rdx]
	mov	QWORD PTR 8[rcx], r11
	mov	eax, r10d
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5247
	mov	ebx, eax
	or	bh, 8
	and	r10d, 2
	cmovne	eax, ebx
	xor	r10d, r10d
	xor	ebx, ebx
	mov	WORD PTR 16[rcx], r10w
	movzx	r10d, WORD PTR [rdx]
	mov	DWORD PTR 32[rcx], eax
	movzx	eax, BYTE PTR 80[rsp]
	mov	DWORD PTR 44[rcx], -65536
	sal	eax, 6
	mov	WORD PTR 18[rcx], r10w
	mov	WORD PTR 42[rcx], ax
	movzx	eax, WORD PTR 2[rdx]
	mov	WORD PTR 38[rcx], r8w
	mov	WORD PTR 40[rcx], r9w
	mov	BYTE PTR 48[rcx], al
	mov	BYTE PTR 49[rcx], -1
	movzx	eax, BYTE PTR 6[rdx]
	mov	BYTE PTR 53[rcx], 0
	mov	BYTE PTR 50[rcx], al
	mov	DWORD PTR 56[rcx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	mov	r11d, 256
	xor	edx, edx
	mov	ecx, 256
	mov	WORD PTR 1498[rax], r11w
	mov	WORD PTR 1510[rax], bx
	mov	WORD PTR 1522[rax], dx
	mov	WORD PTR 1534[rax], cx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStageGuardRobo
	.def	CreateSpecialStageGuardRobo;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStageGuardRobo
CreateSpecialStageGuardRobo:
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
	lea	rax, SpecialStageGuardRoboOnDestroy[rip]
	xor	r9d, r9d
	mov	edx, 120
	mov	r8d, 40960
	lea	rbp, gUnknown_080DF914[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	lea	rcx, Task_GuardRoboMain[rip]
	call	TaskCreate
	mov	rcx, rbp
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	mov	QWORD PTR [rbx], rsi
	movzx	esi, BYTE PTR 2176[rsi]
	call	MaxSpriteSize
	mov	rcx, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	BYTE PTR 58[rbx], 16
	cwde
	mov	DWORD PTR 24[rbx], 57868288
	mov	rdx, QWORD PTR [rcx]
	sal	eax, 5
	mov	BYTE PTR 61[rbx], 0
	cdqe
	mov	DWORD PTR 40[rbx], 4223
	add	rax, rdx
	mov	QWORD PTR 72[rbx], rdx
	mov	QWORD PTR [rcx], rax
	lea	rcx, 8[rbx]
	movabs	rax, 1924151902421
	mov	QWORD PTR 16[rbx], rdx
	mov	QWORD PTR 46[rbx], rax
	mov	DWORD PTR 54[rbx], -16449537
	mov	DWORD PTR 64[rbx], -1
	call	UpdateSpriteAnimation
	mov	edx, 256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	mov	r9d, 256
	mov	r10d, 1
	xor	r11d, r11d
	mov	WORD PTR 1498[rax], dx
	mov	rdx, QWORD PTR .refptr.gSpecialStageGuardRoboStartPositions[rip]
	mov	WORD PTR 1510[rax], cx
	mov	WORD PTR 1522[rax], r8w
	mov	WORD PTR 1534[rax], r9w
	movzx	eax, sil
	mov	esi, 60
	mov	rdx, QWORD PTR [rdx+rax*8]
	mov	WORD PTR 88[rbx], r10w
	mov	WORD PTR 102[rbx], r11w
	mov	QWORD PTR 92[rbx], rdx
	mov	rdx, QWORD PTR .refptr.gUnknown_080DF968[rip]
	mov	QWORD PTR 80[rbx], rbp
	movzx	ecx, WORD PTR [rdx+rax*8]
	mov	WORD PTR 100[rbx], cx
	mov	ecx, DWORD PTR 2[rdx+rax*8]
	movzx	eax, WORD PTR 6[rdx+rax*8]
	mov	WORD PTR 112[rbx], si
	mov	DWORD PTR 106[rbx], ecx
	mov	WORD PTR 110[rbx], ax
	mov	rax, rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8071478
	.def	sub_8071478;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8071478
sub_8071478:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	movdqu	xmm0, XMMWORD PTR sGuardRoboStateHandlers[rip]
	mov	rcx, QWORD PTR sGuardRoboStateHandlers[rip+16]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR 16[rsp], rcx
	movups	XMMWORD PTR [rsp], xmm0
	movzx	eax, WORD PTR 2172[rax]
	sub	eax, 4
	cmp	ax, 1
	jbe	.L37
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	movsx	rax, WORD PTR 88[rdx]
	mov	rax, QWORD PTR [rsp+rax*8]
	add	rsp, 40
	rex.W jmp	rax
	.seh_endproc
	.p2align 4
	.globl	Task_GuardRoboMain
	.def	Task_GuardRoboMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_GuardRoboMain
Task_GuardRoboMain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 96
	.seh_stackalloc	96
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	cmp	BYTE PTR 2178[rsi], 0
	mov	r8, rsi
	je	.L56
.L39:
	mov	rax, QWORD PTR 92[rbx]
	lea	rdx, 32[rsp]
	lea	rcx, 64[rsp]
	mov	DWORD PTR 40[rsp], 0
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR .LC1[rip]
	mov	QWORD PTR 44[rsp], rax
	call	SpecialStageCalcEntityScreenPosition
	test	ax, ax
	je	.L38
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	movzx	edx, WORD PTR 76[rsp]
	mov	WORD PTR 1498[rax], dx
	movzx	edx, WORD PTR 78[rsp]
	mov	WORD PTR 1510[rax], dx
	movzx	edx, WORD PTR 80[rsp]
	mov	WORD PTR 1522[rax], dx
	movzx	edx, WORD PTR 82[rsp]
	mov	WORD PTR 1534[rax], dx
	movsx	eax, WORD PTR 2196[rsi]
	movsx	edx, WORD PTR 68[rsp]
	sub	eax, 60
	cmp	edx, eax
	mov	eax, 5
	mov	edx, 12
	cmovge	edx, eax
	cmp	BYTE PTR 2178[rsi], 0
	je	.L57
	cmp	WORD PTR 88[rbx], 2
	jne	.L46
.L59:
	test	BYTE PTR 104[rbx], 2
	jne	.L58
.L46:
	lea	rcx, 8[rbx]
	call	DisplaySprite
	nop
.L38:
	add	rsp, 96
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	call	sub_8071478
	mov	r8, QWORD PTR [rbx]
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L57:
	movzx	eax, WORD PTR 100[rbx]
	mov	rcx, QWORD PTR 80[rbx]
	lea	r8, 8[rbx]
	add	eax, 64
	sub	ax, WORD PTR 2152[rsi]
	shr	ax, 7
	and	eax, 7
	lea	rax, [rcx+rax*8]
	movzx	ecx, BYTE PTR 7[rax]
	movzx	r11d, WORD PTR [rax]
	movzx	r10d, WORD PTR 2[rax]
	movzx	r9d, BYTE PTR 6[rax]
	mov	eax, ecx
	mov	WORD PTR 26[rbx], r11w
	and	eax, 1
	mov	BYTE PTR 56[rbx], r10b
	cmp	al, 1
	mov	BYTE PTR 58[rbx], r9b
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5247
	mov	edi, eax
	or	edi, 2048
	and	ecx, 2
	mov	rcx, r8
	cmovne	eax, edi
	mov	DWORD PTR 40[rbx], eax
	mov	eax, DWORD PTR 66[rsp]
	mov	DWORD PTR 46[rbx], eax
	movzx	eax, dl
	sal	eax, 6
	mov	WORD PTR 50[rbx], ax
	call	UpdateSpriteAnimation
	cmp	WORD PTR 88[rbx], 2
	je	.L59
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L58:
	cmp	BYTE PTR 2178[rsi], 0
	je	.L38
	jmp	.L46
	.seh_endproc
	.p2align 4
	.globl	sub_80714F4
	.def	sub_80714F4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80714F4
sub_80714F4:
	.seh_endprologue
	mov	eax, DWORD PTR 92[rcx]
	cmp	eax, 2752511
	jg	.L61
	mov	DWORD PTR 92[rcx], 2752512
.L62:
	mov	eax, DWORD PTR 96[rcx]
	cmp	eax, 2752511
	jg	.L63
	mov	DWORD PTR 96[rcx], 2752512
.L60:
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	cmp	eax, 64356352
	jle	.L60
	mov	DWORD PTR 96[rcx], 64356352
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	cmp	eax, 64356352
	jle	.L62
	mov	DWORD PTR 92[rcx], 64356352
	jmp	.L62
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sGuardRoboStateHandlers:
	.quad	sub_80714C4
	.quad	sub_80710B0
	.quad	sub_80714C8
	.align 32
gUnknown_080DF914:
	.word	883
	.word	4
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	5
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	6
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	7
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	0
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	1
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	2
	.word	64
	.byte	16
	.byte	0
	.word	883
	.word	3
	.word	64
	.byte	16
	.byte	0
	.word	-1
	.word	-1
	.word	-1
	.space 2
	.align 8
.LC1:
	.word	32
	.word	32
	.word	0
	.word	29
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	SpecialStageHandleLoseRings;	.scl	2;	.type	32;	.endef
	.def	HandleRoboPlayerCollision;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	MaxSpriteSize;	.scl	2;	.type	32;	.endef
	.def	SpecialStageCalcEntityScreenPosition;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gUnknown_080DF968, "dr"
	.globl	.refptr.gUnknown_080DF968
	.linkonce	discard
.refptr.gUnknown_080DF968:
	.quad	gUnknown_080DF968
	.section	.rdata$.refptr.gSpecialStageGuardRoboStartPositions, "dr"
	.globl	.refptr.gSpecialStageGuardRoboStartPositions
	.linkonce	discard
.refptr.gSpecialStageGuardRoboStartPositions:
	.quad	gSpecialStageGuardRoboStartPositions
	.section	.rdata$.refptr.gSpecialStageVramPointer, "dr"
	.globl	.refptr.gSpecialStageVramPointer
	.linkonce	discard
.refptr.gSpecialStageVramPointer:
	.quad	gSpecialStageVramPointer
	.section	.rdata$.refptr.gOamBuffer, "dr"
	.globl	.refptr.gOamBuffer
	.linkonce	discard
.refptr.gOamBuffer:
	.quad	gOamBuffer
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
