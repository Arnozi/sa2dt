	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_OrbitingEmeraldsMoveOutwards
	.def	Task_OrbitingEmeraldsMoveOutwards;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_OrbitingEmeraldsMoveOutwards
Task_OrbitingEmeraldsMoveOutwards:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	xor	ebx, ebx
	mov	edi, 32
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	r12, QWORD PTR 24[rax]
	lea	r13, 56[r12]
	.p2align 4,,10
	.p2align 3
.L2:
	movzx	eax, WORD PTR 8[r12+rbx*2]
	lea	ecx, 15[rbx]
	lea	edx, 13[rbx]
	mov	r8d, edi
	add	eax, 5
	mov	WORD PTR 8[r12+rbx*2], ax
	movzx	eax, ax
	add	eax, DWORD PTR 24[r12+rbx*4]
	mov	DWORD PTR 24[r12+rbx*4], eax
	imul	edx, eax
	sub	r8d, DWORD PTR 52[r12]
	add	rbx, 1
	imul	eax, ecx
	mov	rcx, r13
	shr	edx, 9
	shr	eax, 9
	and	edx, 1023
	and	eax, 1023
	movsx	edx, WORD PTR [rsi+rdx*2]
	movsx	eax, WORD PTR 512[rsi+rax*2]
	imul	edx, r8d
	imul	eax, r8d
	shr	edx, 16
	shr	eax, 14
	add	edx, 100
	add	eax, 120
	mov	WORD PTR 40[r13], dx
	mov	WORD PTR 38[r13], ax
	call	UpdateSpriteAnimation
	mov	rcx, r13
	add	r13, 64
	call	DisplaySprite
	cmp	rbx, 7
	jne	.L2
	mov	eax, DWORD PTR 52[r12]
	sub	eax, 1
	je	.L3
	mov	DWORD PTR 52[r12], eax
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
.L3:
	mov	rax, QWORD PTR 0[rbp]
	lea	rdi, Task_OrbitingEmeraldsRotate[rip]
	mov	DWORD PTR 52[r12], 360
	mov	QWORD PTR 40[rax], rdi
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
	.globl	Task_OrbitingEmeraldsRotate
	.def	Task_OrbitingEmeraldsRotate;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_OrbitingEmeraldsRotate
Task_OrbitingEmeraldsRotate:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	xor	ebx, ebx
	mov	rax, QWORD PTR [rdi]
	mov	rbp, QWORD PTR 24[rax]
	lea	r12, 56[rbp]
	.p2align 4,,10
	.p2align 3
.L8:
	movzx	eax, WORD PTR 8[rbp+rbx*2]
	lea	edx, 13[rbx]
	add	eax, 5
	mov	WORD PTR 8[rbp+rbx*2], ax
	movzx	eax, ax
	add	eax, DWORD PTR 24[rbp+rbx*4]
	imul	edx, eax
	mov	DWORD PTR 24[rbp+rbx*4], eax
	shr	edx, 9
	and	edx, 1023
	movsx	ecx, WORD PTR [rsi+rdx*2]
	lea	edx, 15[rbx]
	add	rbx, 1
	imul	eax, edx
	sar	ecx, 11
	shr	eax, 9
	and	eax, 1023
	movsx	eax, WORD PTR 512[rsi+rax*2]
	sar	eax, 9
	add	eax, 120
	mov	WORD PTR 38[r12], ax
	lea	eax, 100[rcx]
	mov	rcx, r12
	mov	WORD PTR 40[r12], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	add	r12, 64
	call	DisplaySprite
	cmp	rbx, 7
	jne	.L8
	mov	eax, DWORD PTR 52[rbp]
	sub	eax, 1
	je	.L9
	mov	DWORD PTR 52[rbp], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_OrbitingEmeraldsContractAndFadeScreenWhite[rip]
	mov	DWORD PTR 52[rbp], 32
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_ActorSonicRunIn
	.def	Task_ActorSonicRunIn;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ActorSonicRunIn
