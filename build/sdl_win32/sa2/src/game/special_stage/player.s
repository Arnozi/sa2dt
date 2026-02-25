	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_806D5CC
	.def	sub_806D5CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D5CC
sub_806D5CC:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806D2C8
	.def	sub_806D2C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D2C8
sub_806D2C8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 176
	.seh_stackalloc	176
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	movdqu	xmm0, XMMWORD PTR sPlayerStateHandlers[rip]
	movdqu	xmm1, XMMWORD PTR sPlayerStateHandlers[rip+16]
	movdqu	xmm2, XMMWORD PTR sPlayerStateHandlers[rip+32]
	mov	rax, QWORD PTR [rsi]
	movdqu	xmm3, XMMWORD PTR sPlayerStateHandlers[rip+48]
	movdqu	xmm4, XMMWORD PTR sPlayerStateHandlers[rip+64]
	movdqu	xmm5, XMMWORD PTR sPlayerStateHandlers[rip+80]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	movups	XMMWORD PTR 32[rsp], xmm0
	movdqu	xmm0, XMMWORD PTR sPlayerStateHandlers[rip+96]
	movups	XMMWORD PTR 48[rsp], xmm1
	movdqu	xmm1, XMMWORD PTR sPlayerStateHandlers[rip+112]
	movups	XMMWORD PTR 64[rsp], xmm2
	movdqu	xmm2, XMMWORD PTR sPlayerStateHandlers[rip+128]
	cmp	BYTE PTR 2178[rdi], 0
	movups	XMMWORD PTR 80[rsp], xmm3
	movups	XMMWORD PTR 96[rsp], xmm4
	movups	XMMWORD PTR 112[rsp], xmm5
	movups	XMMWORD PTR 128[rsp], xmm0
	movups	XMMWORD PTR 144[rsp], xmm1
	movups	XMMWORD PTR 160[rsp], xmm2
	jne	.L4
	movzx	eax, WORD PTR 248[rbx]
	call	[QWORD PTR 40[rsp+rax*8]]
	mov	rax, QWORD PTR [rsi]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 256[rdx]
	test	ax, ax
	jne	.L18
.L6:
	movzx	eax, WORD PTR 250[rbx]
	lea	rcx, 16[rbx]
	lea	rsi, 80[rbx]
	test	ax, ax
	je	.L8
	cmp	BYTE PTR 2178[rdi], 0
	jne	.L8
	sub	eax, 1
	mov	WORD PTR 250[rbx], ax
	test	al, 2
	jne	.L8
	add	rsp, 176
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	lea	rcx, 16[rbx]
	lea	rsi, 80[rbx]
.L8:
	call	DisplaySprite
	cmp	WORD PTR 248[rbx], 13
	jbe	.L19
	add	rsp, 176
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	sub	eax, 1
	mov	WORD PTR 256[rdx], ax
	test	ax, ax
	jne	.L6
	mov	DWORD PTR 258[rdx], 65536
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rcx, rsi
	add	rsp, 176
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_806D698
	.def	sub_806D698;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D698
sub_806D698:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 264[rax]
	mov	rdx, QWORD PTR [rax]
	lea	r9, 16[rax]
	movzx	r8d, BYTE PTR 151[rcx]
	movzx	r10d, WORD PTR 2196[rdx]
	mov	edx, r8d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	r11d, edx
	or	r11d, 2048
	and	r8d, 2
	movzx	r8d, WORD PTR 144[rcx]
	mov	WORD PTR 56[rax], r10w
	cmovne	edx, r11d
	mov	WORD PTR 34[rax], r8w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 146[rcx]
	mov	rcx, r9
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 64[rax], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D740
	.def	sub_806D740;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D740
sub_806D740:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 264[rax]
	mov	rdx, QWORD PTR [rax]
	lea	r10, 16[rax]
	movzx	r9d, BYTE PTR 167[rcx]
	movzx	r8d, WORD PTR 2196[rdx]
	mov	edx, r9d
	sub	r8d, 12
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	r11d, edx
	or	r11d, 2048
	and	r9d, 2
	movzx	r9d, WORD PTR 160[rcx]
	mov	WORD PTR 56[rax], r8w
	cmovne	edx, r11d
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 162[rcx]
	mov	rcx, r10
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 64[rax], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D6DC
	.def	sub_806D6DC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D6DC
sub_806D6DC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR [rax]
	movzx	edx, WORD PTR 252[rax]
	lea	r10, 16[rax]
	mov	r8, QWORD PTR 264[rax]
	movzx	ecx, WORD PTR 2196[rcx]
	sar	dx, 4
	add	dx, WORD PTR 244[rax]
	mov	WORD PTR 244[rax], dx
	movzx	r9d, BYTE PTR 159[r8]
	sar	dx, 4
	sub	ecx, 10
	sub	ecx, edx
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	r11d, edx
	or	r11d, 2048
	and	r9d, 2
	movzx	r9d, WORD PTR 152[r8]
	mov	WORD PTR 56[rax], cx
	cmovne	edx, r11d
	mov	rcx, r10
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 154[r8]
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 64[rax], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D5D0
	.def	sub_806D5D0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D5D0
sub_806D5D0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR [rax]
	movzx	edx, WORD PTR 252[rax]
	lea	r10, 16[rax]
	mov	r8, QWORD PTR 264[rax]
	movzx	ecx, WORD PTR 2196[rcx]
	sar	dx, 4
	add	dx, WORD PTR 244[rax]
	mov	WORD PTR 244[rax], dx
	movzx	r9d, BYTE PTR 103[r8]
	sar	dx, 4
	sub	ecx, 15
	sub	ecx, edx
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	r11d, edx
	or	r11d, 2048
	and	r9d, 2
	movzx	r9d, WORD PTR 96[r8]
	mov	WORD PTR 56[rax], cx
	cmovne	edx, r11d
	mov	rcx, r10
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 98[r8]
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 64[rax], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D634
	.def	sub_806D634;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D634
sub_806D634:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR [rax]
	movzx	edx, WORD PTR 252[rax]
	lea	r10, 16[rax]
	mov	r8, QWORD PTR 264[rax]
	movzx	ecx, WORD PTR 2196[rcx]
	sar	dx, 4
	add	dx, WORD PTR 244[rax]
	mov	WORD PTR 244[rax], dx
	movzx	r9d, BYTE PTR 127[r8]
	sar	dx, 4
	sub	ecx, 10
	sub	ecx, edx
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	r11d, edx
	or	r11d, 2048
	and	r9d, 2
	movzx	r9d, WORD PTR 120[r8]
	mov	WORD PTR 56[rax], cx
	cmovne	edx, r11d
	mov	rcx, r10
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 122[r8]
	mov	BYTE PTR 66[rax], 16
	mov	BYTE PTR 64[rax], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D424
	.def	sub_806D424;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D424