Task_ActorSonicRunIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L13
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, Task_ActorSonicSlowDownTilStop[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 72[rax], dl
	mov	edx, 4351
	mov	WORD PTR 73[rax], dx
	mov	QWORD PTR 40[r10], rsi
.L13:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_ActorSonicSlowDownTilStop
	.def	Task_ActorSonicSlowDownTilStop;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ActorSonicSlowDownTilStop
Task_ActorSonicSlowDownTilStop:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L15
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 72[rdx], al
	mov	eax, 4351
	mov	WORD PTR 73[rdx], ax
	lea	rax, sub_8037744[rip]
	mov	QWORD PTR 40[r10], rax
.L15:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8037744
	.def	sub_8037744;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037744
sub_8037744:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L17
	movzx	r11d, BYTE PTR [rdx]
	xor	eax, eax
	mov	WORD PTR 16[rdx], ax
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	add	r9, r11
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	sal	rax, 4
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	r9d, 4351
	mov	WORD PTR 73[rdx], r9w
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_8037818[rip]
	mov	QWORD PTR 40[r10], rax
.L17:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8037818
	.def	sub_8037818;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037818
sub_8037818:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L19
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_80378BC[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L19:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80378BC
	.def	sub_80378BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80378BC
sub_80378BC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L21
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_803796C[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	DWORD PTR 4[rax], 0
	mov	QWORD PTR 40[r8], rcx
.L21:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8037A38
	.def	sub_8037A38;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037A38
sub_8037A38:
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
	movzx	eax, WORD PTR 2[rbx]
	lea	rsi, 24[rbx]
	test	al, 7
	jne	.L23
	add	BYTE PTR 74[rbx], 1
.L23:
	sub	eax, 1
	mov	WORD PTR 2[rbx], ax
	test	ax, ax
	je	.L25
.L24:
	mov	eax, DWORD PTR 8[rbx]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 62[rbx], ax
	movzx	eax, WORD PTR 13[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 64[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L25:
	movzx	ecx, BYTE PTR [rbx]
	movzx	eax, BYTE PTR 1[rbx]
	mov	rdx, rcx
	add	eax, 1
	sal	rdx, 4
	movzx	r8d, al
	mov	BYTE PTR 1[rbx], al
	movzx	eax, al
	add	rdx, rcx
	sal	rax, 4
	add	rdx, r8
	lea	r8, gUnknown_080D7704[rip]
	movzx	edx, WORD PTR [r8+rdx*2]
	mov	WORD PTR 2[rbx], dx
	lea	rdx, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [rdx+rcx*8]
	mov	ecx, 114
	movzx	edx, WORD PTR 8[rax]
	mov	WORD PTR 42[rbx], dx
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 72[rbx], al
	mov	eax, 4351
	mov	WORD PTR 73[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8037B04[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L24
	.seh_endproc
	.p2align 4
	.globl	sub_8037B04
	.def	sub_8037B04;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037B04
sub_8037B04:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r9]
	mov	edx, DWORD PTR 4[rax]
	lea	rbx, 24[rax]
	add	edx, 1
	mov	DWORD PTR 4[rax], edx
	lea	edx, [rdx+rdx*4]
	and	edx, 1023
	movsx	ecx, BYTE PTR 1[rcx+rdx*2]
	mov	edx, DWORD PTR 12[rax]
	sub	edx, ecx
	sub	WORD PTR 2[rax], 1
	mov	DWORD PTR 12[rax], edx
	jne	.L27
	movzx	r10d, BYTE PTR [rax]
	movzx	ecx, BYTE PTR 1[rax]
	mov	r8, r10
	add	ecx, 1
	sal	r8, 4
	movzx	r11d, cl
	mov	BYTE PTR 1[rax], cl
	movzx	ecx, cl
	add	r8, r10
	sal	rcx, 4
	add	r8, r11
	lea	r11, gUnknown_080D7704[rip]
	movzx	r8d, WORD PTR [r11+r8*2]
	mov	WORD PTR 2[rax], r8w
	lea	r8, gUnknown_080D76F0[rip]
	add	rcx, QWORD PTR [r8+r10*8]
	movzx	r8d, WORD PTR 8[rcx]
	mov	WORD PTR 42[rax], r8w
	movzx	ecx, BYTE PTR 10[rcx]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], cl
	lea	rcx, sub_8037BD0[rip]
	mov	QWORD PTR 40[r9], rcx
.L27:
	mov	ecx, DWORD PTR 8[rax]
	sar	edx, 8
	sar	ecx, 8
	mov	WORD PTR 62[rax], cx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80380B0
	.def	sub_80380B0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80380B0
sub_80380B0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L29
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_8038168[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r10], rsi
.L29:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038168
	.def	sub_8038168;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038168
sub_8038168:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L31
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 72[rdx], al
	mov	eax, 4351
	mov	WORD PTR 73[rdx], ax
	lea	rax, sub_8038238[rip]
	mov	QWORD PTR 40[r10], rax
.L31:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038238
	.def	sub_8038238;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038238
sub_8038238:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L33
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_80382F0[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r10], rsi
.L33:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80382F0
	.def	sub_80382F0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80382F0
sub_80382F0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L35
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_80383B8[rip]
	mov	QWORD PTR 40[r10], rax
.L35:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80383B8
	.def	sub_80383B8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80383B8
sub_80383B8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L37
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_803845C[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L37:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_803845C
	.def	sub_803845C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803845C
sub_803845C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L39
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_8038500[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L39:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038500
	.def	sub_8038500;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038500
sub_8038500:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L41
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_803997C[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L41:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80385A4
	.def	sub_80385A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80385A4
sub_80385A4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L43
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_8038664[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 72[rax], dl
	mov	edx, 4351
	mov	WORD PTR 73[rax], dx
	mov	QWORD PTR 40[r10], rsi
.L43:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038664
	.def	sub_8038664;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038664
sub_8038664:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L45
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_803872C[rip]
	mov	QWORD PTR 40[r10], rax
.L45:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_803872C
	.def	sub_803872C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803872C
sub_803872C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L47
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_80387F4[rip]
	mov	QWORD PTR 40[r10], rax
.L47:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80387F4
	.def	sub_80387F4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80387F4
sub_80387F4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L49
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_8038898[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L49:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038898
	.def	sub_8038898;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038898
sub_8038898:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L51
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_803893C[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L51:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_803893C
	.def	sub_803893C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803893C
sub_803893C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L53
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_80399A4[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L53:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80389E0
	.def	sub_80389E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80389E0
sub_80389E0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L55
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_8038AA0[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 72[rax], dl
	mov	edx, 4351
	mov	WORD PTR 73[rax], dx
	mov	QWORD PTR 40[r10], rsi
.L55:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038AA0
	.def	sub_8038AA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038AA0
sub_8038AA0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L57
	movzx	r11d, BYTE PTR [rdx]
	xor	eax, eax
	mov	WORD PTR 16[rdx], ax
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	add	r9, r11
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	sal	rax, 4
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_8038B6C[rip]
	mov	QWORD PTR 40[r10], rax
.L57:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038B6C
	.def	sub_8038B6C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038B6C
sub_8038B6C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L59
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_8038C34[rip]
	mov	QWORD PTR 40[r10], rax
.L59:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038C34
	.def	sub_8038C34;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038C34
sub_8038C34:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L61
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_8038CD8[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L61:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038CD8
	.def	sub_8038CD8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038CD8
sub_8038CD8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L63
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_8038D7C[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L63:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038D7C
	.def	sub_8038D7C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038D7C
sub_8038D7C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L65
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_80399CC[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L65:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038E20
	.def	sub_8038E20;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038E20
sub_8038E20:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rax]
	movsx	edx, WORD PTR 18[rax]
	mov	BYTE PTR 74[rax], 16
	lea	rbx, 24[rax]
	movq	xmm1, QWORD PTR 8[rax]
	sub	WORD PTR 2[rax], 1
	movd	xmm0, esi
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rax], xmm0
	jne	.L67
	movzx	r11d, BYTE PTR [rax]
	movzx	esi, BYTE PTR 1[rax]
	mov	r9, r11
	lea	edx, 1[rsi]
	sal	r9, 4
	movzx	esi, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	r9, r11
	sal	rdx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_8038EE4[rip]
	mov	WORD PTR 2[rax], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], r9w
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r10], rsi
.L67:
	mov	edx, r8d
	sar	ecx, 8
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	mov	edx, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038EE4
	.def	sub_8038EE4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038EE4
sub_8038EE4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	eax, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L69
	movzx	r11d, BYTE PTR [rdx]
	movzx	esi, BYTE PTR 1[rdx]
	xor	ecx, ecx
	sub	eax, 512
	mov	WORD PTR 16[rdx], cx
	mov	r9, r11
	lea	ecx, 1[rsi]
	mov	DWORD PTR 12[rdx], eax
	sal	r9, 4
	movzx	esi, cl
	mov	BYTE PTR 1[rdx], cl
	movzx	ecx, cl
	add	r9, r11
	sal	rcx, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	lea	rsi, sub_8038FBC[rip]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rcx, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rcx]
	mov	WORD PTR 42[rdx], r9w
	movzx	ecx, BYTE PTR 10[rcx]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], cl
	mov	QWORD PTR 40[r10], rsi
.L69:
	mov	ecx, r8d
	sar	eax, 8
	sar	ecx, 8
	mov	WORD PTR 62[rdx], cx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8038FBC
	.def	sub_8038FBC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8038FBC
sub_8038FBC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 16[rdx]
	movq	xmm1, QWORD PTR 8[rdx]
	lea	rbx, 24[rdx]
	sub	eax, 32
	test	ax, ax
	cmovs	eax, ecx
	sub	WORD PTR 2[rdx], 1
	mov	WORD PTR 16[rdx], ax
	cwde
	movd	xmm0, eax
	movsx	eax, WORD PTR 18[rdx]
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	r8d, xmm0
	movd	ecx, xmm3
	movq	QWORD PTR 8[rdx], xmm0
	jne	.L71
	movzx	r11d, BYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rdx]
	mov	r9, r11
	add	eax, 1
	sal	r9, 4
	movzx	esi, al
	mov	BYTE PTR 1[rdx], al
	movzx	eax, al
	add	r9, r11
	sal	rax, 4
	add	r9, rsi
	lea	rsi, gUnknown_080D7704[rip]
	movzx	r9d, WORD PTR [rsi+r9*2]
	mov	WORD PTR 2[rdx], r9w
	lea	r9, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [r9+r11*8]
	movzx	r9d, WORD PTR 8[rax]
	mov	WORD PTR 42[rdx], r9w
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 73[rdx], -1
	mov	BYTE PTR 72[rdx], al
	lea	rax, sub_8039084[rip]
	mov	QWORD PTR 40[r10], rax
.L71:
	mov	eax, r8d
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	mov	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rdx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8039084
	.def	sub_8039084;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039084
sub_8039084:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r9]
	mov	edx, DWORD PTR 8[rax]
	lea	rbx, 24[rax]
	cmp	edx, 47103
	jg	.L73
	sub	edx, -128
	mov	DWORD PTR 8[rax], edx
.L74:
	sub	WORD PTR 2[rax], 1
	jne	.L75
	movzx	r10d, BYTE PTR [rax]
	movzx	ecx, BYTE PTR 1[rax]
	mov	r8, r10
	add	ecx, 1
	sal	r8, 4
	movzx	r11d, cl
	mov	BYTE PTR 1[rax], cl
	movzx	ecx, cl
	add	r8, r10
	sal	rcx, 4
	add	r8, r11
	lea	r11, gUnknown_080D7704[rip]
	movzx	r8d, WORD PTR [r11+r8*2]
	mov	WORD PTR 2[rax], r8w
	lea	r8, gUnknown_080D76F0[rip]
	add	rcx, QWORD PTR [r8+r10*8]
	movzx	r8d, WORD PTR 8[rcx]
	mov	WORD PTR 42[rax], r8w
	movzx	ecx, BYTE PTR 10[rcx]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], cl
	lea	rcx, sub_8039144[rip]
	mov	QWORD PTR 40[r9], rcx
.L75:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L73:
	and	DWORD PTR 56[rax], -1025
	jmp	.L74
	.seh_endproc
	.p2align 4
	.globl	sub_8039144
	.def	sub_8039144;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039144
sub_8039144:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r9]
	mov	edx, DWORD PTR 8[rax]
	lea	rbx, 24[rax]
	cmp	edx, 38911
	jg	.L77
	add	edx, 64
	mov	DWORD PTR 8[rax], edx
.L77:
	sub	WORD PTR 2[rax], 1
	jne	.L78
	movzx	r10d, BYTE PTR [rax]
	movzx	ecx, BYTE PTR 1[rax]
	mov	r8, r10
	add	ecx, 1
	sal	r8, 4
	movzx	r11d, cl
	mov	BYTE PTR 1[rax], cl
	movzx	ecx, cl
	add	r8, r10
	sal	rcx, 4
	add	r8, r11
	lea	r11, gUnknown_080D7704[rip]
	movzx	r8d, WORD PTR [r11+r8*2]
	mov	WORD PTR 2[rax], r8w
	lea	r8, gUnknown_080D76F0[rip]
	add	rcx, QWORD PTR [r8+r10*8]
	movzx	r8d, WORD PTR 8[rcx]
	mov	WORD PTR 42[rax], r8w
	movzx	ecx, BYTE PTR 10[rcx]
	and	DWORD PTR 56[rax], -1025
	mov	BYTE PTR 72[rax], cl
	lea	rcx, sub_8039208[rip]
	mov	BYTE PTR 73[rax], -1
	mov	QWORD PTR 40[r9], rcx
.L78:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8039208
	.def	sub_8039208;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039208
sub_8039208:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	sub	WORD PTR 2[rax], 1
	lea	rbx, 24[rax]
	jne	.L80
	movzx	ecx, BYTE PTR 1[rax]
	movzx	r9d, BYTE PTR [rax]
	lea	edx, 1[rcx]
	mov	rcx, r9
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rax], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rax], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rax], cx
	movzx	edx, BYTE PTR 10[rdx]
	lea	rcx, sub_8039A10[rip]
	mov	BYTE PTR 73[rax], -1
	mov	BYTE PTR 72[rax], dl
	mov	QWORD PTR 40[r8], rcx
.L80:
	mov	edx, DWORD PTR 8[rax]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80399CC
	.def	sub_80399CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80399CC
sub_80399CC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 8[rax]
	lea	rbx, 24[rax]
	sar	edx, 8
	mov	WORD PTR 62[rax], dx
	movzx	edx, WORD PTR 13[rax]
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 64[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8039A10
	.def	sub_8039A10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039A10
sub_8039A10:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	add	rbx, 24
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_OrbitingEmeraldsContractAndFadeScreenWhite
	.def	Task_OrbitingEmeraldsContractAndFadeScreenWhite;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_OrbitingEmeraldsContractAndFadeScreenWhite
Task_OrbitingEmeraldsContractAndFadeScreenWhite:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdi, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 52[rdi]
	lea	r8d, -1[rax]
	mov	DWORD PTR 52[rdi], r8d
	test	r8d, r8d
	je	.L91
	cmp	r8d, 15
	jbe	.L92
.L86:
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	rbp, rdi
	xor	ebx, ebx
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L93:
	mov	r8d, DWORD PTR 52[rdi]
.L87:
	movzx	eax, WORD PTR 8[rdi+rbx*2]
	lea	ecx, 15[rbx]
	lea	edx, 13[rbx]
	lea	r12, 56[rbp]
	add	rbp, 64
	add	eax, 5
	mov	WORD PTR 8[rdi+rbx*2], ax
	movzx	eax, ax
	add	eax, DWORD PTR 24[rdi+rbx*4]
	mov	DWORD PTR 24[rdi+rbx*4], eax
	imul	edx, eax
	add	rbx, 1
	imul	eax, ecx
	mov	rcx, r12
	shr	edx, 9
	shr	eax, 9
	and	edx, 1023
	and	eax, 1023
	movsx	edx, WORD PTR [rsi+rdx*2]
	movsx	eax, WORD PTR 512[rsi+rax*2]
	imul	edx, r8d
	imul	eax, r8d
	shr	edx, 16
	shr	eax, 14
	add	edx, 100
	add	eax, 120
	mov	WORD PTR 32[rbp], dx
	mov	WORD PTR 30[rbp], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	cmp	rbx, 7
	jne	.L93
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	or	WORD PTR [rax], 16384
	mov	eax, 191
	mov	WORD PTR [rdx], ax
	mov	eax, 16
	sub	eax, r8d
	mov	WORD PTR 4[rdx], ax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR 4[rax], 426
	mov	QWORD PTR 12[rax], rdx
	mov	DWORD PTR 20[rax], 255
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L91:
	mov	edx, 7176
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	ecx, 16
	mov	r8d, 21824
	mov	DWORD PTR 52[rdi], 120
	lea	rsi, Task_DisplaySonicSonicArtworkAndDestroyTask[rip]
	mov	WORD PTR 4[rax], dx
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], cx
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	lea	rcx, 504[rdi]
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR 4[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 352256000
	call	DrawBackground
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_SuperSonicSpark
	.def	Task_SuperSonicSpark;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SuperSonicSpark
Task_SuperSonicSpark:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	movzx	ebx, WORD PTR 14[rax]
	movq	xmm0, QWORD PTR 4[rax]
	sub	WORD PTR [rax], 1
	lea	edx, 16[rbx]
	movsx	ebx, WORD PTR 12[rax]
	mov	WORD PTR 14[rax], dx
	movsx	edx, dx
	movd	xmm1, ebx
	movd	xmm2, edx
	punpckldq	xmm1, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rax], xmm0
	je	.L96
	movd	edx, xmm0
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	pshufd	xmm3, xmm0, 0xe5
	lea	rbx, 16[rax]
	sar	edx, 8
	mov	WORD PTR 54[rax], dx
	movd	edx, xmm3
	sar	edx, 8
	sub	dx, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 56[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L96:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_8039A38
	.def	sub_8039A38;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039A38
sub_8039A38:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_8039AD4
	.def	sub_8039AD4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8039AD4
sub_8039AD4:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gOamFreeIndex[rip]
	mov	rdx, QWORD PTR .refptr.gOamMallocOrders_StartIndex[rip]
	mov	r8d, 16777232
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gOamFirstPausedIndex[rip]
	mov	BYTE PTR [rax], 0
	mov	eax, -1
	lea	rcx, 44[rsp]
	mov	WORD PTR 44[rsp], ax
	call	CpuSet
	mov	edx, -1
	lea	rcx, 46[rsp]
	mov	r8d, 16777232
	mov	WORD PTR 46[rsp], dx
	mov	rdx, QWORD PTR .refptr.gOamMallocOrders_EndIndex[rip]
	call	CpuSet
	call	m4aMPlayAllStop
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 29
	call	ApplyGameStageSettings
	call	GameStageStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_DisplaySonicSonicArtworkAndDestroyTask
	.def	Task_DisplaySonicSonicArtworkAndDestroyTask;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DisplaySonicSonicArtworkAndDestroyTask
Task_DisplaySonicSonicArtworkAndDestroyTask:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 52[rdx]
	sub	eax, 1
	mov	DWORD PTR 52[rdx], eax
	je	.L105
	cmp	eax, 116
	ja	.L99
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	movzx	eax, WORD PTR 4[rdx]
	test	ax, ax
	je	.L99
	sub	eax, 1
	mov	ecx, 191
	mov	WORD PTR 4[rdx], ax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rdx], cx
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR 4[rax], 426
	mov	QWORD PTR 12[rax], rdx
	mov	DWORD PTR 20[rax], 255
.L99:
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8d, 4416
	mov	r9d, 7179
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR 4[rax], r9w
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	Task_SkipHandlerMain
	.def	Task_SkipHandlerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SkipHandlerMain
Task_SkipHandlerMain:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	jne	.L111
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	xor	ecx, ecx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	xor	r9d, r9d
	mov	r8d, 34952
	lea	rcx, sub_8039AD4[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	xor	edx, edx
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_803997C
	.def	sub_803997C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803997C
sub_803997C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	add	rbx, 24
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_80399A4
	.def	sub_80399A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80399A4
sub_80399A4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	add	rbx, 24
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateOrbitingEmeraldsSequence
	.def	CreateOrbitingEmeraldsSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateOrbitingEmeraldsSequence
CreateOrbitingEmeraldsSequence:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 28672
	mov	edx, 600
	lea	rcx, Task_OrbitingEmeraldsMoveOutwards[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	xor	r11d, r11d
	xor	edx, edx
	mov	r8, QWORD PTR 24[rax]
	movdqu	xmm0, XMMWORD PTR .LC4[rip]
	lea	rax, 32768[rcx]
	mov	r9d, DWORD PTR .LC5[rip]
	mov	QWORD PTR 512[r8], rax
	lea	rax, 57344[rcx]
	add	rcx, 77824
	mov	QWORD PTR 528[r8], rax
	mov	eax, 18
	mov	QWORD PTR 8[r8], 0
	mov	DWORD PTR 52[r8], 32
	mov	WORD PTR 522[r8], r11w
	mov	BYTE PTR 566[r8], 0
	mov	QWORD PTR 14[r8], 0
	mov	WORD PTR 564[r8], ax
	mov	eax, 2
	mov	WORD PTR 570[r8], ax
	lea	rax, 64[r8]
	movups	XMMWORD PTR 548[r8], xmm0
	.p2align 4,,10
	.p2align 3
.L115:
	mov	r10d, 1280
	xor	r11d, r11d
	add	rax, 64
	mov	DWORD PTR 24[r8+rdx*4], 46080
	mov	BYTE PTR -24[rax], dl
	add	rdx, 1
	mov	WORD PTR -30[rax], r10w
	xor	r10d, r10d
	mov	QWORD PTR -64[rax], rcx
	add	rcx, 512
	mov	DWORD PTR -34[rax], 0
	mov	BYTE PTR -23[rax], -1
	mov	DWORD PTR -56[rax], r9d
	mov	WORD PTR -36[rax], r11w
	mov	WORD PTR -28[rax], r10w
	mov	BYTE PTR -22[rax], 16
	mov	BYTE PTR -19[rax], 0
	mov	DWORD PTR -40[rax], 0
	cmp	rdx, 7
	jne	.L115
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_803796C
	.def	sub_803796C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_803796C
sub_803796C:
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
	movzx	eax, WORD PTR 2[rbx]
	lea	rsi, 24[rbx]
	cmp	ax, 308
	jbe	.L118
	sub	eax, 1
	mov	edx, DWORD PTR 12[rbx]
	mov	WORD PTR 2[rbx], ax
	sar	edx, 8
.L119:
	mov	eax, DWORD PTR 8[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 62[rbx], ax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rax]
	mov	WORD PTR 64[rbx], dx
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L118:
	cmp	ax, 240
	je	.L125
	mov	ecx, DWORD PTR 12[rbx]
	mov	edx, ecx
	sar	edx, 8
	cmp	ecx, 40191
	jle	.L122
.L126:
	sub	ecx, 24
	mov	DWORD PTR 12[rbx], ecx
	mov	edx, ecx
	sar	edx, 8
.L122:
	sub	eax, 1
	mov	WORD PTR 2[rbx], ax
	test	ax, ax
	jne	.L119
	movzx	r8d, BYTE PTR [rbx]
	movzx	eax, BYTE PTR 1[rbx]
	mov	rcx, r8
	add	eax, 1
	sal	rcx, 4
	movzx	r9d, al
	mov	BYTE PTR 1[rbx], al
	movzx	eax, al
	add	rcx, r8
	sal	rax, 4
	add	rcx, r9
	lea	r9, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r9+rcx*2]
	mov	WORD PTR 2[rbx], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [rcx+r8*8]
	movzx	ecx, WORD PTR 8[rax]
	mov	WORD PTR 42[rbx], cx
	movzx	eax, BYTE PTR 10[rax]
	mov	BYTE PTR 72[rbx], al
	mov	eax, 4351
	mov	WORD PTR 73[rbx], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8037A38[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L125:
	call	CreateOrbitingEmeraldsSequence
	mov	ecx, 49
	call	m4aSongNumStart
	mov	ecx, DWORD PTR 12[rbx]
	movzx	eax, WORD PTR 2[rbx]
	mov	edx, ecx
	sar	edx, 8
	cmp	ecx, 40191
	jle	.L122
	jmp	.L126
	.seh_endproc
	.p2align 4
	.globl	CreateSuperSonicSpark
	.def	CreateSuperSonicSpark;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSuperSonicSpark
CreateSuperSonicSpark:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 28672
	mov	QWORD PTR 32[rsp], 0
	mov	esi, ecx
	mov	ebx, edx
	lea	rcx, Task_SuperSonicSpark[rip]
	mov	edx, 80
	call	TaskCreate
	mov	r9, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r8d, 40
	xor	r11d, r11d
	mov	rdx, rax
	mov	r10d, 8447
	imul	eax, DWORD PTR [r9], 1663525
	mov	rdx, QWORD PTR 24[rdx]
	mov	WORD PTR [rdx], r8w
	add	eax, 1013904223
	mov	DWORD PTR 12[rdx], 0
	mov	ecx, eax
	imul	eax, eax, 1663525
	mov	WORD PTR 65[rdx], r10w
	and	ecx, 1
	mov	BYTE PTR 69[rdx], 0
	add	ecx, 2
	mov	QWORD PTR 48[rdx], 4096
	add	eax, 1013904223
	sal	rcx, 4
	mov	WORD PTR 60[rdx], r11w
	mov	r8d, eax
	imul	eax, eax, 1663525
	mov	DWORD PTR 56[rdx], 16777216
	and	r8d, 31
	sub	r8d, 16
	add	eax, 1013904223
	sal	r8d, 8
	mov	DWORD PTR [r9], eax
	and	eax, 31
	add	r8d, esi
	xor	r9d, r9d
	sub	eax, 16
	mov	DWORD PTR 4[rdx], r8d
	sal	eax, 8
	mov	WORD PTR 32[rdx], r9w
	add	eax, ebx
	mov	DWORD PTR 8[rdx], eax
	lea	rax, gUnknown_080D7540[rip]
	add	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 24[rdx], rax
	movzx	eax, WORD PTR 8[rcx]
	mov	WORD PTR 34[rdx], ax
	movzx	eax, BYTE PTR 10[rcx]
	mov	BYTE PTR 64[rdx], al
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8037BD0
	.def	sub_8037BD0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037BD0
sub_8037BD0:
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
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	add	eax, 1
	mov	DWORD PTR 4[rbx], eax
	lea	eax, [rax+rax*4]
	and	eax, 1023
	movsx	edx, BYTE PTR 1[rdx+rax*2]
	mov	eax, DWORD PTR 12[rbx]
	sub	eax, edx
	sub	WORD PTR 2[rbx], 1
	mov	DWORD PTR 12[rbx], eax
	jne	.L129
	movzx	r9d, BYTE PTR [rbx]
	movzx	edi, BYTE PTR 1[rbx]
	mov	rcx, r9
	lea	edx, 1[rdi]
	lea	rdi, sub_8037CEC[rip]
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rbx], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rbx], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rbx], cx
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 73[rbx], -1
	mov	BYTE PTR 72[rbx], dl
	mov	QWORD PTR 40[r8], rdi
.L129:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 8[rbx]
	sar	eax, 8
	mov	rcx, rsi
	sar	edx, 8
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 88[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 8[rbx]
	and	DWORD PTR 120[rbx], -1025
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 126[rbx], ax
	mov	eax, 178
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 128[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 120[rbx], 1024
	mov	rcx, rsi
	call	DisplaySprite
	test	BYTE PTR 2[rbx], 3
	je	.L131
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	mov	edx, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateSuperSonicSpark
	.seh_endproc
	.p2align 4
	.globl	sub_8037CEC
	.def	sub_8037CEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037CEC
sub_8037CEC:
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
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	add	eax, 1
	mov	DWORD PTR 4[rbx], eax
	lea	eax, [rax+rax*4]
	and	eax, 1023
	movsx	edx, BYTE PTR 1[rdx+rax*2]
	mov	eax, DWORD PTR 12[rbx]
	sub	eax, edx
	sub	WORD PTR 2[rbx], 1
	mov	DWORD PTR 12[rbx], eax
	jne	.L133
	movzx	r9d, BYTE PTR [rbx]
	movzx	edi, BYTE PTR 1[rbx]
	mov	rcx, r9
	lea	edx, 1[rdi]
	lea	rdi, sub_8037E08[rip]
	sal	rcx, 4
	movzx	r10d, dl
	mov	BYTE PTR 1[rbx], dl
	movzx	edx, dl
	add	rcx, r9
	sal	rdx, 4
	add	rcx, r10
	lea	r10, gUnknown_080D7704[rip]
	movzx	ecx, WORD PTR [r10+rcx*2]
	mov	WORD PTR 2[rbx], cx
	lea	rcx, gUnknown_080D76F0[rip]
	add	rdx, QWORD PTR [rcx+r9*8]
	movzx	ecx, WORD PTR 8[rdx]
	mov	WORD PTR 42[rbx], cx
	movzx	edx, BYTE PTR 10[rdx]
	mov	BYTE PTR 73[rbx], -1
	mov	BYTE PTR 72[rbx], dl
	mov	QWORD PTR 40[r8], rdi
.L133:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 8[rbx]
	sar	eax, 8
	mov	rcx, rsi
	sar	edx, 8
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 88[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 8[rbx]
	and	DWORD PTR 120[rbx], -1025
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 126[rbx], ax
	mov	eax, 178
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 128[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 120[rbx], 1024
	mov	rcx, rsi
	call	DisplaySprite
	test	BYTE PTR 2[rbx], 3
	je	.L135
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	mov	edx, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateSuperSonicSpark
	.seh_endproc
	.p2align 4
	.globl	sub_8037E08
	.def	sub_8037E08;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037E08
sub_8037E08:
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
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	add	eax, 1
	mov	DWORD PTR 4[rbx], eax
	lea	eax, [rax+rax*4]
	and	eax, 1023
	movsx	edx, BYTE PTR 1[rdx+rax*2]
	mov	eax, DWORD PTR 12[rbx]
	sub	eax, edx
	sub	WORD PTR 2[rbx], 1
	mov	DWORD PTR 12[rbx], eax
	je	.L139
.L137:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 8[rbx]
	sar	eax, 8
	mov	rcx, rsi
	sar	edx, 8
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 88[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 8[rbx]
	and	DWORD PTR 120[rbx], -1025
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 126[rbx], ax
	mov	eax, 178
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 128[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 120[rbx], 1024
	mov	rcx, rsi
	call	DisplaySprite
	test	BYTE PTR 2[rbx], 3
	je	.L140
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L139:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	edx, edx
	mov	WORD PTR 4[rax], dx
	movzx	r8d, BYTE PTR [rbx]
	movzx	eax, BYTE PTR 1[rbx]
	mov	rdx, r8
	add	eax, 1
	sal	rdx, 4
	movzx	r9d, al
	add	rdx, r8
	mov	BYTE PTR 1[rbx], al
	movzx	eax, al
	add	rdx, r9
	lea	r9, gUnknown_080D7704[rip]
	sal	rax, 4
	movzx	edx, WORD PTR [r9+rdx*2]
	mov	r9d, -255
	mov	WORD PTR 2[rbx], dx
	lea	rdx, gUnknown_080D76F0[rip]
	add	rax, QWORD PTR [rdx+r8*8]
	mov	r8d, 839
	movzx	edx, WORD PTR 8[rax]
	mov	WORD PTR 42[rbx], dx
	movzx	eax, BYTE PTR 10[rax]
	mov	WORD PTR 106[rbx], r8w
	mov	BYTE PTR 72[rbx], al
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 136[rbx], r9w
	add	rax, 81920
	mov	BYTE PTR 73[rbx], -1
	mov	QWORD PTR 96[rbx], rax
	lea	rax, sub_8037F68[rip]
	mov	QWORD PTR 40[rcx], rax
	mov	ecx, 114
	call	m4aSongNumStop
	mov	ecx, 221
	call	m4aSongNumStart
	mov	eax, DWORD PTR 12[rbx]
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L140:
	mov	edx, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateSuperSonicSpark
	.seh_endproc
	.p2align 4
	.globl	sub_8037F68
	.def	sub_8037F68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8037F68
sub_8037F68:
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
	mov	eax, DWORD PTR 12[rbx]
	lea	rsi, 24[rbx]
	cmp	eax, -8191
	jl	.L142
	sub	eax, 2048
	mov	DWORD PTR 12[rbx], eax
.L142:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	rcx, QWORD PTR .LC1[rip]
	or	WORD PTR [rax], 16384
	mov	eax, 255
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 4[rax], 426
	mov	QWORD PTR 12[rax], rcx
	mov	DWORD PTR 20[rax], 255
	movzx	eax, WORD PTR 2[rbx]
	test	ax, ax
	jne	.L143
	movzx	eax, WORD PTR 4[rdx]
	cmp	ax, 16
	je	.L148
	add	eax, 1
	mov	WORD PTR 4[rdx], ax
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L143:
	sub	eax, 1
	mov	WORD PTR 2[rbx], ax
.L145:
	mov	eax, DWORD PTR 8[rbx]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 62[rbx], ax
	movzx	eax, WORD PTR 13[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 64[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 2[rbx]
	cmp	ax, 153
	ja	.L149
.L146:
	test	al, 3
	je	.L150
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	mov	edx, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 8[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateSuperSonicSpark
	.p2align 4,,10
	.p2align 3
.L149:
	mov	eax, DWORD PTR 8[rbx]
	and	DWORD PTR 120[rbx], -1025
	lea	rsi, 88[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 126[rbx], ax
	mov	eax, 178
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 128[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 120[rbx], 1024
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 2[rbx]
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L148:
	xor	ecx, ecx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 29
	call	ApplyGameStageSettings
	nop
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	GameStageStart
	.seh_endproc
	.p2align 4
	.globl	CreateActor
	.def	CreateActor;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateActor
CreateActor:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, gUnknown_080D7970[rip]
	xor	r9d, r9d
	mov	edx, 152
	mov	r8d, 28672
	mov	QWORD PTR 32[rsp], 0
	movzx	edi, cl
	mov	ebx, ecx
	mov	esi, ecx
	mov	rcx, QWORD PTR [rax+rdi*8]
	call	TaskCreate
	mov	r8, rdi
	xor	r10d, r10d
	xor	r11d, r11d
	sal	r8, 4
	lea	rdx, gUnknown_080D7704[rip]
	mov	rax, QWORD PTR 24[rax]
	lea	rcx, [r8+rdi]
	movzx	edx, WORD PTR [rdx+rcx*2]
	lea	rcx, gUnknown_080D77D0[rip]
	mov	BYTE PTR [rax], bl
	mov	BYTE PTR 1[rax], 0
	mov	WORD PTR 2[rax], dx
	mov	rdx, QWORD PTR [rcx+r8]
	add	rcx, r8
	mov	QWORD PTR 8[rax], rdx
	mov	edx, DWORD PTR 8[rcx]
	mov	WORD PTR 16[rax], dx
	mov	edx, DWORD PTR 12[rcx]
	mov	WORD PTR 18[rax], dx
	lea	rdx, gUnknown_080D76F0[rip]
	mov	r9, QWORD PTR [rdx+rdi*8]
	movzx	edx, WORD PTR 4[rcx]
	movzx	ecx, WORD PTR [rcx]
	sal	edx, 16
	or	edx, ecx
	movd	xmm0, edx
	mov	rdx, QWORD PTR [r9]
	psllw	xmm0, 8
	mov	QWORD PTR 32[rax], rdx
	movd	DWORD PTR 62[rax], xmm0
	movzx	edx, WORD PTR 8[r9]
	mov	WORD PTR 42[rax], dx
	movzx	edx, BYTE PTR 10[r9]
	xor	r9d, r9d
	mov	WORD PTR 40[rax], r9w
	mov	BYTE PTR 72[rax], dl
	lea	rdx, gUnknown_080D7984[rip]
	movsx	cx, BYTE PTR [rdx+rdi]
	mov	edx, 16
	mov	edi, 8447
	mov	WORD PTR 60[rax], r10w
	mov	WORD PTR 68[rax], r11w
	sub	edx, ecx
	mov	WORD PTR 73[rax], di
	sal	edx, 6
	mov	WORD PTR 66[rax], dx
	cmp	bl, 3
	ja	.L153
	lea	rdx, gUnknown_080D7540[rip]
	mov	BYTE PTR 141[rax], 0
	add	rdx, r8
	xor	r8d, r8d
	mov	QWORD PTR 120[rax], 4096
	mov	rcx, QWORD PTR [rdx]
	mov	WORD PTR 132[rax], r8w
	mov	DWORD PTR 128[rax], 67108864
	mov	QWORD PTR 96[rax], rcx
	movzx	ecx, WORD PTR 8[rdx]
	movzx	edx, BYTE PTR 10[rdx]
	mov	WORD PTR 106[rax], cx
	mov	ecx, 4351
	mov	BYTE PTR 136[rax], dl
	xor	edx, edx
	mov	WORD PTR 104[rax], dx
	mov	WORD PTR 137[rax], cx
.L152:
	mov	DWORD PTR 56[rax], 5120
	mov	BYTE PTR 77[rax], sil
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	xor	esi, esi
	jmp	.L152
	.seh_endproc
	.p2align 4
	.globl	IntroRenderSprites
	.def	IntroRenderSprites;	.scl	2;	.type	32;	.endef
	.seh_proc	IntroRenderSprites
IntroRenderSprites:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rbx]
	movsx	dx, BYTE PTR 15[rbx]
	mov	esi, ecx
	movsx	cx, BYTE PTR 14[rbx]
	add	edx, eax
	movzx	edx, dx
	movzx	ecx, cx
	mov	rax, rdx
	sal	rax, 16
	or	rax, rcx
	sal	rax, 16
	or	rax, rdx
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	sal	rax, 16
	or	rax, rcx
	lea	rcx, 512[rbx]
	mov	QWORD PTR [rdx], rax
	call	UpdateSpriteAnimation
	lea	rcx, 576[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 640[rbx]
	call	UpdateSpriteAnimation
	mov	eax, DWORD PTR 8[rbx]
	test	sil, sil
	je	.L155
	lea	rdi, gUnknown_080D7830[rip+8]
	xor	esi, esi
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L156:
	add	rsi, 1
	add	rdi, 10
	cmp	rsi, 32
	je	.L158
.L157:
	cmp	BYTE PTR 16[rbx+rsi], 0
	je	.L156
	movsx	r8d, WORD PTR 306[rbx+rsi*4]
	movq	xmm1, QWORD PTR 48[rbx+rsi*8]
	add	rdi, 10
	movsx	r10d, WORD PTR 304[rbx+rsi*4]
	movsx	edx, WORD PTR -10[rdi]
	movd	xmm2, r8d
	mov	eax, r8d
	movd	xmm0, r10d
	mov	ecx, r10d
	sub	eax, 16
	punpckldq	xmm0, xmm2
	sub	ecx, 40
	paddd	xmm0, xmm1
	movq	QWORD PTR 48[rbx+rsi*8], xmm0
	pshufd	xmm3, xmm0, 0xe5
	mov	WORD PTR 304[rbx+rsi*4], cx
	movsx	rcx, edx
	mov	WORD PTR 306[rbx+rsi*4], ax
	sal	rcx, 6
	movd	eax, xmm0
	add	rsi, 1
	add	rcx, rbx
	sar	eax, 8
	mov	WORD PTR 550[rcx], ax
	movd	eax, xmm3
	movzx	r8d, BYTE PTR [rbx]
	and	DWORD PTR 544[rcx], -1025
	sar	eax, 8
	sub	eax, r8d
	mov	WORD PTR 552[rcx], ax
	lea	ecx, 8[rdx]
	movsx	rcx, ecx
	sal	rcx, 6
	add	rcx, rbx
	call	DisplaySprite
	cmp	rsi, 32
	jne	.L157
	.p2align 4,,10
	.p2align 3
.L158:
	cmp	BYTE PTR 432[rbx], 0
	jne	.L165
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
.L155:
	lea	r13d, [rax+rax*4]
	lea	r12d, [rax+rax*2]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	xor	edi, edi
	and	r13d, 1023
	and	r12d, 1023
	lea	rbp, gUnknown_080D7830[rip]
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L159:
	or	ah, 4
.L160:
	mov	rdx, r10
	mov	rcx, r8
	sub	r13d, 64
	sub	r12d, 64
	sal	rdx, 6
	add	rdi, 4
	add	rbp, 10
	and	r13d, 1023
	mov	DWORD PTR 544[rbx+rdx], eax
	and	r12d, 1023
	call	DisplaySprite
	cmp	rdi, 128
	je	.L158
.L161:
	lea	eax, 256[r13]
	movsx	r9d, WORD PTR 6[rbp]
	mov	r11d, DWORD PTR 48[rbx+rdi*2]
	cdqe
	movsx	edx, WORD PTR 8[rbp]
	mov	r10d, DWORD PTR 52[rbx+rdi*2]
	movsx	ecx, WORD PTR [rsi+rax*2]
	movsx	eax, WORD PTR 4[rbp]
	lea	r8d, 8[rdx]
	imul	ecx, eax
	movsx	eax, WORD PTR 0[rbp]
	movsx	r8, r8d
	sal	r8, 6
	sal	eax, 8
	add	r8, rbx
	sar	ecx, 4
	add	ecx, eax
	movsx	rax, r12d
	movsx	eax, WORD PTR [rsi+rax*2]
	mov	DWORD PTR 48[rbx+rdi*2], ecx
	imul	eax, r9d
	movsx	r9d, WORD PTR 2[rbp]
	sal	r9d, 8
	sar	eax, 4
	add	eax, r9d
	mov	r9d, ecx
	sar	ecx, 8
	sub	r9d, r11d
	mov	r11d, eax
	mov	DWORD PTR 52[rbx+rdi*2], eax
	sar	eax, 8
	mov	WORD PTR 304[rbx+rdi], r9w
	sub	r11d, r10d
	movsx	r10, edx
	mov	WORD PTR 306[rbx+rdi], r11w
	mov	rdx, r10
	sal	rdx, 6
	add	rdx, rbx
	mov	WORD PTR 550[rdx], cx
	movzx	ecx, BYTE PTR [rbx]
	sub	eax, ecx
	mov	WORD PTR 552[rdx], ax
	mov	eax, DWORD PTR 544[rdx]
	test	r9w, r9w
	jns	.L159
	and	ah, -5
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L165:
	mov	eax, DWORD PTR 436[rbx]
	movzx	edx, BYTE PTR [rbx]
	lea	rsi, 448[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 486[rbx], ax
	movzx	eax, WORD PTR 441[rbx]
	sub	eax, edx
	movsx	dx, BYTE PTR 15[rbx]
	add	eax, edx
	mov	WORD PTR 488[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_IntroPanIn
	.def	Task_IntroPanIn;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_IntroPanIn
Task_IntroPanIn:
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
	mov	rdi, QWORD PTR .refptr.gStageTime[rip]
	mov	rax, QWORD PTR [rsi]
	mov	edx, DWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rbx]
	test	dl, 3
	jne	.L167
	cmp	al, 43
	jbe	.L176
.L167:
	add	DWORD PTR 8[rbx], 2
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, al
	add	edx, 1
	mov	DWORD PTR [rdi], edx
	mov	DWORD PTR 4[rcx], eax
	mov	DWORD PTR [rcx], 0
	xor	ecx, ecx
	call	IntroRenderSprites
	mov	eax, DWORD PTR 4[rbx]
	cmp	eax, 370
	je	.L168
	sub	eax, 1
	mov	DWORD PTR 4[rbx], eax
	jne	.L169
	mov	rdx, QWORD PTR [rsi]
	lea	rsi, sub_80393A4[rip]
	mov	DWORD PTR 8[rbx], 256
	mov	ecx, -256
	mov	QWORD PTR 40[rdx], rsi
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 480[rbx], 0
	lea	rdx, 65536[rsi]
	mov	WORD PTR 496[rbx], cx
	mov	QWORD PTR 456[rbx], rdx
	mov	edx, 844
	mov	WORD PTR 466[rbx], dx
.L170:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	and	eax, 1
	movzx	edx, al
	mov	dh, al
	mov	WORD PTR 14[rbx], dx
.L166:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	cmp	eax, 60
	jne	.L171
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	SetupEggmanKidnapsVanillaTask
	.p2align 4,,10
	.p2align 3
.L176:
	add	eax, 1
	mov	BYTE PTR [rbx], al
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L171:
	cmp	eax, 59
	jbe	.L170
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	movzx	eax, WORD PTR 4[rdx]
	test	ax, ax
	jne	.L177
	mov	DWORD PTR 4[rbx], 369
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	test	BYTE PTR [rdi], 3
	jne	.L166
	sub	eax, 1
	mov	WORD PTR 4[rdx], ax
	jmp	.L166
	.seh_endproc
	.p2align 4
	.globl	sub_80393A4
	.def	sub_80393A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80393A4
sub_80393A4:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	movq	xmm1, QWORD PTR .LC10[rip]
	mov	rax, QWORD PTR [r12]
	add	DWORD PTR [rdx], 1
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	rsi, QWORD PTR 24[rax]
	mov	BYTE PTR [rdx], 0
	movq	xmm0, QWORD PTR 4[rsi]
	paddd	xmm0, xmm1
	movd	eax, xmm0
	movq	QWORD PTR 4[rsi], xmm0
	cmp	eax, 250
	ja	.L192
.L179:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	movzx	edx, WORD PTR [rdx+rax*2]
	and	edx, 1
.L188:
	mov	BYTE PTR 14[rsi], dl
	mov	ecx, 1
	mov	BYTE PTR 15[rsi], dl
	call	IntroRenderSprites
	nop
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	lea	rdx, 60[rsp]
	lea	rcx, 56[rsp]
	xor	ebx, ebx
	call	sub_8050B2C
	lea	rdi, gUnknown_080D7830[rip+8]
	add	DWORD PTR 56[rsp], 5120
	add	DWORD PTR 60[rsp], 1024
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L181:
	add	rbx, 1
	add	rdi, 10
	cmp	rbx, 32
	je	.L193
.L183:
	cmp	BYTE PTR 16[rsi+rbx], 0
	je	.L181
	movzx	eax, BYTE PTR [rdi]
	mov	r8d, DWORD PTR 4[rsi]
	mov	r9d, 10
	mov	ecx, DWORD PTR 48[rsi+rbx*8]
	mov	edx, DWORD PTR 56[rsp]
	lea	ebp, 2[rax]
	movzx	ebp, bpl
	mov	DWORD PTR 32[rsp], ebp
	call	sub_8085698
	mov	ecx, DWORD PTR 52[rsi+rbx*8]
	mov	r9d, 10
	mov	DWORD PTR 48[rsi+rbx*8], eax
	mov	r8d, DWORD PTR 4[rsi]
	mov	DWORD PTR 32[rsp], ebp
	mov	edx, DWORD PTR 60[rsp]
	call	sub_8085698
	movd	xmm0, DWORD PTR 304[rsi+rbx*4]
	mov	DWORD PTR 52[rsi+rbx*8], eax
	mov	eax, DWORD PTR 48[rsi+rbx*8]
	movdqu	xmm1, xmm0
	psraw	xmm1, 3
	add	eax, 2047
	psubw	xmm0, xmm1
	movd	DWORD PTR 304[rsi+rbx*4], xmm0
	cmp	eax, DWORD PTR 56[rsp]
	jl	.L181
	mov	BYTE PTR 16[rsi+rbx], 0
	add	rbx, 1
	add	rdi, 10
	cmp	rbx, 32
	jne	.L183
	.p2align 4,,10
	.p2align 3
.L193:
	cmp	BYTE PTR 432[rsi], 0
	jne	.L194
.L185:
	mov	eax, DWORD PTR 4[rsi]
	cmp	eax, 2799
	jbe	.L179
	xor	edx, edx
	cmp	eax, 3000
	jbe	.L188
	xor	ecx, ecx
	call	CreateActor
	mov	ecx, 1
	call	CreateActor
	mov	ecx, 2
	call	CreateActor
	mov	ecx, 3
	call	CreateActor
	mov	ecx, 4
	call	CreateActor
	mov	ecx, 270
	call	m4aSongNumStop
	mov	rcx, QWORD PTR [r12]
	call	TaskDestroy
	nop
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L194:
	mov	ecx, 270
	call	m4aSongNumStartOrContinue
	mov	eax, DWORD PTR 4[rsi]
	mov	edx, DWORD PTR 56[rsp]
	mov	DWORD PTR 32[rsp], 3
	mov	r9d, 10
	mov	ecx, 25600
	lea	r8d, 32[rax]
	call	sub_8085698
	mov	edx, DWORD PTR 60[rsp]
	mov	r9d, 10
	mov	ecx, 46080
	mov	DWORD PTR 436[rsi], eax
	mov	eax, DWORD PTR 4[rsi]
	mov	DWORD PTR 32[rsp], 3
	lea	r8d, 96[rax]
	call	sub_8085698
	mov	DWORD PTR 440[rsi], eax
	mov	eax, DWORD PTR 436[rsi]
	add	eax, 2047
	cmp	eax, DWORD PTR 56[rsp]
	jl	.L185
	mov	BYTE PTR 432[rsi], 0
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	edx, 4
	call	m4aMPlayFadeOutTemporarily
	jmp	.L185
	.seh_endproc
	.p2align 4
	.globl	CreateBackgrounds
	.def	CreateBackgrounds;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBackgrounds
CreateBackgrounds:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4929
	xor	r9d, r9d
	mov	ecx, 23561
	mov	r8d, 33024
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC12[rip]
	mov	WORD PTR 4[rax], cx
	lea	rcx, sub_8039A38[rip]
	mov	DWORD PTR [rax], 503717635
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], rdx
	mov	edx, 288
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 553582592
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	r8d, r8d
	xor	r10d, r10d
	mov	rbx, QWORD PTR 24[rax]
	mov	r9d, 32
	movdqu	xmm0, XMMWORD PTR .LC14[rip]
	lea	rax, 63488[rsi]
	mov	QWORD PTR 8[rbx], rsi
	mov	rcx, rbx
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 18[rbx], r8w
	mov	WORD PTR 60[rbx], r9w
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], r10w
	movups	XMMWORD PTR 44[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r11d, r11d
	lea	rcx, 96[rbx]
	add	rsi, 61440
	movdqu	xmm0, XMMWORD PTR .LC15[rip]
	mov	QWORD PTR 104[rbx], rax
	mov	eax, 1
	mov	QWORD PTR 120[rbx], rsi
	mov	esi, 32
	mov	WORD PTR 114[rbx], r11w
	mov	WORD PTR 156[rbx], si
	mov	BYTE PTR 158[rbx], 0
	mov	WORD PTR 162[rbx], ax
	movups	XMMWORD PTR 140[rbx], xmm0
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	CreateTrueArea53Intro
	.def	CreateTrueArea53Intro;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTrueArea53Intro
CreateTrueArea53Intro:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, 16
	xor	r9d, r9d
	lea	rcx, Task_IntroPanIn[rip]
	mov	r8d, 28672
	mov	WORD PTR 4[rax], dx
	mov	edx, 704
	mov	DWORD PTR [rax], 16383
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	movdqu	xmm0, XMMWORD PTR .LC18[rip]
	xor	ecx, ecx
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC17[rip]
	mov	BYTE PTR [rdx], 0
	mov	QWORD PTR 4[rdx], rax
	xor	eax, eax
	mov	WORD PTR 14[rdx], cx
	lea	rcx, gUnknown_080D7830[rip]
	movups	XMMWORD PTR 16[rdx], xmm0
	movups	XMMWORD PTR 32[rdx], xmm0
	.p2align 4,,10
	.p2align 3
.L197:
	movsx	r8d, WORD PTR [rcx]
	add	rcx, 10
	sal	r8d, 8
	mov	DWORD PTR 48[rdx+rax*2], r8d
	movsx	r8d, WORD PTR -8[rcx]
	sal	r8d, 8
	mov	DWORD PTR 52[rdx+rax*2], r8d
	mov	DWORD PTR 304[rdx+rax], 0
	add	rax, 4
	cmp	rax, 128
	jne	.L197
	mov	rax, QWORD PTR .LC19[rip]
	mov	BYTE PTR 432[rdx], 1
	xor	ecx, ecx
	add	rdx, 520
	mov	DWORD PTR -56[rdx], 55312384
	mov	QWORD PTR -84[rdx], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR -22[rdx], 16
	add	rax, 65536
	mov	BYTE PTR -19[rdx], 5
	mov	QWORD PTR -64[rdx], rax
	mov	eax, -255
	mov	QWORD PTR -40[rdx], 1024
	mov	DWORD PTR -32[rdx], 16777216
	mov	WORD PTR -24[rdx], ax
	xor	eax, eax
	mov	WORD PTR -28[rdx], ax
	lea	rax, gUnknown_080D7560[rip]
.L198:
	mov	DWORD PTR 30[rdx], 0
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	mov	r8, QWORD PTR 16[rax]
	add	ecx, 1
	add	rdx, 64
	add	rax, 16
	mov	QWORD PTR -64[rdx], r8
	movzx	r8d, WORD PTR 8[rax]
	mov	WORD PTR -54[rdx], r8w
	movzx	r8d, BYTE PTR 10[rax]
	mov	WORD PTR -56[rdx], r9w
	mov	BYTE PTR -24[rdx], r8b
	mov	r8d, 256
	mov	WORD PTR -30[rdx], r8w
	mov	WORD PTR -36[rdx], r10w
	mov	WORD PTR -28[rdx], r11w
	mov	BYTE PTR -23[rdx], -1
	mov	BYTE PTR -22[rdx], 16
	mov	BYTE PTR -19[rdx], cl
	mov	DWORD PTR -16[rdx], -1
	mov	DWORD PTR -40[rdx], 0
	cmp	cl, 3
	jne	.L198
	call	CreateBackgrounds
	xor	r9d, r9d
	mov	r8d, 8192
	xor	edx, edx
	mov	QWORD PTR 32[rsp], 0
	lea	rcx, Task_SkipHandlerMain[rip]
	call	TaskCreate
	mov	ecx, 48
	add	rsp, 56
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	CreateSkipHandler
	.def	CreateSkipHandler;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSkipHandler
CreateSkipHandler:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	xor	edx, edx
	lea	rcx, Task_SkipHandlerMain[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080D7984:
	.ascii "\0\370\4\2\0\0\0\0"
	.align 32
gUnknown_080D7970:
	.quad	Task_ActorSonicRunIn
	.quad	sub_80380B0
	.quad	sub_80385A4
	.quad	sub_80389E0
	.quad	sub_8038E20
	.align 32
gUnknown_080D7830:
	.word	120
	.word	85
	.word	5
	.word	6
	.word	0
	.word	130
	.word	90
	.word	4
	.word	5
	.word	1
	.word	140
	.word	95
	.word	7
	.word	4
	.word	2
	.word	90
	.word	100
	.word	8
	.word	5
	.word	0
	.word	100
	.word	105
	.word	10
	.word	3
	.word	1
	.word	110
	.word	110
	.word	5
	.word	1
	.word	2
	.word	120
	.word	115
	.word	9
	.word	4
	.word	0
	.word	80
	.word	120
	.word	4
	.word	3
	.word	1
	.word	120
	.word	125
	.word	8
	.word	2
	.word	2
	.word	130
	.word	130
	.word	6
	.word	4
	.word	0
	.word	140
	.word	135
	.word	4
	.word	2
	.word	1
	.word	150
	.word	140
	.word	5
	.word	1
	.word	2
	.word	100
	.word	145
	.word	10
	.word	5
	.word	0
	.word	110
	.word	150
	.word	7
	.word	1
	.word	1
	.word	120
	.word	155
	.word	6
	.word	4
	.word	2
	.word	80
	.word	160
	.word	4
	.word	3
	.word	0
	.word	80
	.word	160
	.word	5
	.word	6
	.word	2
	.word	70
	.word	150
	.word	4
	.word	5
	.word	1
	.word	60
	.word	140
	.word	7
	.word	4
	.word	2
	.word	50
	.word	130
	.word	8
	.word	5
	.word	0
	.word	50
	.word	120
	.word	10
	.word	3
	.word	1
	.word	60
	.word	110
	.word	5
	.word	1
	.word	2
	.word	70
	.word	100
	.word	9
	.word	4
	.word	0
	.word	80
	.word	90
	.word	4
	.word	3
	.word	1
	.word	150
	.word	120
	.word	5
	.word	6
	.word	2
	.word	160
	.word	100
	.word	4
	.word	5
	.word	1
	.word	140
	.word	140
	.word	7
	.word	4
	.word	2
	.word	150
	.word	80
	.word	8
	.word	5
	.word	0
	.word	70
	.word	90
	.word	10
	.word	6
	.word	1
	.word	60
	.word	110
	.word	5
	.word	5
	.word	2
	.word	70
	.word	100
	.word	9
	.word	7
	.word	0
	.word	80
	.word	90
	.word	8
	.word	4
	.word	1
	.align 32
gUnknown_080D77D0:
	.long	-88064
	.long	45568
	.long	512
	.long	0
	.long	-1024
	.long	45568
	.long	512
	.long	0
	.long	-103936
	.long	45568
	.long	512
	.long	0
	.long	-99328
	.long	45568
	.long	512
	.long	0
	.long	-3584
	.long	40448
	.long	512
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
gUnknown_080D7704:
	.word	225
	.word	55
	.word	5
	.word	170
	.word	110
	.word	360
	.word	180
	.word	120
	.word	60
	.word	80
	.word	20
	.word	160
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	76
	.word	30
	.word	10
	.word	210
	.word	350
	.word	640
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	60
	.word	240
	.word	30
	.word	70
	.word	320
	.word	530
	.word	200
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	60
	.word	220
	.word	50
	.word	70
	.word	320
	.word	530
	.word	200
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	60
	.word	70
	.word	60
	.word	240
	.word	100
	.word	150
	.word	780
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	80
	.word	180
	.word	60
	.word	60
	.word	60
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align 32
gUnknown_080D76F0:
	.quad	gUnknown_080D7588
	.quad	gUnknown_080D7668
	.quad	gUnknown_080D75E8
	.quad	gUnknown_080D7628
	.quad	gUnknown_080D76B0
	.align 32
gUnknown_080D76B0:
	.quad	VRAM+75776
	.word	456
	.byte	0
	.space 5
	.quad	0
	.word	456
	.byte	0
	.space 5
	.quad	0
	.word	843
	.byte	0
	.space 5
	.quad	0
	.word	460
	.byte	0
	.space 5
	.quad	0
	.word	460
	.byte	1
	.space 5
	.quad	0
	.word	843
	.byte	1
	.space 5
	.quad	0
	.word	843
	.byte	2
	.space 5
	.quad	0
	.word	843
	.byte	2
	.space 5
	.align 32
gUnknown_080D7668:
	.quad	VRAM+67584
	.word	840
	.byte	2
	.space 5
	.quad	0
	.word	840
	.byte	1
	.space 5
	.quad	0
	.word	840
	.byte	0
	.space 5
	.quad	0
	.word	841
	.byte	0
	.space 5
	.quad	0
	.word	841
	.byte	1
	.space 5
	.quad	0
	.word	841
	.byte	2
	.space 5
	.quad	0
	.word	841
	.byte	3
	.space 5
	.quad	0
	.word	841
	.byte	4
	.space 5
	.quad	0
	.word	841
	.byte	4
	.space 5
	.align 32
gUnknown_080D7628:
	.quad	VRAM+71680
	.word	282
	.byte	2
	.space 5
	.quad	0
	.word	282
	.byte	1
	.space 5
	.quad	0
	.word	834
	.byte	0
	.space 5
	.quad	0
	.word	834
	.byte	1
	.space 5
	.quad	0
	.word	834
	.byte	2
	.space 5
	.quad	0
	.word	834
	.byte	3
	.space 5
	.quad	0
	.word	834
	.byte	4
	.space 5
	.quad	0
	.word	834
	.byte	4
	.space 5
	.align 32
gUnknown_080D75E8:
	.quad	VRAM+69632
	.word	191
	.byte	2
	.space 5
	.quad	0
	.word	191
	.byte	1
	.space 5
	.quad	0
	.word	842
	.byte	0
	.space 5
	.quad	0
	.word	842
	.byte	1
	.space 5
	.quad	0
	.word	842
	.byte	2
	.space 5
	.quad	0
	.word	842
	.byte	3
	.space 5
	.quad	0
	.word	842
	.byte	4
	.space 5
	.quad	0
	.word	842
	.byte	4
	.space 5
	.align 32
gUnknown_080D7588:
	.quad	VRAM+65536
	.word	9
	.byte	2
	.space 5
	.quad	0
	.word	9
	.byte	1
	.space 5
	.quad	0
	.word	835
	.byte	0
	.space 5
	.quad	0
	.word	835
	.byte	1
	.space 5
	.quad	0
	.word	835
	.byte	2
	.space 5
	.quad	0
	.word	835
	.byte	3
	.space 5
	.quad	0
	.word	835
	.byte	5
	.space 5
	.quad	0
	.word	835
	.byte	5
	.space 5
	.quad	0
	.word	836
	.byte	0
	.space 5
	.quad	0
	.word	836
	.byte	1
	.space 5
	.quad	0
	.word	836
	.byte	2
	.space 5
	.quad	0
	.word	836
	.byte	3
	.space 5
	.align 32
gUnknown_080D7560:
	.quad	VRAM+65536
	.word	844
	.byte	0
	.space 5
	.quad	VRAM+67584
	.word	526
	.byte	0
	.space 5
	.quad	VRAM+67872
	.word	517
	.byte	0
	.space 5
	.quad	VRAM+68160
	.word	520
	.byte	0
	.space 5
	.quad	VRAM+65536
	.word	844
	.byte	1
	.space 5
	.align 32
gUnknown_080D7540:
	.quad	VRAM+81920
	.word	839
	.byte	0
	.space 5
	.quad	VRAM+81920
	.word	839
	.byte	1
	.space 5
	.quad	VRAM+79872
	.word	838
	.byte	0
	.space 5
	.quad	VRAM+80896
	.word	838
	.byte	1
	.space 5
	.align 8
.LC1:
	.long	240
	.long	65280
	.align 16
.LC4:
	.word	0
	.word	0
	.word	379
	.word	0
	.word	0
	.word	9
	.word	1
	.word	13
	.align 4
.LC5:
	.word	0
	.word	837
	.align 8
.LC10:
	.long	7
	.long	1
	.align 8
.LC12:
	.word	0
	.word	72
	.word	0
	.word	72
	.align 16
.LC14:
	.word	0
	.word	0
	.word	377
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 16
.LC15:
	.word	0
	.word	0
	.word	378
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC17:
	.long	370
	.long	232
	.align 16
.LC18:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.align 8
.LC19:
	.long	25600
	.long	46080
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	ApplyGameStageSettings;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	SetupEggmanKidnapsVanillaTask;	.scl	2;	.type	32;	.endef
	.def	sub_8050B2C;	.scl	2;	.type	32;	.endef
	.def	sub_8085698;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
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
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gOamMallocOrders_EndIndex, "dr"
	.globl	.refptr.gOamMallocOrders_EndIndex
	.linkonce	discard
.refptr.gOamMallocOrders_EndIndex:
	.quad	gOamMallocOrders_EndIndex
	.section	.rdata$.refptr.gOamMallocOrders_StartIndex, "dr"
	.globl	.refptr.gOamMallocOrders_StartIndex
	.linkonce	discard
.refptr.gOamMallocOrders_StartIndex:
	.quad	gOamMallocOrders_StartIndex
	.section	.rdata$.refptr.gOamFirstPausedIndex, "dr"
	.globl	.refptr.gOamFirstPausedIndex
	.linkonce	discard
.refptr.gOamFirstPausedIndex:
	.quad	gOamFirstPausedIndex
	.section	.rdata$.refptr.gOamFreeIndex, "dr"
	.globl	.refptr.gOamFreeIndex
	.linkonce	discard
.refptr.gOamFreeIndex:
	.quad	gOamFreeIndex
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
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
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