sub_806D424:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gInput[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ecx, WORD PTR [rdx]
	mov	edx, 32
	mov	rax, QWORD PTR 24[rax]
	mov	r8, QWORD PTR [rax]
	test	cl, 32
	jne	.L51
	and	ecx, 16
	cmp	cx, 1
	sbb	rdx, rdx
	and	rdx, -16
	add	rdx, 40
.L51:
	mov	rcx, QWORD PTR 264[rax]
	movzx	r11d, WORD PTR 2196[r8]
	lea	r10, 16[rax]
	movzx	r8d, WORD PTR 232[rax]
	add	rcx, rdx
	movzx	r9d, BYTE PTR 7[rcx]
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	ebx, edx
	or	bh, 8
	and	r9d, 2
	movzx	r9d, WORD PTR [rcx]
	mov	WORD PTR 56[rax], r11w
	cmovne	edx, ebx
	cmp	r8w, -1
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 2[rcx]
	mov	rcx, r10
	mov	BYTE PTR 64[rax], dl
	mov	edx, 16
	cmove	r8d, edx
	mov	BYTE PTR 66[rax], r8b
	pop	rbx
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D484
	.def	sub_806D484;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D484
sub_806D484:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gInput[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ecx, WORD PTR [rdx]
	mov	edx, 56
	mov	rax, QWORD PTR 24[rax]
	mov	r8, QWORD PTR [rax]
	test	cl, 32
	jne	.L61
	and	ecx, 16
	cmp	cx, 1
	sbb	rdx, rdx
	and	rdx, -16
	add	rdx, 64
.L61:
	mov	rcx, QWORD PTR 264[rax]
	movzx	r11d, WORD PTR 2196[r8]
	lea	r10, 16[rax]
	movzx	r8d, WORD PTR 232[rax]
	add	rcx, rdx
	movzx	r9d, BYTE PTR 7[rcx]
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	ebx, edx
	or	bh, 8
	and	r9d, 2
	movzx	r9d, WORD PTR [rcx]
	mov	WORD PTR 56[rax], r11w
	cmovne	edx, ebx
	cmp	r8w, -1
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 2[rcx]
	mov	rcx, r10
	mov	BYTE PTR 64[rax], dl
	mov	edx, 16
	cmove	r8d, edx
	mov	BYTE PTR 66[rax], r8b
	pop	rbx
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D4E4
	.def	sub_806D4E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D4E4
sub_806D4E4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gInput[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ecx, WORD PTR [rdx]
	mov	edx, 80
	mov	rax, QWORD PTR 24[rax]
	mov	r8, QWORD PTR [rax]
	test	cl, 32
	jne	.L71
	and	ecx, 16
	cmp	cx, 1
	sbb	rdx, rdx
	and	rdx, -16
	add	rdx, 88
.L71:
	mov	rcx, QWORD PTR 264[rax]
	movzx	r11d, WORD PTR 2196[r8]
	lea	r10, 16[rax]
	movzx	r8d, WORD PTR 232[rax]
	add	rcx, rdx
	movzx	r9d, BYTE PTR 7[rcx]
	sar	r8w
	mov	edx, r9d
	and	edx, 1
	cmp	dl, 1
	sbb	edx, edx
	and	edx, -1024
	add	edx, 5120
	mov	ebx, edx
	or	bh, 8
	and	r9d, 2
	movzx	r9d, WORD PTR [rcx]
	mov	WORD PTR 56[rax], r11w
	cmovne	edx, ebx
	cmp	r8w, -1
	mov	WORD PTR 34[rax], r9w
	mov	DWORD PTR 48[rax], edx
	movzx	edx, WORD PTR 2[rcx]
	mov	rcx, r10
	mov	BYTE PTR 64[rax], dl
	mov	edx, 16
	cmove	r8d, edx
	mov	BYTE PTR 66[rax], r8b
	pop	rbx
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D388
	.def	sub_806D388;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D388
sub_806D388:
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
	xor	esi, esi
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	cmp	WORD PTR 2172[rdi], 8
	je	.L81
	mov	rax, QWORD PTR .refptr.gInput[rip]
	mov	esi, 8
	movzx	eax, WORD PTR [rax]
	test	al, 32
	je	.L95
.L81:
	add	rsi, QWORD PTR 264[rbx]
	movzx	ecx, WORD PTR 2196[rdi]
	lea	rbp, 16[rbx]
	movzx	edx, BYTE PTR 7[rsi]
	mov	eax, edx
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5120
	mov	r8d, eax
	or	r8d, 2048
	and	edx, 2
	movzx	edx, WORD PTR [rsi]
	mov	WORD PTR 56[rbx], cx
	cmovne	eax, r8d
	mov	rcx, rbp
	mov	WORD PTR 34[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, WORD PTR 2[rsi]
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 64[rbx], al
	call	UpdateSpriteAnimation
	cmp	WORD PTR 2172[rdi], 8
	je	.L96
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	shr	ax, 4
	sal	rax, 4
	and	eax, 16
	mov	rsi, rax
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L96:
	mov	rcx, rbp
	call	DisplaySprite
	movzx	edx, BYTE PTR 7[rsi]
	movzx	ecx, WORD PTR 2196[rdi]
	mov	eax, edx
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5376
	mov	r8d, eax
	or	r8d, 2048
	and	edx, 2
	movzx	edx, WORD PTR [rsi]
	mov	WORD PTR 56[rbx], cx
	cmovne	eax, r8d
	mov	rcx, rbp
	mov	WORD PTR 34[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, WORD PTR 2[rsi]
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 64[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStagePlayer
	.def	CreateSpecialStagePlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStagePlayer
CreateSpecialStagePlayer:
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
	mov	rax, QWORD PTR gUnknown_080DF670[rip+32]
	xor	r9d, r9d
	mov	edx, 336
	movdqu	xmm1, XMMWORD PTR gUnknown_080DF670[rip]
	movdqu	xmm2, XMMWORD PTR gUnknown_080DF670[rip+16]
	mov	r8d, 36864
	movzx	ebp, BYTE PTR 2176[rcx]
	mov	QWORD PTR 32[rsp], 0
	mov	rsi, rcx
	lea	rcx, sub_806D2C8[rip]
	movups	XMMWORD PTR 48[rsp], xmm1
	movups	XMMWORD PTR 64[rsp], xmm2
	mov	QWORD PTR 80[rsp], rax
	call	TaskCreate
	mov	r10, QWORD PTR .refptr.gUnknown_080DF9D8[rip]
	xor	r11d, r11d
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	movzx	eax, bpl
	mov	ebp, 1
	lea	rax, [rax+rax*2]
	lea	rax, [r10+rax*2]
	mov	WORD PTR 244[rbx], r11w
	movsx	edx, WORD PTR [rax]
	mov	QWORD PTR [rbx], rsi
	mov	QWORD PTR 8[rbx], 0
	sal	edx, 16
	mov	WORD PTR 260[rbx], bp
	mov	DWORD PTR 236[rbx], edx
	movsx	edx, WORD PTR 2[rax]
	mov	DWORD PTR 248[rbx], 9830400
	movzx	eax, WORD PTR 4[rax]
	mov	DWORD PTR 256[rbx], 0
	sal	edx, 16
	mov	DWORD PTR 240[rbx], edx
	mov	WORD PTR 246[rbx], ax
	movzx	eax, BYTE PTR 2174[rsi]
	mov	rcx, QWORD PTR 48[rsp+rax*8]
	mov	QWORD PTR 264[rbx], rcx
	call	MaxSpriteSize
	mov	rdx, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	lea	r9, 16[rbx]
	movzx	r10d, WORD PTR 2196[rsi]
	cwde
	mov	rcx, QWORD PTR [rdx]
	sal	eax, 5
	cdqe
	add	rax, rcx
	movq	xmm0, rcx
	movq	xmm3, rax
	lea	r8, 64[rax]
	add	rax, 192
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR 264[rbx]
	punpcklqdq	xmm0, xmm3
	movups	XMMWORD PTR 208[rbx], xmm0
	mov	QWORD PTR 224[rbx], r8
	movzx	r8d, BYTE PTR 7[rdx]
	mov	QWORD PTR 24[rbx], rcx
	mov	eax, r8d
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5120
	mov	r11d, eax
	or	r11d, 2048
	and	r8d, 2
	mov	r8d, 213
	cmovne	eax, r11d
	xor	ecx, ecx
	mov	WORD PTR 32[rbx], cx
	movzx	ecx, WORD PTR [rdx]
	mov	DWORD PTR 48[rbx], eax
	mov	DWORD PTR 60[rbx], -65536
	movzx	eax, WORD PTR 2[rdx]
	mov	WORD PTR 56[rbx], r10w
	mov	r10d, 576
	mov	WORD PTR 34[rbx], cx
	mov	rcx, r9
	mov	WORD PTR 54[rbx], r8w
	mov	WORD PTR 58[rbx], r10w
	mov	BYTE PTR 64[rbx], al
	mov	BYTE PTR 65[rbx], -1
	movzx	eax, BYTE PTR 6[rdx]
	mov	BYTE PTR 69[rbx], 0
	mov	BYTE PTR 66[rbx], al
	mov	DWORD PTR 72[rbx], -1
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 2196[rsi]
	mov	rdx, QWORD PTR 216[rbx]
	mov	r11d, 213
	mov	DWORD PTR 96[rbx], 57933824
	lea	rcx, 80[rbx]
	mov	WORD PTR 120[rbx], ax
	movabs	rax, -71776123356183936
	mov	QWORD PTR 88[rbx], rdx
	mov	DWORD PTR 112[rbx], 4096
	mov	WORD PTR 118[rbx], r11w
	mov	QWORD PTR 122[rbx], rax
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 224[rbx]
	mov	DWORD PTR 160[rbx], 58327040
	mov	DWORD PTR 176[rbx], 4222
	mov	QWORD PTR 152[rbx], rax
	mov	QWORD PTR 182[rbx], 7864533
	mov	DWORD PTR 190[rbx], -16580609
	mov	BYTE PTR 194[rbx], 16
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	cmp	BYTE PTR 2178[rsi], 0
	je	.L106
.L100:
	xor	ecx, ecx
	xor	r8d, r8d
	mov	edx, 256
	mov	r9d, 256
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	cmp	BYTE PTR 2175[rsi], 0
	mov	WORD PTR 1450[rax], dx
	mov	WORD PTR 1462[rax], cx
	mov	WORD PTR 1474[rax], r8w
	mov	WORD PTR 1486[rax], r9w
	jne	.L101
	movabs	rax, 25769803776
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	mov	QWORD PTR 272[rbx], rax
	movabs	rax, 281474976776192
	mov	QWORD PTR 280[rbx], rax
	movabs	rax, -184683593688
	mov	QWORD PTR 288[rbx], rax
	movabs	rax, 48932562402978
	mov	QWORD PTR 296[rbx], rax
	movabs	rax, 630509453979959168
	mov	QWORD PTR 304[rbx], rax
	mov	rax, QWORD PTR .LC4[rip]
	movups	XMMWORD PTR 312[rbx], xmm0
	mov	QWORD PTR 328[rbx], rax
	mov	rax, rdi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L101:
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	rax, rdi
	mov	DWORD PTR 272[rbx], 0
	mov	DWORD PTR 292[rbx], 2048
	movups	XMMWORD PTR 276[rbx], xmm0
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	lea	rcx, 144[rbx]
	call	UpdateSpriteAnimation
	jmp	.L100
	.seh_endproc
	.p2align 4
	.globl	sub_806D548
	.def	sub_806D548;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D548
sub_806D548:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11, rdx
	mov	rdx, QWORD PTR 48[rsp]
	movzx	r9d, r9b
	movzx	r10d, BYTE PTR 7[rdx]
	mov	QWORD PTR 8[rcx], r11
	mov	r11d, 213
	mov	eax, r10d
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5120
	mov	ebx, eax
	or	bh, 8
	and	r10d, 2
	cmovne	eax, ebx
	xor	r10d, r10d
	sal	r9d, 6
	mov	WORD PTR 16[rcx], r10w
	movzx	r10d, WORD PTR [rdx]
	mov	DWORD PTR 32[rcx], eax
	mov	DWORD PTR 44[rcx], -65536
	movzx	eax, WORD PTR 2[rdx]
	mov	WORD PTR 18[rcx], r10w
	mov	WORD PTR 38[rcx], r11w
	mov	WORD PTR 40[rcx], r8w
	mov	WORD PTR 42[rcx], r9w
	mov	BYTE PTR 48[rcx], al
	mov	BYTE PTR 49[rcx], -1
	movzx	eax, BYTE PTR 6[rdx]
	mov	BYTE PTR 53[rcx], 0
	mov	BYTE PTR 50[rcx], al
	mov	DWORD PTR 56[rcx], -1
	pop	rbx
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D788
	.def	sub_806D788;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D788
sub_806D788:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 256[rdx]
	test	ax, ax
	je	.L113
	sub	eax, 1
	mov	WORD PTR 256[rdx], ax
	test	ax, ax
	jne	.L113
	mov	DWORD PTR 258[rdx], 65536
.L113:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806D7D0
	.def	sub_806D7D0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D7D0
sub_806D7D0:
	.seh_endprologue
	movzx	r10d, BYTE PTR 7[r9]
	mov	eax, r10d
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5120
	mov	r11d, eax
	or	r11d, 2048
	and	r10d, 2
	movzx	r10d, WORD PTR [r9]
	mov	WORD PTR 40[rcx], r8w
	cmovne	eax, r11d
	cmp	dx, -1
	mov	WORD PTR 18[rcx], r10w
	mov	DWORD PTR 32[rcx], eax
	movzx	eax, WORD PTR 2[r9]
	mov	BYTE PTR 48[rcx], al
	mov	eax, 16
	cmove	edx, eax
	mov	BYTE PTR 50[rcx], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_806D830
	.def	sub_806D830;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806D830
sub_806D830:
	.seh_endprologue
	movzx	r10d, BYTE PTR 7[r9]
	mov	eax, r10d
	and	eax, 1
	cmp	al, 1
	sbb	eax, eax
	and	eax, -1024
	add	eax, 5376
	mov	r11d, eax
	or	r11d, 2048
	and	r10d, 2
	movzx	r10d, WORD PTR [r9]
	mov	WORD PTR 40[rcx], r8w
	cmovne	eax, r11d
	cmp	dx, -1
	mov	WORD PTR 18[rcx], r10w
	mov	DWORD PTR 32[rcx], eax
	movzx	eax, WORD PTR 2[r9]
	mov	BYTE PTR 48[rcx], al
	mov	eax, 16
	cmove	edx, eax
	mov	BYTE PTR 50[rcx], dl
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sPlayerStateHandlers:
	.quad	sub_806D5CC
	.quad	sub_806D388
	.quad	sub_806D424
	.quad	sub_806D484
	.quad	sub_806D4E4
	.quad	sub_806D5D0
	.quad	sub_806D5D0
	.quad	sub_806D634
	.quad	sub_806D698
	.quad	sub_806D388
	.quad	sub_806D5D0
	.quad	sub_806D5D0
	.quad	sub_806D5D0
	.quad	sub_806D4E4
	.quad	sub_806D388
	.quad	sub_806D6DC
	.quad	sub_806D5CC
	.quad	sub_806D740
	.align 32
gUnknown_080DF670:
	.quad	gUnknown_080DF2F8
	.quad	gUnknown_080DF2F8+176
	.quad	gUnknown_080DF2F8+352
	.quad	gUnknown_080DF2F8+528
	.quad	gUnknown_080DF2F8+704
	.align 16
.LC3:
	.word	20
	.word	-40
	.word	-54
	.word	-72
	.word	2048
	.word	-128
	.word	1536
	.word	-64
	.align 8
.LC4:
	.long	-16
	.long	-8
	.align 16
.LC5:
	.long	0
	.long	3072
	.long	32767
	.long	256
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	MaxSpriteSize;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gOamBuffer, "dr"
	.globl	.refptr.gOamBuffer
	.linkonce	discard
.refptr.gOamBuffer:
	.quad	gOamBuffer
	.section	.rdata$.refptr.gSpecialStageVramPointer, "dr"
	.globl	.refptr.gSpecialStageVramPointer
	.linkonce	discard
.refptr.gSpecialStageVramPointer:
	.quad	gSpecialStageVramPointer
	.section	.rdata$.refptr.gUnknown_080DF9D8, "dr"
	.globl	.refptr.gUnknown_080DF9D8
	.linkonce	discard
.refptr.gUnknown_080DF9D8:
	.quad	gUnknown_080DF9D8
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
